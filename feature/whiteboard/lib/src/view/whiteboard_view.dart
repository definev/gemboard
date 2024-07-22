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
    required this.cellsStreamProvider,
    required this.onCellCreated,
    required this.onCellUpdated,
    required this.onCellsUpdated,
    required this.enableMoveByMouse,
    required this.enableMoveByTouch,
    this.scaleFactor,
    this.onScaleStart,
    this.onScaleEnd,
    this.horizontalDetails,
    this.verticalDetails,
  });

  final Whiteboard data;
  final AutoDisposeStreamProvider<List<Cell>> cellsStreamProvider;
  final void Function(Cell oldValue, Cell newValue) onCellUpdated;
  final void Function(List<Cell> cells) onCellsUpdated;
  final void Function(Cell value) onCellCreated;

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
  void didUpdateWidget(covariant WhiteboardView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.scaleFactor != oldWidget.scaleFactor) {
      scaleFactor = widget.scaleFactor ?? ValueNotifier(.5);
    }
    if (widget.verticalDetails != null &&
        widget.verticalDetails != oldWidget.verticalDetails) {
      verticalDetails.controller?.dispose();
      verticalDetails = widget.verticalDetails!;
    }

    if (widget.verticalDetails == null && oldWidget.verticalDetails != null) {
      verticalDetails.controller?.dispose();
      verticalDetails = defaultVerticalDetails;
    }

    if (widget.horizontalDetails != null &&
        widget.horizontalDetails != oldWidget.horizontalDetails) {
      horizontalDetails.controller?.dispose();
      horizontalDetails = widget.horizontalDetails!;
    }

    if (widget.horizontalDetails == null &&
        oldWidget.horizontalDetails != null) {
      horizontalDetails.controller?.dispose();
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

  bool handleLocalData(Object? localData, Offset position) {
    if (localData case Map<String, dynamic>()) {
      try {
        var cell = Cell.fromJson(localData);
        cell = cell.copyWith(
          offset: _offsetToViewport(
            position - cell.offset,
          ),
        );

        // Mocking the edge
        if (cellKeys.length >= 1) {
          final randomCell =
              cellKeys.values.elementAt(random.nextInt(cellKeys.length)).$2;
          final edge = Edge(
            id: EdgeId(
              id: Helper.createId(),
              parentId: EdgeParentId(),
            ),
            source: randomCell.id.id,
            target: cell.id.id,
          );
          edgeKeys[edge.id.id] = (
            GlobalKey(
              debugLabel: 'WhiteboardView.edge | ${edge.id.id}',
            ),
            edge,
          );
        }

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
    ref.watch(widget.cellsStreamProvider);

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
                    cell.offset.dy +
                        (cell.height ?? cell.preferredHeight ?? 100),
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
                    thumb: DSThumb(
                      color: CellDecorationExtension(cell.decoration)
                          .colorValue(context),
                    ),
                    onSizeChanged: (newSize) {
                      final (_, latestCell) = cellKeys[cell.id.id]!;
                      final newCell = latestCell.copyWith(
                        height: newSize.height,
                        preferredHeight: newSize.height,
                        width: newSize.width,
                      );
                      cellKeys[cell.id.id] = (key, newCell);
                      setState(() {});
                      widget.onCellUpdated(cell, newCell);
                    },
                  ),
                  builder: (context, notifier, child) => CellBuilder(
                    scaleFactor: scaleFactor,
                    horizontalDetails: horizontalDetails,
                    verticalDetails: verticalDetails,
                    key: ValueKey('CellBuilder | ${cell.id.id}'),
                    notifier: notifier,
                    stackPositionDataMap: stackPositionDataMap,
                    cell: cell,
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

  TwoDimensionalViewportBuilder buildSuggectionForSelection({
    required Offset selectionStart,
    required Offset selectionEnd,
    required List<String> selectedCells,
    required double scaleFactor,
  }) {
    return (context, verticalPosition, horizontalPosition) {
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
}
