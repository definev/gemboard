import 'dart:async';
import 'dart:math' as math;
import 'dart:ui';

import 'package:design_system/design_system.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:whiteboard/src/domain/data/cursor_mode.dart';

class WhiteboardCursorTool extends HookWidget {
  const WhiteboardCursorTool({
    super.key,
    required this.cursorMode,
    required this.whiteboardBuilder,
    required this.horizontalDetails,
    required this.verticalDetails,
    required this.onDoubleTap,
    required this.onSelection,
  });

  final ValueNotifier<CursorMode> cursorMode;
  final ScrollableDetails horizontalDetails;
  final ScrollableDetails verticalDetails;

  final Widget Function(
    bool enableMoveByMouse,
    bool enableMoveByTouch,
    bool enableMoveByStylus,
    ValueNotifier<bool> onGrab,
  ) whiteboardBuilder;

  final Future<void> Function() onDoubleTap;
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
      builder: (context, constraints) {
        void onPanStart(DragStartDetails details) {
          onGrab.value = true;
          firstPoint.value = details.localPosition;
          secondPoint.value = details.localPosition;
          doneOnSelectionStart.value = false;
          doneOnSelectionStart.value = true;
        }

        void onPanUpdate(DragUpdateDetails details) async {
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
                  firstPoint.value = firstPoint.value!.translate(factor, 0);
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
                  firstPoint.value = firstPoint.value!.translate(-factor, 0);
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
                  firstPoint.value = firstPoint.value!.translate(0, factor);
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
                  firstPoint.value = firstPoint.value!.translate(0, -factor);
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
        }

        void onPanEnd(DragEndDetails details) {
          onGrab.value = false;
          firstPoint.value = null;
          secondPoint.value = null;
        }

        void onScaleStart(ScaleStartDetails details) {
          onGrab.value = true;
          firstPoint.value = details.localFocalPoint;
          secondPoint.value = details.localFocalPoint;
          doneOnSelectionStart.value = false;
          doneOnSelectionStart.value = true;
        }

        void onScaleUpdate(ScaleUpdateDetails details) async {
          if (!doneOnSelectionStart.value) return;

          secondPoint.value = secondPoint.value! + details.focalPointDelta;

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
                  firstPoint.value = firstPoint.value!.translate(factor, 0);
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
                  firstPoint.value = firstPoint.value!.translate(-factor, 0);
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
                  firstPoint.value = firstPoint.value!.translate(0, factor);
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
                  firstPoint.value = firstPoint.value!.translate(0, -factor);
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
        }

        void onScaleEnd(ScaleEndDetails details) {
          onGrab.value = false;
          firstPoint.value = null;
          secondPoint.value = null;
        }

        return Stack(
          children: [
            Positioned.fill(
              child: GestureDetector(
                supportedDevices: {
                  ...PointerDeviceKind.values,
                }
                  ..remove(PointerDeviceKind.trackpad)
                  ..removeAll([
                    if (cursorMode.value == CursorMode.selectionTool)
                      PointerDeviceKind.stylus,
                    if (cursorMode.value == CursorMode.handTool)
                      PointerDeviceKind.mouse,
                  ]),
                onDoubleTap: onDoubleTap,
                onScaleStart: switch (defaultTargetPlatform) {
                  TargetPlatform.macOS ||
                  TargetPlatform.linux ||
                  TargetPlatform.windows =>
                    null,
                  _ => onScaleStart,
                },
                onScaleUpdate: switch (defaultTargetPlatform) {
                  TargetPlatform.macOS ||
                  TargetPlatform.linux ||
                  TargetPlatform.windows =>
                    null,
                  _ => onScaleUpdate,
                },
                onScaleEnd: switch (defaultTargetPlatform) {
                  TargetPlatform.macOS ||
                  TargetPlatform.linux ||
                  TargetPlatform.windows =>
                    null,
                  _ => onScaleEnd,
                },

                /// On pan
                onPanStart: switch (defaultTargetPlatform) {
                  TargetPlatform.macOS ||
                  TargetPlatform.linux ||
                  TargetPlatform.windows =>
                    onPanStart,
                  _ => null,
                },
                onPanUpdate: switch (defaultTargetPlatform) {
                  TargetPlatform.macOS ||
                  TargetPlatform.linux ||
                  TargetPlatform.windows =>
                    onPanUpdate,
                  _ => null,
                },
                onPanEnd: switch (defaultTargetPlatform) {
                  TargetPlatform.macOS ||
                  TargetPlatform.linux ||
                  TargetPlatform.windows =>
                    onPanEnd,
                  _ => null,
                },
                // onPanCancel: () {
                //   onGrab.value = false;
                //   firstPoint.value = null;
                //   secondPoint.value = null;
                // },
                child: ColoredBox(
                  color: Colors.transparent,
                  child: MouseRegion(
                    cursor: switch (cursorMode.value) {
                      CursorMode.selectionTool => SystemMouseCursors.basic,
                      CursorMode.handTool => switch (onGrab.value) {
                          true => SystemMouseCursors.grabbing,
                          false => SystemMouseCursors.grab,
                        },
                    },
                    child: whiteboardBuilder(
                      cursorMode.value == CursorMode.handTool,
                      cursorMode.value == CursorMode.handTool,
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
        );
      },
    );
  }
}
