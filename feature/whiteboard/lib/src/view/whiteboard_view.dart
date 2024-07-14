import 'package:boundless_stack/boundless_stack.dart';
import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:super_drag_and_drop/super_drag_and_drop.dart';
import 'package:whiteboard/src/domain/model/whiteboard.dart';

class WhiteboardView extends ConsumerStatefulWidget {
  const WhiteboardView({
    super.key,
    required this.data,
    required this.cellsStreamProvider,
    required this.onCellUpdated,
    this.scaleFactor,
    this.horizontalDetails,
    this.verticalDetails,
  });

  final Whiteboard data;
  final AutoDisposeStreamProvider<List<Cell>> cellsStreamProvider;
  final void Function(Cell oldValue, Cell newValue) onCellUpdated;

  /// Whiteboard infinite scrollable configuration
  final ValueNotifier<double>? scaleFactor;
  final ScrollableDetails? verticalDetails;
  final ScrollableDetails? horizontalDetails;

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
    final previousCells = Map<String, Cell>.fromIterable(
      previous?.valueOrNull ?? <Cell>[],
      key: (element) => (element as Cell).id.id,
      value: (element) => element as Cell,
    );
    final nextCells = next.valueOrNull ?? <Cell>[];

    for (final cell in nextCells) {
      if (previousCells[cell.id.id] != null) {
        previousCells.remove(cell.id.id);
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

    for (final cell in previousCells.values) {
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

  @override
  Widget build(BuildContext context) {
    ref.listen(widget.cellsStreamProvider, updateCellKeys);

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
          final localData = item.localData;
          if (localData case Map<String, dynamic>()) {
            try {
              final cell = Cell.fromJson(localData);

              cellKeys[cell.id.id] = (
                GlobalKey(
                  debugLabel: 'WhiteboardView.cell | ${cell.id.id}',
                ),
                cell.copyWith(
                  offset: _offsetToViewport(
                    event.position.local - cell.offset,
                  ),
                ),
              );
              setState(() {});
            } catch (e) {
              print('Error reading cell $e');
            }
            continue;
          }

          final reader = item.dataReader!;
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
          scaleFactor: scaleFactor.value,
          onScaleFactorChanged: (value) => scaleFactor.value = value,
          stack: (key, scaleFactor) => BoundlessStack(
            horizontalDetails: horizontalDetails,
            verticalDetails: verticalDetails,
            backgroundBuilder: GridBackground.backgroundBuilder(
              scale: scaleFactor,
            ),
            delegate: BoundlessStackListDelegate(
              children: [
                for (final (key, cell) in cellKeys.values)
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
                    onDataUpdated: (oldValue, newValue) =>
                        widget.onCellUpdated(
                      cell,
                      cell.copyWith(
                        layer: newValue.layer,
                        offset: newValue.offset,
                        height: newValue.height,
                        width: newValue.width ?? cell.width,
                      ),
                    ),
                    moveable: StackMove(
                      enable: true,
                      snap: StackSnap.square(snap: 50),
                    ),
                    builder: (context, notifier, child) => CellView(
                      cell: cell,
                    ),
                  ),
              ],
            ),
            scaleFactor: scaleFactor,
          ),
        ),
      ),
    );
  }
}
