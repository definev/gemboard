import 'dart:math' as math;
import 'dart:ui';

import 'package:boundless_stack/boundless_stack.dart';
import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:mix/mix.dart';
import 'package:super_drag_and_drop/super_drag_and_drop.dart';
import 'package:utils/utils.dart';
import 'package:whiteboard/src/domain/model/whiteboard.dart';

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
  ConsumerState<WhiteboardView> createState() => _WhiteboardViewState();
}

class _WhiteboardViewState extends ConsumerState<WhiteboardView> {
  late ValueNotifier<double> scaleFactor;

  late ScrollableDetails verticalDetails;
  late ScrollableDetails horizontalDetails;

  Map<String, (GlobalKey, Cell)> cellKeys = {};

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
          cell
        );
      }
    }

    for (final (_, cell) in previousCells.values) {
      cellKeys.remove(cell.id.id);
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

        widget.onCellCreated(cell);
      } catch (e) {
        print('Error reading cell $e');
      }
      return true;
    }
    return false;
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
            List<StackPosition> stackPositions = [];
            Offset? selectionStart;
            Offset? selectionEnd;
            List<(GlobalKey, Cell)> selectedCells = [];

            for (final (key, cell) in cellKeys.values) {
              if (cell.selected) {
                selectedCells.add((key, cell));

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
                  math.max(selectionEnd.dx, cell.offset.dx + cell.width),
                  math.max(
                      selectionEnd.dy, cell.offset.dy + (cell.height ?? 100)),
                );
              }
              stackPositions.add(
                StackPosition(
                  key: key,
                  scaleFactor: scaleFactor,
                  data: StackPositionData(
                    id: cell.id.id,
                    layer: cell.layer,
                    height: cell.height,
                    width: cell.width,
                    offset: cell.offset,
                  ),
                  onDataUpdated: (oldValue, newValue) {
                    final newCell = cell.copyWith(
                      layer: newValue.layer,
                      offset: newValue.offset,
                      height: newValue.height,
                      width: newValue.width ?? cell.width,
                    );
                    cellKeys[newValue.id] = (key, newCell);
                    setState(() {});
                    widget.onCellUpdated(cell, newCell);
                  },
                  moveable: StackMove(enable: true),
                  builder: (context, notifier, child) => ResizableStackPosition(
                    notifier: notifier,
                    onSizeChanged: (size) {
                      final newCell = cell.copyWith(
                        height: size.height,
                        width: size.width,
                      );
                      cellKeys[cell.id.id] = (key, newCell);
                      setState(() {});
                      widget.onCellUpdated(cell, newCell);
                    },
                    height: cell.height,
                    thumb: DSThumb(
                      color: CellDecorationExtension(cell.decoration)
                          .colorValue(context),
                    ),
                    child: child!,
                  ),
                  child: CellView(cell: cell),
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
                    selectionStart!,
                    selectionEnd!,
                    selectedCells,
                    scaleFactor,
                  ),
              },
              delegate: BoundlessStackListDelegate(
                children: stackPositions,
              ),
              scaleFactor: scaleFactor,
            );
          },
        ),
      ),
    );
  }

  TwoDimensionalViewportBuilder buildSuggectionForSelection(
    Offset selectionStart,
    Offset selectionEnd,
    List<(GlobalKey<State<StatefulWidget>>, Cell)> selectedCells,
    double scaleFactor,
  ) {
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

      return HookBuilder(
        builder: (context) {
          final showChat = useState(false);

          return Stack(
            children: [
              Positioned.fromRect(
                rect: Rect.fromPoints(
                  viewportSelectionStart,
                  viewportSelectionEnd,
                ),
                child: PortalTarget(
                  anchor: Aligned(
                    follower: Alignment.bottomCenter,
                    target: Alignment.topCenter,
                  ),
                  portalFollower: Transform.scale(
                    scale: scaleFactor,
                    alignment: Alignment.bottomCenter,
                    child: StyledColumn(
                      style: Style(
                        $flex.mainAxisSize.min(),
                        $flex.gap.ref(SpaceVariant.small),
                      ),
                      children: [
                        if (showChat.value)
                          IntrinsicHeight(
                            child: ConstrainedBox(
                              constraints: BoxConstraints(maxWidth: 600),
                              child: DSTextbox(
                                autofocus: true,
                                style: Style(
                                  $box.margin.horizontal
                                      .ref(SpaceVariant.small),
                                ),
                                hintText: 'Ask a question',
                                minLines: 1,
                                maxLines: 10,
                                trailing: Button(
                                  style: Style(
                                    $box.margin.horizontal
                                        .ref(SpaceVariant.small),
                                  ),
                                  onPressed: () {
                                    showChat.value = false;
                                  },
                                  child: Icon(IconlyLight.send),
                                ),
                              ),
                            ),
                          ),
                        DSToolbar(
                          style: Style(
                            $box.margin.bottom.ref(SpaceVariant.small),
                          ),
                          direction: Axis.horizontal,
                          children: [
                            Button(
                              onPressed: () => showChat.value = !showChat.value,
                              child: Icon(IconlyLight.chat),
                            ),
                            Button(
                              onPressed: () {},
                              child: Icon(IconlyLight.delete),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  child: GestureDetector(
                    supportedDevices: {
                      ...PointerDeviceKind.values,
                    }..remove(PointerDeviceKind.trackpad),
                    onPanUpdate: (details) {
                      widget.onCellsUpdated(
                        selectedCells.map((e) {
                          final cell = e.$2;
                          final newCell = cell.copyWith(
                            offset: cell.offset + details.delta / scaleFactor,
                          );
                          cellKeys[cell.id.id] = (e.$1, newCell);
                          return newCell;
                        }).toList(),
                      );
                    },
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: ColorVariant.yellow.resolve(context).withOpacity(
                              OpacityVariant.hightlight.resolve(context).value,
                            ),
                        border: Border.all(
                          color: ColorVariant.yellow.resolve(context),
                          width: 2 * scaleFactor,
                        ),
                      ),
                      child: const SizedBox.expand(),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      );
    };
  }
}
