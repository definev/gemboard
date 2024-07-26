import 'dart:async';
import 'dart:collection';
import 'dart:math' as math;

import 'package:boundless_stack/boundless_stack.dart';
import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:graph_edge/graph_edge.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:super_drag_and_drop/super_drag_and_drop.dart';
import 'package:utils/utils.dart';
import 'package:whiteboard/src/domain/model/whiteboard.dart';
import 'package:whiteboard/src/widget/cell_builder.dart';
import 'package:whiteboard/src/widget/edge_builder.dart';
import 'package:whiteboard/src/widget/selection_cells_view.dart';

class WhiteboardView extends ConsumerStatefulWidget {
  const WhiteboardView({
    super.key,
    required this.data,

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

  @override
  void initState() {
    super.initState();
    scaleFactor = widget.scaleFactor ?? ValueNotifier(.5);
    verticalDetails = widget.verticalDetails ?? defaultVerticalDetails;
    horizontalDetails = widget.horizontalDetails ?? defaultHorizontalDetails;
  }

  @override
  void dispose() {
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
      if (widget.verticalDetails?.controller !=
          oldWidget.verticalDetails?.controller) {
        verticalDetails.controller?.dispose();
      }
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
      if (widget.horizontalDetails?.controller !=
          oldWidget.horizontalDetails?.controller) {
        horizontalDetails.controller?.dispose();
      }
      horizontalDetails = defaultHorizontalDetails;
    }
  }

  Offset _offsetToViewport(Offset offset) {
    final topLeft = Offset(
      horizontalDetails.controller!.offset,
      verticalDetails.controller!.offset,
    );
    return (topLeft + offset) / scaleFactor.value;
  }

  void moveViewportToCenterOfCell(Cell cell) {
    final duration = const Duration(milliseconds: 300);
    final curve = Curves.easeInOut;
    final size = context.size ?? Size.zero;
    final space = (size.width - cell.width).abs() / 2 +
        (1 - scaleFactor.value) * cell.width / 2;

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

  void onBrainstormingCellCreated(BrainstormingCell cell) {
    moveViewportToCenterOfCell(cell);
  }

  void onEditableCellCreated(TextCell cell) {
    moveViewportToCenterOfCell(cell);
  }

  bool handleLocalData(Object? localData, Offset position) {
    if (localData case Map<String, dynamic>()) {
      try {
        var cell = Cell.fromJson(localData);
        cell = cell.copyWith(
          offset: _offsetToViewport(
            position - cell.offset,
          ),
        );

        /// Custom action when cell created
        cell.mapOrNull(
          brainstorming: onBrainstormingCellCreated,
          editable: onEditableCellCreated,
        );

        widget.onCellCreated(cell);
      } catch (e) {
        print('Error reading cell $e');
      }
      return true;
    }
    return false;
  }

  void onEdgeUpdated() {
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(widget.cellsStreamProvider, updateCellKeys);
    ref.listen(widget.edgesStreamProvider, updateEdgeKeys);
    ref.watch(widget.cellsStreamProvider);
    ref.watch(widget.edgesStreamProvider);

    return DropRegion(
      // Formats this region can accept.
      formats: Formats.standardFormats,
      hitTestBehavior: HitTestBehavior.opaque,
      onDropOver: (event) {
        // You can inspect local data here, as well as formats of each item.
        // However on certain platforms (mobile / web) the actual data is
        // only available when the drop is accepted (onPerformDrop).
        final item = event.session.items.first;
        if (item.localData is Map) {
          // This is a drag within the app and has custom local data set.
        }
        if (item.canProvide(Formats.plainText)) {
          // this item contains plain text.
        }
        // This drop region only supports copy operation.
        if (event.session.allowedOperations.contains(DropOperation.copy)) {
          return DropOperation.copy;
        } else {
          return DropOperation.none;
        }
      },
      onDropEnter: (event) {
        // This is called when region first accepts a drag. You can use this
        // to display a visual indicator that the drop is allowed.
      },
      onDropLeave: (event) {
        // Called when drag leaves the region. Will also be called after
        // drag completion.
        // This is a good place to remove any visual indicators.
      },
      onPerformDrop: (event) async {
        // Called when user dropped the item. You can now request the data.
        // Note that data must be requested before the performDrop callback
        // is over.
        for (final item in event.session.items) {
          // data reader is available now
          bool handled = handleLocalData(item.localData, event.position.local);
          if (handled) continue;

          final reader = item.dataReader!;
          if (reader.canProvide(Formats.jpeg)) {
            print('Dropped image: ${item}');
            if (reader.canProvide(Formats.uri)) {
              reader.getValue<NamedUri>(Formats.uri, (value) {
                if (value != null) {
                  // You can access values through the `value` property.
                  print('Dropped image: ${value.name} | ${value.uri}');
                  final cell = Cell.image(
                    id: CellId(
                      id: Helper.createId(),
                      parentId: CellParentId(
                        whiteboardId: widget.data.id.id,
                      ),
                    ),
                    offset: _offsetToViewport(event.position.local),
                    width: 200,
                    decoration: CellDecoration(color: 'blue'),
                    url: value.uri.toString(),
                  );

                  widget.onCellCreated(cell);
                }
              }, onError: (error) {
                print('Error reading value $error');
              });
              continue;
            }
          }

          if (reader.canProvide(Formats.uri)) {
            reader.getValue<NamedUri>(Formats.uri, (value) {
              if (value != null) {
                // You can access values through the `value` property.
                print('Dropped text: ${value.name} | ${value.uri}');
              }
            }, onError: (error) {
              print('Error reading value $error');
            });
          }
        }
      },
      child: ListenableBuilder(
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
            List<String> selectedCells = [];

            for (final (key, cell) in cellKeys.values) {
              if (cell.selected) {
                selectedCells.add(cell.id.id);

                if (selectionStart == null) {
                  selectionStart = cell.offset;
                }
                if (selectionEnd == null) {
                  selectionEnd = cell.offset;
                }

                selectionStart = Offset(
                  math.min(selectionStart.dx, cell.offset.dx),
                  math.min(selectionStart.dy, cell.offset.dy),
                );
                selectionEnd = Offset(
                  math.max(
                    selectionEnd.dx,
                    cell.offset.dx + cell.width,
                  ),
                  math.max(
                    selectionEnd.dy,
                    cell.offset.dy + CellAppearance(cell).rect.height,
                  ),
                );
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
                    final newCell = cell.copyWith(
                      offset: newValue.offset,
                      height: switch (cell.height) {
                        null => null,
                        _ => newValue.height,
                      },
                      preferredHeight: newValue.height ??
                          newValue.preferredHeight ??
                          cell.preferredHeight,
                      width: newValue.width ?? cell.width,
                    );
                    cellKeys[newValue.id] = (key, newCell);
                    setState(() {});
                    widget.onCellUpdated(cell, newCell);
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
                    ),
                    onSizeChanged: (newSize) {
                      final (_, latestCell) = cellKeys[cell.id.id]!;

                      final newCell = latestCell.copyWith(
                        // height: newSize.height,
                        // preferredHeight: newSize.height,
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
                    onSuggestionSelected:
                        brainstormingCell_OnSuggestionSelected,
                    onAskForSuggestion: brainstormingCell_OnAskForSuggestion,
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
                  ),
                ),
              );
            }

            return BoundlessStack(
              horizontalDetails: horizontalDetails,
              verticalDetails: verticalDetails,
              backgroundBuilder: GridBackground.backgroundBuilder(
                scale: scaleFactor,
              ),
              foregroundBuilder: switch (selectedCells.isEmpty) {
                true => null,
                false => buildSuggectionForSelection(
                    selectionStart: selectionStart!,
                    selectionEnd: selectionEnd!,
                    selectedCells: selectedCells,
                    scaleFactor: scaleFactor,
                  ),
              },
              delegate: BoundlessStackListDelegate(
                children: stackPositions.toList(),
              ),
              scaleFactor: scaleFactor,
            );
          },
        ),
      ),
    );
  }

  Offset randomOffsetAround(Cell cell, [double radius = 100]) {
    final offset = cell.offset;
    final random = math.Random();
    final rect = CellAppearance(cell).rect;

    radius *= scaleFactor.value;

    final x = random.nextDouble() * radius + offset.dx;
    final y = random.nextDouble() * radius + offset.dy;

    return Offset(
      switch (random.nextBool()) {
        true => x + rect.width,
        false => x - rect.width,
      },
      switch (random.nextBool()) {
        true => y + rect.height,
        false => y - rect.height,
      },
    );
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
    String suggestion,
  ) async {
    final suggestionCell = Cell.article(
      offset: randomOffsetAround(cell),
      id: CellId(
        id: Helper.createId(),
        parentId: CellParentId(
          whiteboardId: widget.data.id.id,
        ),
      ),
      width: cell.width,
      decoration: CellDecoration(color: 'blue'),
      title: suggestion,
      content: '',
    ) as ArticleCell;
    moveViewportToCenterOfCell(suggestionCell);
    await widget.onCellCreated(suggestionCell);

    final edge = Edge(
      id: EdgeId(
        id: Helper.createId(),
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

  TwoDimensionalViewportBuilder buildSuggectionForSelection({
    required Offset selectionStart,
    required Offset selectionEnd,
    required List<String> selectedCells,
    required double scaleFactor,
  }) =>
      (context, verticalPosition, horizontalPosition) {
        final topLeft = Offset(
          horizontalDetails.controller!.offset,
          verticalDetails.controller!.offset,
        );

        final spacingOffset = Offset(
          SpaceVariant.small.resolve(context),
          SpaceVariant.small.resolve(context),
        );

        final viewportSelectionStart =
            ((selectionStart - topLeft / scaleFactor) - spacingOffset) *
                scaleFactor;
        final viewportSelectionEnd =
            ((selectionEnd - topLeft / scaleFactor) + spacingOffset) *
                scaleFactor;

        return SelectionCellsView(
          selectedCellIds: selectedCells,
          cellMaps: cellKeys,
          viewportSelectionStart: viewportSelectionStart,
          viewportSelectionEnd: viewportSelectionEnd,
          scaleFactor: scaleFactor,
          onSelectionsDelete: (selectedCellIds) async {
            for (final id in selectedCellIds) {
              cellKeys.remove(id);
              _cellProcessors[id]
                  ?.forEach((_, subscription) => subscription.cancel());
              _cellProcessors.remove(id);
            }
            setState(() {});
            await widget.onCellsDeleted(selectedCellIds);
          },
          onSelectionMove: (newCellOffsets) {
            List<Cell> newCells = [];
            for (final MapEntry(key: id, value: newOffset)
                in newCellOffsets.entries) {
              final (key, cell) = cellKeys[id]!;
              final newCell = cell.copyWith(offset: newOffset);
              newCells.add(newCell);
              cellKeys[id] = (key, newCell);
              setState(() {});
            }
            widget.onCellsUpdated(newCells);
          },
        );
      };
}
