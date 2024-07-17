import 'dart:async';
import 'dart:math' as math;
import 'dart:ui';

import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mix/mix.dart';
import 'package:super_drag_and_drop/super_drag_and_drop.dart';
import 'package:utils/utils.dart';
import 'package:whiteboard/src/domain/model/whiteboard.dart';
import 'package:whiteboard/src/provider/get_whiteboard_by_id.dart';
import 'package:whiteboard/src/view/whiteboard_view.dart';

enum CursorMode {
  move,
  handTool,
}

class WhiteboardEditorFlow extends HookConsumerWidget {
  const WhiteboardEditorFlow({
    super.key,
    required this.id,
  });

  final WhiteboardId id;

  static const allowedOperations = [
    DropOperation.link,
    DropOperation.move,
    DropOperation.copy,
    DropOperation.userCancelled,
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cursorMode = useState(CursorMode.move);

    final whiteboard = ref.watch(getWhiteboardByIdProvider(id: id));

    var actionTool = DSToolbar(
      children: [
        HookBuilder(
          builder: (context) {
            final itemKey = useMemoized(() => GlobalKey());
            return DragItemWidget(
              key: itemKey,
              dragItemProvider: (request) {
                final localPosition =
                    (itemKey.currentContext!.findRenderObject()! as RenderBox)
                        .globalToLocal(request.location);

                return DragItem(
                  localData: Cell.article(
                    id: CellId(
                      parentId: CellParentId(whiteboardId: id.id),
                      id: Helper.createId(),
                    ),
                    offset: localPosition,
                    width: 200,
                    decoration: CellDecoration(color: 'red'),
                    title: 'How to use Whiteboard',
                    content: 'Whiteboard is a tool for collaboration',
                    editable: false,
                  ).toJson(),
                );
              },
              allowedOperations: () => allowedOperations,
              child: DraggableWidget(
                child: DSTooltip(
                  alignment: Alignment.bottomCenter,
                  label: StyledText('Brainstorming'),
                  child: Button(
                    style: Style(
                      $box.height(40),
                      $box.width(40),
                      $box.alignment.center(),
                    ),
                    onPressed: () {},
                    child: Icon(IconlyLight.discovery),
                  ),
                ),
              ),
            );
          },
        ),
        HookBuilder(
          builder: (context) {
            final itemKey = useMemoized(() => GlobalKey());
            return DragItemWidget(
              key: itemKey,
              dragItemProvider: (request) {
                final localPosition =
                    (itemKey.currentContext!.findRenderObject()! as RenderBox)
                        .globalToLocal(request.location);

                return DragItem(
                  localData: Cell.text(
                    id: CellId(
                      parentId: CellParentId(whiteboardId: id.id),
                      id: Helper.createId(),
                    ),
                    offset: localPosition,
                    width: 200,
                    decoration: CellDecoration(color: 'red'),
                    text: 'Hello World',
                  ).toJson(),
                );
              },
              allowedOperations: () => allowedOperations,
              child: DraggableWidget(
                child: DSTooltip(
                  alignment: Alignment.bottomCenter,
                  label: StyledText('Notes'),
                  child: Button(
                    style: Style(
                      $box.height(40),
                      $box.width(40),
                      $box.alignment.center(),
                    ),
                    onPressed: () {},
                    child: Icon(IconlyLight.document),
                  ),
                ),
              ),
            );
          },
        ),
        HookBuilder(
          builder: (context) {
            final itemKey = useMemoized(() => GlobalKey());
            return DragItemWidget(
              key: itemKey,
              dragItemProvider: (request) {
                final localPosition =
                    (itemKey.currentContext!.findRenderObject()! as RenderBox)
                        .globalToLocal(request.location);

                return DragItem(
                  localData: Cell.text(
                    id: CellId(
                      parentId: CellParentId(whiteboardId: id.id),
                      id: Helper.createId(),
                    ),
                    offset: localPosition,
                    width: 200,
                    decoration: CellDecoration(color: 'red'),
                    text: 'Hello World',
                  ).toJson(),
                );
              },
              allowedOperations: () => allowedOperations,
              child: DraggableWidget(
                child: DSTooltip(
                  alignment: Alignment.bottomCenter,
                  label: StyledText('Chat'),
                  child: Button(
                    style: Style(
                      $box.height(40),
                      $box.width(40),
                      $box.alignment.center(),
                    ),
                    onPressed: () {},
                    child: Icon(IconlyLight.chat),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );

    final cursorModeTool = DSToolbar(
      children: [
        DSTooltip(
          alignment: Alignment.bottomCenter,
          label: StyledText('Move'),
          child: Button(
            style: Style(
              $box.height(40),
              $box.width(40),
              $box.alignment.center(),
            ),
            kind: switch (cursorMode.value) {
              CursorMode.move => ButtonKind.filled,
              CursorMode.handTool => ButtonKind.flat,
            },
            onPressed: () => cursorMode.value = CursorMode.move,
            child: Icon(LineIcons.mousePointer),
          ),
        ),
        DSTooltip(
          alignment: Alignment.bottomCenter,
          label: StyledText('Hand tool'),
          child: Button(
            style: Style(
              $box.height(40),
              $box.width(40),
              $box.alignment.center(),
            ),
            kind: switch (cursorMode.value) {
              CursorMode.move => ButtonKind.flat,
              CursorMode.handTool => ButtonKind.filled,
            },
            onPressed: () => cursorMode.value = CursorMode.handTool,
            child: Icon(LineIcons.paperHandAlt),
          ),
        ),
      ],
    );

    final verticalScrollController = useScrollController();
    final verticalDetails = useMemoized(
      () => ScrollableDetails.vertical(controller: verticalScrollController),
    );
    final horizontalScrollController = useScrollController();
    final horizontalDetails = useMemoized(
      () =>
          ScrollableDetails.horizontal(controller: horizontalScrollController),
    );
    final scaleFactor = useState(0.5);

    return switch (whiteboard) {
      AsyncLoading() => const Center(
          child: CircularProgressIndicator(),
        ),
      AsyncData(:final value) => () {
          var whiteboardBuilder = WhiteboardCursorTool(
            cursorMode: cursorMode,
            horizontalDetails: horizontalDetails,
            verticalDetails: verticalDetails,
            onSelectionStart: () => ref.read(
                deselectCellProvider(
                  parentId: CellParentId(whiteboardId: id.id),
                ).future,
              ),
            onSelection: (rect) async {
              final viewportTopLeft = Offset(
                horizontalDetails.controller!.offset,
                verticalDetails.controller!.offset,
              );
              final viewportRect = Rect.fromPoints(
                (rect.topLeft + viewportTopLeft) / scaleFactor.value,
                (rect.bottomRight + viewportTopLeft) / scaleFactor.value,
              );

              await ref.read(
                selectCellProvider(
                  parentId: CellParentId(whiteboardId: id.id),
                  selection: viewportRect,
                ).future,
              );
            },
            whiteboardBuilder: (
              enableMoveByMouse,
              enableMoveByTouch,
              onGrab,
            ) =>
                WhiteboardView(
              key: ValueKey('whiteboard ${id.id}'),
              scaleFactor: scaleFactor,
              enableMoveByMouse: cursorMode.value == CursorMode.handTool,
              enableMoveByTouch: cursorMode.value == CursorMode.handTool,
              verticalDetails: verticalDetails,
              horizontalDetails: horizontalDetails,
              onScaleStart: () => onGrab.value = true,
              onScaleEnd: () => onGrab.value = false,
              data: value,
              cellsStreamProvider: getCellListProvider(
                parentId: CellParentId(whiteboardId: id.id),
              ),
              onCellCreated: (value) => ref.read(
                createCellProvider(
                  parentId: CellParentId(whiteboardId: id.id),
                  data: value,
                ).future,
              ),
              onCellUpdated: (oldValue, newValue) => ref.read(
                updateCellProvider(
                  id: newValue.id,
                  data: newValue,
                ).future,
              ),
              onCellsUpdated: (cells) => ref.read(
                updateCellsProvider(
                  parentId: CellParentId(whiteboardId: id.id),
                  cells: cells,
                ).future,
              )
            ),
          );
          return Stack(
            children: [
              Positioned.fill(child: whiteboardBuilder),
              Align(
                alignment: Alignment.topCenter,
                child: SafeArea(
                  child: Padding(
                    padding:
                        EdgeInsets.all(SpaceVariant.small.resolve(context)),
                    child: StyledFlex(
                      direction: Axis.horizontal,
                      style: Style(
                        $flex.mainAxisSize.min(),
                        $flex.gap.ref(SpaceVariant.medium),
                      ),
                      children: [
                        actionTool,
                        cursorModeTool,
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        }(),
      AsyncError(:final error, stackTrace: final _) => Center(
          child: Text('Error: $error'),
        ),
      _ => SizedBox(),
    };
  }
}

class WhiteboardCursorTool extends HookWidget {
  const WhiteboardCursorTool({
    super.key,
    required this.cursorMode,
    required this.whiteboardBuilder,
    required this.horizontalDetails,
    required this.verticalDetails,
    required this.onSelectionStart,
    required this.onSelection,
  });

  final ValueNotifier<CursorMode> cursorMode;
  final ScrollableDetails horizontalDetails;
  final ScrollableDetails verticalDetails;

  final Widget Function(
    bool enableMoveByMouse,
    bool enableMoveByTouch,
    ValueNotifier<bool> onGrab,
  ) whiteboardBuilder;

  final Future<void> Function() onSelectionStart;
  final Future<void> Function(Rect rect) onSelection;

  @override
  Widget build(BuildContext context) {
    final onGrab = useState<bool>(false);
    final firstPoint = useState<Offset?>(null);
    final secondPoint = useState<Offset?>(null);

    Rect? getRect() {
      if (firstPoint.value == null || secondPoint.value == null) return null;
      final topLeft = Offset(
        math.min(firstPoint.value!.dx, secondPoint.value!.dx),
        math.min(firstPoint.value!.dy, secondPoint.value!.dy),
      );
      final bottomRight = Offset(
        math.max(firstPoint.value!.dx, secondPoint.value!.dx),
        math.max(firstPoint.value!.dy, secondPoint.value!.dy),
      );

      return Rect.fromPoints(topLeft, bottomRight);
    }

    final leftTimer = useRef<Timer?>(null);
    final rightTimer = useRef<Timer?>(null);
    final topTimer = useRef<Timer?>(null);
    final bottomTimer = useRef<Timer?>(null);
    useEffect(
      () => () {
        leftTimer.value?.cancel();
        rightTimer.value?.cancel();
        topTimer.value?.cancel();
        bottomTimer.value?.cancel();
      },
      [],
    );
    final doneOnSelectionStart = useRef(false);

    return LayoutBuilder(
      builder: (context, constraints) => Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              supportedDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              },
              onPanStart: (details) async {
                onGrab.value = true;
                firstPoint.value = details.localPosition;
                secondPoint.value = details.localPosition;
                doneOnSelectionStart.value = false;
                await onSelectionStart();
                doneOnSelectionStart.value = true;
              },
              onPanUpdate: (details) async {
                if (!doneOnSelectionStart.value) return;

                secondPoint.value = secondPoint.value! + details.delta;

                final factor = 2.0;

                // Left overflow scroll
                if (secondPoint.value!.dx < 0) {
                  if (leftTimer.value == null) {
                    leftTimer.value = Timer.periodic(
                      Duration(milliseconds: 8),
                      (timer) {
                        if (firstPoint.value == null) {
                          timer.cancel();
                          leftTimer.value = null;
                          return;
                        }
                        firstPoint.value =
                            firstPoint.value!.translate(factor, 0);
                        horizontalDetails.controller!.jumpTo(
                          horizontalDetails.controller!.offset - factor,
                        );
                      },
                    );
                  }
                } else {
                  leftTimer.value?.cancel();
                  leftTimer.value = null;
                }

                // Right overflow scroll
                if (secondPoint.value!.dx > constraints.maxWidth) {
                  if (rightTimer.value == null) {
                    rightTimer.value = Timer.periodic(
                      Duration(milliseconds: 8),
                      (timer) {
                        if (firstPoint.value == null) {
                          timer.cancel();
                          rightTimer.value = null;
                          return;
                        }
                        firstPoint.value =
                            firstPoint.value!.translate(-factor, 0);
                        horizontalDetails.controller!.jumpTo(
                          horizontalDetails.controller!.offset + factor,
                        );
                      },
                    );
                  }
                } else {
                  rightTimer.value?.cancel();
                  rightTimer.value = null;
                }

                // Top overflow scroll
                if (secondPoint.value!.dy < 0) {
                  if (topTimer.value == null) {
                    topTimer.value = Timer.periodic(
                      Duration(milliseconds: 8),
                      (timer) {
                        if (firstPoint.value == null) {
                          timer.cancel();
                          topTimer.value = null;
                          return;
                        }
                        firstPoint.value =
                            firstPoint.value!.translate(0, factor);
                        verticalDetails.controller!.jumpTo(
                          verticalDetails.controller!.offset - factor,
                        );
                      },
                    );
                  }
                } else {
                  topTimer.value?.cancel();
                  topTimer.value = null;
                }

                // Bottom overflow scroll
                if (secondPoint.value!.dy > constraints.maxHeight) {
                  if (bottomTimer.value == null) {
                    bottomTimer.value = Timer.periodic(
                      Duration(milliseconds: 8),
                      (timer) {
                        if (firstPoint.value == null) {
                          timer.cancel();
                          bottomTimer.value = null;
                          return;
                        }
                        firstPoint.value =
                            firstPoint.value!.translate(0, -factor);
                        verticalDetails.controller!.jumpTo(
                          verticalDetails.controller!.offset + factor,
                        );
                      },
                    );
                  }
                } else {
                  bottomTimer.value?.cancel();
                  bottomTimer.value = null;
                }

                await onSelection(getRect()!);
              },
              onPanEnd: (details) {
                onGrab.value = false;
                firstPoint.value = null;
                secondPoint.value = null;
              },
              onPanCancel: () {
                onGrab.value = false;
                firstPoint.value = null;
                secondPoint.value = null;
              },
              child: ColoredBox(
                color: Colors.transparent,
                child: MouseRegion(
                  cursor: switch (cursorMode.value) {
                    CursorMode.move => SystemMouseCursors.basic,
                    CursorMode.handTool => switch (onGrab.value) {
                        true => SystemMouseCursors.grabbing,
                        false => SystemMouseCursors.grab,
                      },
                  },
                  child: whiteboardBuilder(
                    cursorMode.value == CursorMode.move,
                    cursorMode.value == CursorMode.handTool,
                    onGrab,
                  ),
                ),
              ),
            ),
          ),
          if (getRect() case final rect?)
            Positioned.fromRect(
              rect: rect,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorVariant.blue.resolve(context).withOpacity(
                          OpacityVariant.blend.resolve(context).value,
                        ),
                  ),
                  color: ColorVariant.blue.resolve(context).withOpacity(
                        OpacityVariant.hightlight.resolve(context).value,
                      ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
