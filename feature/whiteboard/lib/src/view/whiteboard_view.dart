import 'dart:async';
import 'dart:collection';
import 'dart:io' as io;
import 'dart:math' as math;

import 'package:boundless_stack/boundless_stack.dart';
import 'package:cell/cell.dart';
import 'package:collection/collection.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:graph_edge/graph_edge.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mix/mix.dart';
import 'package:path_provider/path_provider.dart';
import 'package:super_drag_and_drop/super_drag_and_drop.dart';
import 'package:utils/utils.dart';
import 'package:whiteboard/src/domain/data/whiteboard_position.dart';
import 'package:whiteboard/src/domain/model/whiteboard.dart';
import 'package:whiteboard/src/domain/repository/whiteboard_object_stack.dart';
import 'package:whiteboard/src/widget/cell_builder.dart';
import 'package:whiteboard/src/widget/edge_builder.dart';
import 'package:whiteboard/src/widget/selection_cells_view.dart';

class WhiteboardView extends ConsumerStatefulWidget {
  const WhiteboardView({
    super.key,
    required this.data,
    this.canvasScale = WhiteboardPosition.canvasScale,

    ///
    required this.edgesStreamProvider,
    required this.onEdgeUpdated,
    required this.onEdgesUpdated,
    required this.onEdgeCreated,
    required this.onEdgesDeleted,

    ///
    required this.cellsStreamProvider,
    required this.onCellCreated,
    required this.onCellUpdated,
    required this.onCellsUpdated,
    required this.onCellsDeleted,

    ///
    required this.enableMoveByMouse,
    required this.enableMoveByTouch,
    this.scaleFactor,
    this.onScaleStart,
    this.onScaleEnd,
    this.horizontalDetails,
    this.verticalDetails,
  });

  final Whiteboard data;

  final double canvasScale;

  /// Whiteboard cells configuration
  final AutoDisposeStreamProvider<List<Cell>> cellsStreamProvider;
  final void Function(Cell oldValue, Cell newValue) onCellUpdated;
  final void Function(List<Cell> cells) onCellsUpdated;
  final Future<void> Function(Cell value) onCellCreated;
  final Future<void> Function(List<String> cellIds) onCellsDeleted;

  /// Whiteboard edges configuration
  final AutoDisposeStreamProvider<List<Edge>> edgesStreamProvider;
  final void Function(Edge oldValue, Edge newValue) onEdgeUpdated;
  final void Function(List<Edge> edges) onEdgesUpdated;
  final Future<void> Function(Edge value) onEdgeCreated;
  final Future<void> Function(List<String> edgeIds) onEdgesDeleted;

  /// Whiteboard infinite scrollable configuration
  final ValueNotifier<double>? scaleFactor;
  final VoidCallback? onScaleStart;
  final VoidCallback? onScaleEnd;

  final ScrollableDetails? verticalDetails;
  final ScrollableDetails? horizontalDetails;
  final bool enableMoveByMouse;
  final bool enableMoveByTouch;

  @override
  ConsumerState<WhiteboardView> createState() => WhiteboardViewState();
}

class WhiteboardViewState extends ConsumerState<WhiteboardView> {
  late ValueNotifier<double> scaleFactor;

  late ScrollableDetails verticalDetails;
  late ScrollableDetails horizontalDetails;
  Offset get viewportTopLeft => Offset(
        horizontalDetails.controller!.offset,
        verticalDetails.controller!.offset,
      );

  late BoxConstraints constraints;

  Map<String, (GlobalKey, Cell)> cellKeys = {};
  Map<String, (GlobalKey, Edge)> edgeKeys = {};
  Map<String, ValueNotifier<StackPositionData>> stackPositionDataMap = {};
  Map<String, Map<String, StreamSubscription>> _cellProcessors = {};

  late void Function(
    AsyncValue<List<Edge>>? previous,
    AsyncValue<List<Edge>> next,
  ) updateEdgeKeys =
      (AsyncValue<List<Edge>>? previous, AsyncValue<List<Edge>> next) {
    final previousEdges = {...edgeKeys};
    final nextEdges = next.valueOrNull ?? <Edge>[];

    for (final edge in nextEdges) {
      if (previousEdges[edge.id.id] != null) {
        previousEdges.remove(edge.id.id);
        final oldEdgeKey = edgeKeys[edge.id.id]!;
        edgeKeys[edge.id.id] = (oldEdgeKey.$1, edge);
      }

      if (edgeKeys[edge.id.id] == null) {
        edgeKeys[edge.id.id] = (
          GlobalKey(
            debugLabel: 'WhiteboardView.edge | ${edge.id.id}',
          ),
          edge,
        );
      }
    }

    // Cleanup
    for (final (_, edge) in previousEdges.values) {
      edgeKeys.remove(edge.id.id);
      stackPositionDataMap[edge.id.id]?.dispose();
      stackPositionDataMap.remove(edge.id.id);
    }
  };

  late void Function(
    AsyncValue<List<Cell>>? previous,
    AsyncValue<List<Cell>> next,
  ) updateCellKeys =
      (AsyncValue<List<Cell>>? previous, AsyncValue<List<Cell>> next) {
    final previousCells = {...cellKeys};
    final nextCells = next.valueOrNull ?? <Cell>[];

    for (final cell in nextCells) {
      if (previousCells[cell.id.id] != null) {
        previousCells.remove(cell.id.id);
        final oldCellKey = cellKeys[cell.id.id]!;
        cellKeys[cell.id.id] = (oldCellKey.$1, cell);
      }

      if (cellKeys[cell.id.id] == null) {
        cellKeys[cell.id.id] = (
          GlobalKey(
            debugLabel: 'WhiteboardView.cell | ${cell.id.id}',
          ),
          cell,
        );
        setState(() {});
      }
    }

    final oldEdgeKeys = {...edgeKeys};
    // Cleanup
    for (final (_, cell) in previousCells.values) {
      cellKeys.remove(cell.id.id);
      stackPositionDataMap[cell.id.id]?.dispose();
      stackPositionDataMap.remove(cell.id.id);

      for (final MapEntry(key: key, value: (_, edge)) in oldEdgeKeys.entries) {
        if (edge.source == cell.id.id || edge.target == cell.id.id) {
          edgeKeys.remove(key);
          stackPositionDataMap[edge.id.id]?.dispose();
          stackPositionDataMap.remove(edge.id.id);
        }
      }
      setState(() {});
    }
  };

  ScrollableDetails get defaultVerticalDetails => ScrollableDetails.vertical(
        controller: ScrollController(
          debugLabel: 'WhiteboardView.vertical | ${widget.data.id.id}',
        ),
      );
  ScrollableDetails get defaultHorizontalDetails =>
      ScrollableDetails.horizontal(
        controller: ScrollController(
          debugLabel: 'WhiteboardView.horizontal | ${widget.data.id.id}',
        ),
      );

  double get cellWidth =>
      math.min(
        constraints.maxWidth - SpaceVariant.mediumLarge.resolve(context),
        480.0,
      ) *
      widget.canvasScale;

  FocusNode whiteboardFocusNode =
      FocusNode(debugLabel: 'whiteboard_focus_node');

  @override
  void initState() {
    super.initState();
    scaleFactor = widget.scaleFactor ?? ValueNotifier(.5);
    verticalDetails = widget.verticalDetails ?? defaultVerticalDetails;
    horizontalDetails = widget.horizontalDetails ?? defaultHorizontalDetails;
  }

  @override
  void dispose() {
    whiteboardFocusNode.dispose();
    cellKeys.clear();
    edgeKeys.clear();
    stackPositionDataMap.clear();
    for (final MapEntry(key: _, :value) in _cellProcessors.entries) {
      for (final subscription in value.values) {
        subscription.cancel();
      }
    }

    _cellProcessors.clear();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant WhiteboardView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.scaleFactor != oldWidget.scaleFactor) {
      scaleFactor = widget.scaleFactor ?? ValueNotifier(.5);
    }
    if (widget.verticalDetails != null &&
        widget.verticalDetails != oldWidget.verticalDetails) {
      if (widget.verticalDetails?.controller !=
          oldWidget.verticalDetails?.controller) {
        verticalDetails.controller?.dispose();
      }
      verticalDetails = widget.verticalDetails!;
    }

    if (widget.verticalDetails == null && oldWidget.verticalDetails != null) {
      verticalDetails.controller?.dispose();
      verticalDetails = defaultVerticalDetails;
    }

    if (widget.horizontalDetails != null &&
        widget.horizontalDetails != oldWidget.horizontalDetails) {
      if (widget.horizontalDetails?.controller !=
          oldWidget.horizontalDetails?.controller) {
        horizontalDetails.controller?.dispose();
      }
      horizontalDetails = widget.horizontalDetails!;
    }

    if (widget.horizontalDetails == null &&
        oldWidget.horizontalDetails != null) {
      horizontalDetails.controller?.dispose();
      horizontalDetails = defaultHorizontalDetails;
    }
  }

  Offset offsetToViewport(Offset offset) {
    return (viewportTopLeft + offset) / scaleFactor.value;
  }

  void cell_moveViewportToCenterOfCell(Cell cell) {
    final duration = const Duration(milliseconds: 300);
    final curve = Curves.easeInOut;
    final size = context.size ?? Size.zero;
    final sizeWidth = size.width;
    final cellWidth = cell.width;
    final space = (sizeWidth - cellWidth) / 2 //
        +
        (1 - scaleFactor.value) * cellWidth / 2;

    horizontalDetails.controller!.animateTo(
      cell.offset.dx * scaleFactor.value - space,
      duration: duration,
      curve: curve,
    );
    final margin = switch (cell.preferredHeight) {
      null => 200,
      final preferredHeight => (size.height - preferredHeight).abs() / 2,
    };
    verticalDetails.controller!.animateTo(
      cell.offset.dy * scaleFactor.value - margin,
      duration: duration,
      curve: curve,
    );
  }

  Widget buildDropRegion({required Widget child}) {
    return WhiteboardDropZone(
      id: widget.data.id,
      horizontalDetails: horizontalDetails,
      verticalDetails: verticalDetails,
      scaleFactor: scaleFactor.value,
      onCellCreated: cell_onCreated,
      onImageReceived: (event, uri) {
        final cell = Cell.image(
          id: CellId(
            id: Helper.createId(),
            parentId: CellParentId(
              whiteboardId: widget.data.id.id,
            ),
          ),
          offset: offsetToViewport(event.position.local),
          width: cellWidth,
          decoration: CellDecoration(color: ColorVariant.purple.name),
          url: uri,
        );

        cell_moveViewportToCenterOfCell(cell);

        cellKeys[cell.id.id] = (
          GlobalKey(debugLabel: 'WhiteboardView.cell | ${cell.id.id}'),
          cell
        );

        setState(() {});

        widget.onCellCreated(cell);
      },
      onTextReceived: (event, value) {
        final cell = Cell.article(
          id: CellId(
            id: Helper.createId(),
            parentId: CellParentId(
              whiteboardId: widget.data.id.id,
            ),
          ),
          offset: offsetToViewport(event.position.local),
          width: cellWidth,
          decoration: CellDecoration(color: ColorVariant.green.name),
          title: 'Text',
          content: value,
        );
        cell_moveViewportToCenterOfCell(cell);
        widget.onCellCreated(cell);
      },
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(widget.cellsStreamProvider, updateCellKeys);
    ref.listen(widget.edgesStreamProvider, updateEdgeKeys);
    ref.watch(widget.cellsStreamProvider);
    ref.watch(widget.edgesStreamProvider);
    ref.watch(whiteboardObjectStackProvider(whiteboardId: widget.data.id.id));

    Widget child = ListenableBuilder(
      listenable: scaleFactor,
      builder: (context, child) => ZoomStackGestureDetector(
        enableMoveByMouse: widget.enableMoveByMouse,
        enableMoveByTouch: widget.enableMoveByTouch,
        scaleFactor: scaleFactor.value,
        onScaleStart: widget.onScaleStart,
        onScaleEnd: widget.onScaleEnd,
        onScaleFactorChanged: (value) => scaleFactor.value = value,
        stack: (key, scaleFactor) {
          Queue<StackPosition> stackPositions = Queue.from([]);
          Offset? selectionStart;
          Offset? selectionEnd;
          Cell? selectionStartDxCell;
          Cell? selectionStartDyCell;
          Cell? selectionEndDxCell;
          Cell? selectionEndDyCell;

          List<Cell> selectedCells = [];

          for (final (key, cell) in cellKeys.values) {
            if (cell.selected) {
              selectedCells.add(cell);

              if (selectionStart == null && selectionEnd == null) {
                selectionStart = cell.offset;
                selectionStartDxCell = cell;
                selectionStartDyCell = cell;
                selectionEnd = cell.offset +
                    Offset(
                      cell.width,
                      cell.height ?? cell.preferredHeight ?? 0,
                    );
                selectionEndDxCell = cell;
                selectionEndDyCell = cell;
              }

              if (cell.offset.dx < selectionStart!.dx) {
                selectionStart = Offset(cell.offset.dx, selectionStart.dy);
                selectionStartDxCell = cell;
              }
              if (cell.offset.dy < selectionStart.dy) {
                selectionStart = Offset(selectionStart.dx, cell.offset.dy);
                selectionStartDyCell = cell;
              }

              if (selectionEnd!.dx < cell.offset.dx + cell.width) {
                selectionEnd =
                    Offset(cell.offset.dx + cell.width, selectionEnd.dy);
                selectionEndDxCell = cell;
              }

              if (cell.offset.dy + CellAppearance(cell).rect.height >
                  selectionEnd.dy) {
                selectionEnd = Offset(
                  selectionEnd.dx,
                  cell.offset.dy + CellAppearance(cell).rect.height,
                );
                selectionEndDyCell = cell;
              }
            }
            stackPositions.addLast(
              StackPosition(
                key: key,
                scaleFactor: scaleFactor,
                data: StackPositionData(
                  id: cell.id.id,
                  layer: cell.layer,
                  height: cell.height,
                  preferredHeight: cell.preferredHeight,
                  width: cell.width,
                  offset: cell.offset,
                  keepAlive: cell.selected,
                ),
                onDataUpdated: (newValue) {
                  final (latestKey, latestCell) = cellKeys[newValue.id]!;
                  final newCell = latestCell.copyWith(
                    offset: newValue.offset,
                    height: newValue.height,
                    preferredHeight: newValue.preferredHeight,
                    width: newValue.preferredWidth ?? cell.width,
                  );
                  cellKeys[cell.id.id] = (latestKey, newCell);
                  setState(() {});
                  widget.onCellUpdated(latestCell, newCell);
                },
                moveable: StackMove(),
                resizable: StackResize(
                  width: cell.width,
                  // Cell have fiex width so same as width
                  preferredWidth: cell.width,
                  height: cell.height,
                  preferredHeight: cell.preferredHeight,
                  thumb: cell.mapOrNull(
                    editable: (value) => DSThumb(
                      color: CellDecorationExtension(cell.decoration)
                          .colorValue(context),
                    ),
                    image: (value) => DSThumb(
                      color: CellDecorationExtension(cell.decoration)
                          .colorValue(context),
                    ),
                    article: (value) => DSThumb(
                      color: CellDecorationExtension(cell.decoration)
                          .colorValue(context),
                    ),
                  ),
                  onSizeChanged: (newSize) {
                    final (_, latestCell) = cellKeys[cell.id.id]!;

                    final newCell = latestCell.copyWith(
                      width: newSize.width,
                    );
                    cellKeys[cell.id.id] = (key, newCell);
                    setState(() {});
                    widget.onCellUpdated(cell, newCell);
                  },
                ),
                builder: (context, notifier, child) => CellBuilder(
                  key: ValueKey('CellBuilder | ${cell.id.id}'),
                  scaleFactor: scaleFactor,
                  horizontalDetails: horizontalDetails,
                  verticalDetails: verticalDetails,
                  notifier: notifier,
                  stackPositionDataMap: stackPositionDataMap,
                  cell: cell,

                  /// Brainstorming cell
                  onAskForSuggestionSubscription: _cellProcessors[cell.id.id]
                      ?['suggestions'],
                  onSuggestionSelected: brainstormingCell_OnSuggestionSelected,
                  onAskForSuggestion: brainstormingCell_OnAskForSuggestion,
                  onContentChanged: editableCell_OnContentChanged,
                  onCellLinked: cell_OnCellLinked,
                  onConstraintChanged: cell_OnConstraintChanged,
                ),
              ),
            );
          }

          for (final (key, edge) in edgeKeys.values) {
            final source = cellKeys[edge.source];
            final target = cellKeys[edge.target];
            if (source == null || target == null) continue;
            final (_, _, edgeRect) =
                EdgeBuilder.computeEdgeBounds(source, target);

            stackPositions.addFirst(
              StackPosition(
                key: key,
                scaleFactor: scaleFactor,
                data: StackPositionData(
                  id: edge.id.id,
                  layer: edge.layer,

                  /// Compute offset and size for edge based on source and target cell
                  offset: edgeRect.topLeft,
                  height: edgeRect.height,
                  width: edgeRect.width,
                ),
                builder: (context, notifier, child) => EdgeBuilder(
                  notifier: notifier,
                  cellKeys: cellKeys,
                  stackPositionDataMap: stackPositionDataMap,
                  edge: edge,
                  onEdgeDeleted: (edge) => widget.onEdgesDeleted([edge.id.id]),
                  onAskEdge: (data) {},
                  onEdgeLabelChanged: (label) {},
                ),
              ),
            );
          }

          return BoundlessStack(
            horizontalDetails: horizontalDetails,
            verticalDetails: verticalDetails,
            backgroundBuilder: GridBackground.backgroundBuilder(
              scale: scaleFactor * widget.canvasScale,
            ),
            foregroundBuilder: switch (selectedCells.isEmpty) {
              true => null,
              false => buildSuggectionForSelection(
                  selectionStart: selectionStart!,
                  selectionEnd: selectionEnd!,
                  selectedCells: selectedCells,
                  scaleFactor: scaleFactor,
                  selectionStartDxCell: selectionStartDxCell!,
                  selectionStartDyCell: selectionStartDyCell!,
                  selectionEndDxCell: selectionEndDxCell!,
                  selectionEndDyCell: selectionEndDyCell!,
                ),
            },
            delegate: BoundlessStackListDelegate(
              children: stackPositions.toList(),
            ),
            scaleFactor: scaleFactor,
          );
        },
      ),
    );

    child = buildDropRegion(
      child: child,
    );

    return LayoutBuilder(
      builder: (context, constraints) {
        this.constraints = constraints;
        return MixTheme(
          data: mixTheme.copyWith(
            spaces: scaleSpaces(widget.canvasScale),
          ),
          child: DesignSystemTheme(
            data: designSystemThemeData.copyWith(scale: widget.canvasScale),
            child: child,
          ),
        );
      },
    );
  }

  Offset randomOffsetAroundRect(BuildContext context, Rect rect) {
    final scale = DesignSystemTheme.of(context).scale;

    final offset = rect.topLeft;
    final random = math.Random();

    double radius;
    final minRadius = 400 * scale;
    radius = minRadius + (rect.width - minRadius) * random.nextDouble();
    radius = math.max(minRadius, radius);

    switch (random.nextBool()) {
      case true:
        return Offset(
          random.nextDouble() * radius + offset.dx + rect.width,
          offset.dy,
        );
      case false:
        return Offset(
          offset.dx,
          random.nextDouble() * radius + offset.dy + rect.height,
        );
    }
  }

  void editableCell_OnContentChanged(
      EditableCell cell, String title, String content) {
    final (latestKey, latestCell) = cellKeys[cell.id.id]!;
    if (latestCell is! EditableCell) return;
    final newCell = latestCell.copyWith(
      title: title,
      content: content,
    );
    cellKeys[cell.id.id] = (latestKey, newCell);
    setState(() {});
    widget.onCellUpdated(cell, newCell);
  }

  void brainstormingCell_GenerateSuggestionTask({
    required BrainstormingCell parentCell,
    required ArticleCell suggestionCell,
    required String suggestion,
  }) {
    var (brainstormingKey, brainstormingCell) = cellKeys[parentCell.id.id]!;
    brainstormingCell = brainstormingCell as BrainstormingCell;
    cellKeys[brainstormingCell.id.id] = (
      brainstormingKey,
      brainstormingCell.copyWith(
        suggestions: [...brainstormingCell.suggestions]..remove(suggestion),
      ),
    );
    cellKeys[suggestionCell.id.id] = (
      GlobalKey(debugLabel: 'WhiteboardView.cell | ${suggestionCell.id.id}'),
      suggestionCell,
    );
    setState(() {});

    late StreamSubscription subscription;
    final stream = ref.read(generateQuestionProvider(text: suggestion));
    subscription = stream.listen(
      (data) {
        void defer() {
          subscription.cancel();
          _cellProcessors[suggestionCell.id.id] = {
            ..._cellProcessors[suggestionCell.id.id] ?? {},
          }..remove('generate');
        }

        final latest = cellKeys[suggestionCell.id.id];
        if (latest == null) {
          defer();
          return;
        }

        var (latestKey, latestCell) = latest;
        if (latestCell is! ArticleCell) {
          defer();
          return;
        }
        latestCell = latestCell.copyWith(content: latestCell.content + data);

        cellKeys[suggestionCell.id.id] = (latestKey, latestCell);
        setState(() {});
        widget.onCellUpdated(suggestionCell, latestCell);
      },
      onDone: () {
        subscription.cancel();
        _cellProcessors[suggestionCell.id.id] = {
          ..._cellProcessors[suggestionCell.id.id] ?? {},
        }..remove('generate');
      },
      onError: (error) {
        subscription.cancel();
        _cellProcessors[suggestionCell.id.id] = {
          ..._cellProcessors[suggestionCell.id.id] ?? {},
        }..remove('generate');
        print(error);
      },
    );

    _cellProcessors[suggestionCell.id.id] = {'generate': subscription};
  }

  void brainstormingCell_OnSuggestionSelected(
    BrainstormingCell cell,
    int index,
    ColorVariant color,
    String suggestion,
  ) async {
    final suggestionCell = Cell.article(
      offset: randomOffsetAroundRect(context, CellAppearance(cell).rect),
      id: CellId(
        id: Helper.createId(),
        parentId: CellParentId(
          whiteboardId: widget.data.id.id,
        ),
      ),
      width: cell.width,
      decoration: CellDecoration(color: color.name),
      title: suggestion,
      content: '',
    ) as ArticleCell;
    cell_moveViewportToCenterOfCell(suggestionCell);
    await widget.onCellCreated(suggestionCell);

    final edge = Edge(
      id: EdgeId(
        id: 'edge-${cell.id.id}-${suggestionCell.id.id}',
        parentId: EdgeParentId(whiteboardId: widget.data.id.id),
      ),
      source: cell.id.id,
      target: suggestionCell.id.id,
    );
    await widget.onEdgeCreated(edge);

    brainstormingCell_GenerateSuggestionTask(
      parentCell: cell,
      suggestionCell: suggestionCell,
      suggestion: suggestion,
    );
  }

  void brainstormingCell_OnAskForSuggestion(
    BrainstormingCell cell,
    String question,
  ) {
    final (key, _) = cellKeys[cell.id.id]!;

    if (ref.exists(getBrainstormingSuggestionsProvider(
      key: cell.id.id,
      question: question,
    ))) {
      return;
    }

    final newCell = cell.copyWith(question: question);
    cellKeys[cell.id.id] = (key, newCell);

    final stream = Stream.fromFuture(ref.read(
      getBrainstormingSuggestionsProvider(
        key: cell.id.id,
        question: question,
      ).future,
    ));

    late StreamSubscription subscription;
    subscription = stream.listen(
      (suggestions) async {
        final latest = cellKeys[cell.id.id];
        if (latest == null) return;
        final (_, latestCell) = latest;
        if (latestCell is! BrainstormingCell) return;

        final newCell = latestCell.copyWith(
          suggestions: suggestions,
        );
        await subscription.cancel();
        _cellProcessors[cell.id.id] = {
          ..._cellProcessors[cell.id.id] ?? {},
        }..remove('suggestions');
        cellKeys[cell.id.id] = (key, newCell);
        setState(() {});
        widget.onCellUpdated(cell, newCell);
      },
      onError: (error) {
        subscription.cancel();
        _cellProcessors[cell.id.id] = {
          ..._cellProcessors[cell.id.id] ?? {},
        }..remove('suggestions');
        print(error);
      },
    );

    _cellProcessors[cell.id.id] = {
      ..._cellProcessors[cell.id.id] ?? {},
      'suggestions': subscription,
    };

    setState(() {});
    widget.onCellUpdated(cell, newCell);
  }

  void cell_onCreated(Cell cell) {
    cell.mapOrNull(
      brainstorming: (cell) => cell_moveViewportToCenterOfCell(cell),
      editable: (cell) => cell_moveViewportToCenterOfCell(cell),
    );
    widget.onCellCreated(cell);
  }

  Future<void> cell_OnCellLinked(
    Cell source,
    Cell target, {
    EdgeDecoration decoration = const EdgeDecoration(),
  }) {
    final edge = Edge(
      id: EdgeId(
        id: EdgeId.genId(source.id.id, target.id.id),
        parentId: EdgeParentId(whiteboardId: widget.data.id.id),
      ),
      decoration: decoration,
      source: source.id.id,
      target: target.id.id,
    );

    edgeKeys[edge.id.id] = (
      GlobalKey(debugLabel: 'WhiteboardView.edge | ${edge.id.id}'),
      edge,
    );
    setState(() {});

    return widget.onEdgeCreated(edge);
  }

  TwoDimensionalViewportBuilder buildSuggectionForSelection({
    required Offset selectionStart,
    required Offset selectionEnd,
    required Cell selectionStartDxCell,
    required Cell selectionStartDyCell,
    required Cell selectionEndDxCell,
    required Cell selectionEndDyCell,
    required List<Cell> selectedCells,
    required double scaleFactor,
  }) =>
      (context, verticalPosition, horizontalPosition) {
        final selectionStartDx =
            stackPositionDataMap[selectionStartDxCell.id.id];
        final selectionStartDy =
            stackPositionDataMap[selectionStartDyCell.id.id];
        final selectionEndDx = stackPositionDataMap[selectionEndDxCell.id.id];
        final selectionEndDy = stackPositionDataMap[selectionEndDyCell.id.id];

        final viewportSelection = SelectionCellsView.computeSelectionRect(
          selectionStart: selectionStart,
          selectionEnd: selectionEnd,
          viewportTopLeft: viewportTopLeft,
          selectionStartDx: selectionStartDx,
          selectionStartDy: selectionStartDy,
          selectionEndDx: selectionEndDx,
          selectionEndDy: selectionEndDy,
          spacingOffset: Offset(
            SpaceVariant.small.resolve(context),
            SpaceVariant.small.resolve(context),
          ),
          scaleFactor: scaleFactor,
        );

        return MixTheme(
          data: mixTheme.copyWith(
            spaces: scaleSpaces(1.0),
          ),
          child: DesignSystemTheme(
            data: designSystemThemeData.copyWith(scale: 1.0),
            child: SelectionCellsView(
              selectedCells: selectedCells,
              cellMaps: cellKeys,
              horizontalPosition: horizontalPosition,
              verticalPosition: verticalPosition,
              horizontalDetails: horizontalDetails,
              verticalDetails: verticalDetails,
              viewportSelection: viewportSelection,
              scaleFactor: scaleFactor,

              stackPositionDataMap: stackPositionDataMap,
              selectionStartDxCell: selectionStartDxCell,
              selectionStartDyCell: selectionStartDyCell,
              selectionEndDxCell: selectionEndDxCell,
              selectionEndDyCell: selectionEndDyCell,

              /// ArticleCell
              onTurnArticleIntoEditable:
                  selection_articleCell_onTurnArticleIntoEditable,

              /// ArticleCell | EditableCell
              onCellSummarize: selection_cell_onCellSummarize,

              /// Cell
              onSelectionsDelete: selection_cell_onSelectionsDelete,
              onSelectionsMove: selection_cell_onSelectionsMove,
              onChatWithSelectedCells: (selectedCellIds, text) =>
                  selection_cell_onChatWithSelectedCells(
                selectedCellIds,
                text,
                selectionStart: selectionStart,
                selectionEnd: selectionEnd,
              ),

              /// Copy / paste
              onCellsCopied: () => objectStack_onCellsCopied(selectedCells),
              onCellsCut: () => objectStack_onCellsCut(selectedCells),
            ),
          ),
        );
      };

  /// This is O(n^3) be careful
  List<Edge> cells_findAllRelatedEdge(List<Cell> cells) {
    List<Edge> edges = [];
    for (int first = 0; first < cells.length - 1; first += 1) {
      final firstCell = cells[first];
      for (int second = first + 1; second < cells.length; second += 1) {
        final secondCell = cells[second];
        final edgeId = EdgeId.genId(firstCell.id.id, secondCell.id.id);
        if (edgeKeys[edgeId] case (_, final edge)?) {
          edges.add(edge);
        }
      }
    }
    return edges;
  }

  void objectStack_onCellsCut(List<Cell> cells) async {
    final stack = ref
        .read(whiteboardObjectStackProvider(whiteboardId: widget.data.id.id));
    final edges = cells_findAllRelatedEdge(cells);

    await selection_cell_onSelectionsDelete(cells.map((c) => c.id.id).toList());

    stack.push(
      WhiteboardObject(
        isDeleted: true,
        cells: cells,
        edges: edges,
      ),
    );
    FocusScope.of(context).requestFocus(whiteboardFocusNode);
  }

  void objectStack_onCellsCopied(List<Cell> cells) {
    final stack = ref
        .read(whiteboardObjectStackProvider(whiteboardId: widget.data.id.id));
    final edges = cells_findAllRelatedEdge(cells);

    stack.push(
      WhiteboardObject(
        isDeleted: false,
        cells: cells,
        edges: edges,
      ),
    );
    FocusScope.of(context).requestFocus(whiteboardFocusNode);
  }

  void objectStack_onCellsPasted() async {
    print('Pasted');
    final stack = ref
        .read(whiteboardObjectStackProvider(whiteboardId: widget.data.id.id));
    var data = stack.pop();
    if (data == null) return;

    if (data.isDeleted == false) {
      List<Cell> oldCells = data.cells.map((c) {
        final (latestKey, latestCell) = cellKeys[c.id.id]!;

        final newCell = latestCell.copyWith(selected: false);

        cellKeys[c.id.id] = (latestKey, newCell);

        return newCell;
      }).toList();

      setState(() {});

      widget.onCellsUpdated(oldCells);
    }

    Map<String, String> idLookupMap = {};
    Map<String, Offset> offsetLookupMap = {};

    data = data.copyWith(
      cells: data.cells.map((old) {
        final newId = Helper.createId();
        idLookupMap[newId] = old.id.id;
        offsetLookupMap[newId] = old.offset;
        return old.copyWith(id: old.id.copyWith(id: newId));
      }).toList(),
      edges: data.edges
          .map((old) {
            final newSource = idLookupMap[old.source];
            final newTarget = idLookupMap[old.target];
            if (newSource == null || newTarget == null) return null;
            return old.copyWith(
              id: old.id.copyWith(id: Helper.createId()),
              source: newSource,
              target: newTarget,
            );
          })
          .whereNotNull()
          .toList(),
    );

    /// Normalize current map
    Offset selectionTopLeftOffset = Offset(double.infinity, double.infinity);
    for (final cell in data.cells) {
      if (cell.offset.dx < selectionTopLeftOffset.dx) {
        selectionTopLeftOffset =
            Offset(cell.offset.dx, selectionTopLeftOffset.dy);
      }
      if (cell.offset.dy < selectionTopLeftOffset.dy) {
        selectionTopLeftOffset =
            Offset(selectionTopLeftOffset.dx, cell.offset.dy);
      }
    }
    List<Cell> newCells = [];
    for (final cell in data.cells) {
      newCells.add(
        cell.copyWith(
          offset: cell.offset -
              selectionTopLeftOffset +
              viewportTopLeft / scaleFactor.value,
        ),
      );
    }
    data = data.copyWith(cells: newCells);
  }

  void selection_articleCell_onTurnArticleIntoEditable(ArticleCell cell) {
    final (_, articleCell) = cellKeys[cell.id.id]!;
    if (articleCell is! ArticleCell) return;

    final editableCell = Cell.editable(
      id: CellId(
        parentId: CellParentId(whiteboardId: widget.data.id.id),
        id: Helper.createId(),
      ),
      title: articleCell.title,
      content: articleCell.content,
      offset: randomOffsetAroundRect(context, CellAppearance(articleCell).rect),
      width: articleCell.width,
      decoration: articleCell.decoration,
    );

    cellKeys[editableCell.id.id] = (
      GlobalKey(
        debugLabel: 'WhiteboardView.cell | ${editableCell.id.id}',
      ),
      editableCell,
    );
    setState(() {});

    widget.onCellCreated(editableCell);
  }

  Future<void> selection_cell_onSelectionsDelete(
      List<String> selectedCellIds) async {
    for (final id in selectedCellIds) {
      cellKeys.remove(id);
      _cellProcessors[id]?.forEach((_, subscription) => subscription.cancel());
      _cellProcessors.remove(id);
    }
    setState(() {});
    await widget.onCellsDeleted(selectedCellIds);
  }

  void selection_cell_onSelectionsMove(Map<String, Offset> newOffsets) {
    List<Cell> newCells = [];
    for (final MapEntry(key: id, value: newOffset) in newOffsets.entries) {
      final (key, cell) = cellKeys[id]!;
      final newCell = cell.copyWith(offset: newOffset);
      newCells.add(newCell);
      cellKeys[id] = (key, newCell);
    }
    setState(() {});
    widget.onCellsUpdated(newCells);
  }

  void selection_cell_onCellSummarize(Cell cell) async {
    if (cell is! ArticleCell && cell is! EditableCell) return;

    final title = cell.mapOrNull(
      article: (value) => value.title,
      editable: (value) => value.title,
    )!;
    final content = cell.mapOrNull(
      article: (value) => value.content,
      editable: (value) => value.content,
    )!;

    final tldrCell = Cell.article(
      id: CellId(
        parentId: CellParentId(whiteboardId: widget.data.id.id),
        id: Helper.createId(),
      ),
      offset: randomOffsetAroundRect(context, CellAppearance(cell).rect),
      width: cell.width,
      decoration: cell.decoration.copyWith(
        cardKind: CellCardKind.flat,
        constraints: false,
      ),
      title: '___| TLDR |___ $title ___|___',
      content: '',
    );

    cellKeys[tldrCell.id.id] = (
      GlobalKey(debugLabel: 'WhiteboardView.cell | ${tldrCell.id.id}'),
      tldrCell,
    );

    setState(() {});
    await widget.onCellCreated(tldrCell);
    cell_moveViewportToCenterOfCell(tldrCell);
    cell_OnCellLinked(
      cell,
      tldrCell,
      decoration: EdgeDecoration(label: 'Summarize'),
    );

    final stream = ref.read(
      summarizeCellProvider(
        title: title,
        content: content,
      ),
    );

    late StreamSubscription subscription;
    void cancelSubscription() {
      subscription.cancel();
      _cellProcessors[tldrCell.id.id] = {
        ..._cellProcessors[tldrCell.id.id] ?? {},
      }..remove('summarize');
    }

    subscription = stream.listen(
      (event) {
        final (latestKey, latestCell) = cellKeys[tldrCell.id.id]!;
        if (latestCell is! ArticleCell) return;
        final newCell = latestCell.copyWith(
          content: latestCell.content + event,
        );
        cellKeys[tldrCell.id.id] = (latestKey, newCell);
        setState(() {});
        widget.onCellUpdated(latestCell, newCell);
      },
      onDone: () {
        print('Done tldr for cell: $title');
        cancelSubscription();
      },
      onError: (error) {
        print(error);
        cancelSubscription();
      },
      cancelOnError: true,
    );
    _cellProcessors[tldrCell.id.id] = {
      ..._cellProcessors[tldrCell.id.id] ?? {},
      'summarize': subscription,
    };
  }

  void selection_cell_onChatWithSelectedCells(
    List<String> selectedCellIds,
    String text, {
    required Offset selectionStart,
    required Offset selectionEnd,
  }) async {
    final rect = Rect.fromPoints(selectionStart, selectionEnd);
    final responseCell = Cell.article(
      id: CellId(
        parentId: CellParentId(whiteboardId: widget.data.id.id),
        id: Helper.createId(),
      ),
      offset: randomOffsetAroundRect(context, rect),
      width: cellWidth,
      decoration: CellDecoration(
        color: ColorVariant.cyan.name,
        cardKind: CellCardKind.outlined,
      ),
      title: text,
      content: '',
    );

    cellKeys[responseCell.id.id] = (
      GlobalKey(debugLabel: 'WhiteboardView.cell | ${responseCell.id.id}'),
      responseCell,
    );
    setState(() {});
    await widget.onCellCreated(responseCell);

    List<Edge> edges = [];
    for (final selectedCellId in selectedCellIds) {
      final edge = Edge(
        id: EdgeId(
          id: 'edge-$selectedCellId-${responseCell.id.id}',
          parentId: EdgeParentId(whiteboardId: widget.data.id.id),
        ),
        source: selectedCellId,
        target: responseCell.id.id,
      );
      edges.add(edge);
      await widget.onEdgeCreated(edge);
    }

    cell_moveViewportToCenterOfCell(responseCell);

    late StreamSubscription subscription;
    void cancelSubscription() {
      subscription.cancel();
      _cellProcessors[responseCell.id.id] = {
        ..._cellProcessors[responseCell.id.id] ?? {},
      }..remove('chat');
    }

    final stream = ref.read(
      generateContentWithMultipleCellProvider(
        cells: selectedCellIds.map((id) => cellKeys[id]!.$2).toList(),
        text: text,
      ),
    );
    subscription = stream.listen(
      (event) {
        final (latestKey, latestCell) = cellKeys[responseCell.id.id]!;
        if (latestCell is! ArticleCell) return;
        final newCell = latestCell.copyWith(
          content: latestCell.content + event,
        );

        cellKeys[responseCell.id.id] = (latestKey, newCell);
        setState(() {});
        widget.onCellUpdated(latestCell, newCell);
      },
      onDone: () {
        print('Done chat with selected cells');
        cancelSubscription();
      },
      onError: (error) {
        print(error);
        cancelSubscription();
      },
    );

    _cellProcessors[responseCell.id.id] = {
      ..._cellProcessors[responseCell.id.id] ?? {},
      'chat': subscription,
    };
  }

  void cell_OnConstraintChanged(Cell cell) {
    final (key, latestCell) = cellKeys[cell.id.id]!;
    final newCell = latestCell.copyWith(
      decoration: latestCell.decoration.copyWith(
        constraints: !latestCell.decoration.constraints,
      ),
    );

    cellKeys[cell.id.id] = (key, newCell);
    setState(() {});
    widget.onCellUpdated(latestCell, newCell);
  }

  void cell_onAskNewQuestion(String text) async {
    final cell = Cell.article(
      offset: offsetToViewport(constraints.biggest.center(Offset.zero)),
      id: CellId(
        parentId: CellParentId(whiteboardId: widget.data.id.id),
        id: Helper.createId(),
      ),
      width: cellWidth,
      decoration: CellDecoration(color: ColorVariant.yellow.name),
      title: text,
      content: '',
    );

    cellKeys[cell.id.id] = (
      GlobalKey(
        debugLabel: 'WhiteboardView.cell | ${cell.id.id}',
      ),
      cell,
    );
    setState(() {});
    cell_moveViewportToCenterOfCell(cell);
    await widget.onCellCreated(cell);

    late StreamSubscription subscription;
    void cancelSubscription() {
      subscription.cancel();
      _cellProcessors[cell.id.id] = {
        ..._cellProcessors[cell.id.id] ?? {},
      }..remove('generate');
    }

    final stream = ref.read(generateQuestionProvider(text: text));
    subscription = stream.listen(
      (text) {
        final (latestKey, latestCell) = cellKeys[cell.id.id]!;
        if (latestCell is! ArticleCell) return;

        final newCell = latestCell.copyWith(
          content: latestCell.content + text,
        );
        cellKeys[cell.id.id] = (latestKey, newCell);
        setState(() {});
      },
      onDone: () {
        print('done generate for cell ${cell.id.id}');
        cancelSubscription();
      },
      onError: (error) {
        print(error);
        cancelSubscription();
      },
    );

    _cellProcessors[cell.id.id] = {
      ..._cellProcessors[cell.id.id] ?? {},
      'generate': subscription,
    };
  }
}

class WhiteboardDropZone extends StatelessWidget {
  const WhiteboardDropZone({
    super.key,
    required this.id,
    required this.child,
    required this.horizontalDetails,
    required this.verticalDetails,
    required this.scaleFactor,

    /// Cell
    required this.onCellCreated,
    required this.onImageReceived,
    required this.onTextReceived,
  });

  final WhiteboardId id;

  final double scaleFactor;
  final ScrollableDetails horizontalDetails;
  final ScrollableDetails verticalDetails;

  final void Function(Cell cell) onCellCreated;
  final void Function(PerformDropEvent event, Uri uri) onImageReceived;
  final void Function(PerformDropEvent event, String value) onTextReceived;

  final Widget child;

  Offset _offsetToViewport(Offset offset) {
    final topLeft = Offset(
      horizontalDetails.controller!.offset,
      verticalDetails.controller!.offset,
    );
    return (topLeft + offset) / scaleFactor;
  }

  bool handleLocalData(Object? localData, Offset position) {
    if (localData case Map<String, dynamic>()) {
      try {
        var cell = Cell.fromJson(localData);
        cell = cell.copyWith(
          offset: _offsetToViewport(position - cell.offset),
        );

        onCellCreated(cell);
      } catch (e) {
        print('Error reading cell $e');
      }
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return DropRegion(
      // Formats this region can accept.
      formats: Formats.standardFormats,
      hitTestBehavior: HitTestBehavior.opaque,
      onDropOver: (event) {
        // You can inspect local data here, as well as formats of each item.
        // However on certain platforms (mobile / web) the actual data is
        // only available when the drop is accepted (onPerformDrop).
        // This drop region only supports copy operation.
        if (event.session.allowedOperations.contains(DropOperation.copy)) {
          return DropOperation.copy;
        } else {
          return DropOperation.none;
        }
      },
      onPerformDrop: (event) async {
        // Called when user dropped the item. You can now request the data.
        // Note that data must be requested before the performDrop callback
        // is over.
        for (final item in event.session.items) {
          // data reader is available now
          bool handled = handleLocalData(item.localData, event.position.local);
          if (handled) continue;

          final imageFormats = [
            Formats.jpeg,
            Formats.png,
            Formats.gif,
            Formats.tiff,
            Formats.webp,
            Formats.heif,
            Formats.heic,
            // Formats.svg,
          ];

          final reader = item.dataReader!;
          final matchedFormat = imageFormats.firstWhereOrNull(
            (format) => reader.canProvide(format),
          );
          if (matchedFormat case final matchedFormat?) {
            print('Dropped image: ${item}');
            if (reader.canProvide(Formats.uri)) {
              reader.getValue<NamedUri>(Formats.uri, (value) {
                if (value != null) {
                  // You can access values through the `value` property.
                  print('Dropped image: ${value.name} | ${value.uri}');
                  onImageReceived(event, value.uri);
                }
              }, onError: (error) {
                print('Error reading value $error');
              });
              continue;
            } else {
              reader.getFile(
                matchedFormat,
                (value) async {
                  final directory = await getApplicationDocumentsDirectory();
                  var file = io.File(
                      '${directory.path}/whiteboard/${id.id}/${value.fileName}');
                  file = await file.create(recursive: true);
                  final ioSink = file.openWrite();
                  try {
                    final stream = value.getStream();
                    await ioSink.addStream(stream);
                    onImageReceived(event, file.uri);
                  } catch (e) {
                  } finally {
                    await ioSink.flush();
                    await ioSink.close();
                  }
                },
              );
            }
          }

          if (reader.canProvide(Formats.plainText)) {
            reader.getValue<String>(Formats.plainText, (value) {
              if (value != null) {
                // You can access values through the `value` property.
                print('Dropped text: $value');
                onTextReceived(event, value);
              }
            }, onError: (error) {
              print('Error reading value $error');
            });
          }
        }
      },
      child: child,
    );
  }
}
