import 'package:design_system/design_system.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

class ResizableController extends ChangeNotifier {
  ResizableController({
    this.initialSize = 100,
    this.shown = true,
  });

  final double initialSize;
  bool shown = true;

  late double _panelSize = initialSize;
  double get panelSize => _panelSize;
  set panelSize(double value) {
    _lastPanelSize = _panelSize;
    _panelSize = value;
    if (_panelSize < 0) _panelSize = 0;
    if (_panelSize > 0) {
      shown = true;
    } else {
      shown = false;
    }
    notifyListeners();
  }

  double _lastPanelSize = 0;
  void hide() {
    panelSize = 0;
    shown = false;
  }

  void show() {
    panelSize = switch (_lastPanelSize) {
      0 => initialSize,
      _ => _lastPanelSize,
    };
    shown = true;
  }

  void toggle() {
    switch (shown) {
      case true:
        hide();
      case false:
        show();
    }
  }
}

class ResizableFlex extends StatefulWidget {
  const ResizableFlex({
    super.key,
    required this.direction,
    required this.firstChild,
    this.secondChild,
    this.initialSize,
    this.minSize = 0,
    this.controller,
  });

  final Axis direction;
  final Widget firstChild;
  final Widget? secondChild;
  final double? initialSize;
  final double? minSize;
  final ResizableController? controller;

  @override
  State<ResizableFlex> createState() => _ResizableFlexState();
}

class _ResizableFlexState extends State<ResizableFlex> {
  late ResizableController controller;

  void onResizeControllerNotify() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    controller = widget.controller ?? ResizableController();
    controller._panelSize = widget.initialSize ?? 100;
    controller.addListener(onResizeControllerNotify);
  }

  @override
  void dispose() {
    super.dispose();
    controller.removeListener(onResizeControllerNotify);
  }

  @override
  void didUpdateWidget(covariant ResizableFlex oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.controller == null && oldWidget.controller != null) {
      controller.removeListener(onResizeControllerNotify);
      controller = ResizableController();
      controller.addListener(onResizeControllerNotify);
    }

    if (widget.controller != null && widget.controller != controller) {
      controller.removeListener(onResizeControllerNotify);
      controller = widget.controller!;
      controller.addListener(onResizeControllerNotify);
    }

    if (widget.initialSize != oldWidget.initialSize) {
      controller.panelSize = widget.initialSize ?? controller.initialSize;
    }
  }

  @override
  Widget build(BuildContext context) {
    final gapSize = switch (defaultTargetPlatform) {
      TargetPlatform.macOS ||
      TargetPlatform.linux ||
      TargetPlatform.windows =>
        1.0,
      TargetPlatform.android ||
      TargetPlatform.iOS ||
      TargetPlatform.fuchsia =>
        8.0,
    };

    final expandButtonSize = 24 +
        SpaceVariant.small.resolve(context) * 2 +
        SpaceVariant.gap.resolve(context) * 2;
    final expandButton = Button(
      style: Style(
        $box.padding.all.ref(SpaceVariant.gap),
        $box.margin.all.ref(SpaceVariant.small),
        $box.borderRadius.all.ref(RadiusVariant.medium),
        $icon.size(24),
      ),
      kind: ButtonKind.flat,
      background: ColorVariant.onSurface,
      onPressed: () => controller.toggle(),
      child: StyledIcon(CupertinoIcons.sidebar_left),
    );

    final mobileBreakpoint = BreakpointToken.small.resolve(context).maxWidth;
    final tabletBreakpoint = BreakpointToken.medium.resolve(context).maxWidth;

    final sidebarActionGesture = GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! > 30) {
          controller.show();
        } else if (details.primaryVelocity! < -30) {
          controller.hide();
        }
      },
      child: ColoredBox(
        color: Colors.transparent,
        child: SizedBox(
          height: double.maxFinite,
          width: 25,
        ),
      ),
    );

    return LayoutBuilder(
      builder: (context, constraints) {
        final totalSize = (widget.direction == Axis.horizontal
                ? constraints.maxWidth
                : constraints.maxHeight) -
            gapSize;

        return switch (totalSize) {
          final totalSize when totalSize < mobileBreakpoint =>
            TweenAnimationBuilder(
              duration: Duration(milliseconds: 500),
              tween: Tween<double>(
                begin: switch (controller.shown) { false => 0, true => 1 },
                end: switch (controller.shown) { false => 0, true => 1 },
              ),
              curve: Curves.easeOutCirc,
              builder: (context, value, child) {
                final firstChild = switch (value == 0) {
                  true => SizedBox(),
                  _ => widget.firstChild,
                };
                return Stack(
                  children: [
                    Positioned.fill(
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: widget.secondChild ?? SizedBox(),
                          ),
                          sidebarActionGesture,
                          Positioned.fill(
                            child: IgnorePointer(
                              ignoring: value == 0,
                              child: GestureDetector(
                                onTap: () => controller.hide(),
                                onHorizontalDragEnd: (details) =>
                                    controller.hide(),
                                child: ColoredBox(
                                  color: ColorVariant.onBackground
                                      .resolve(context)
                                      .withOpacity(OpacityVariant.hightlight
                                              .resolve(context)
                                              .value *
                                          value),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left:
                          -constraints.maxWidth + value * constraints.maxWidth,
                      height: constraints.maxHeight,
                      width: constraints.maxWidth,
                      child: firstChild,
                    ),
                    Positioned(
                      left: value * (constraints.maxWidth - expandButtonSize),
                      child: SafeArea(
                        bottom: false,
                        child: expandButton,
                      ),
                    ),
                  ],
                );
              },
            ),
          final totalSize when totalSize < tabletBreakpoint =>
            TweenAnimationBuilder(
              duration: Duration(milliseconds: 500),
              tween: Tween<double>(
                begin: switch (controller.shown) { false => 0, true => 1 },
                end: switch (controller.shown) { false => 0, true => 1 },
              ),
              curve: Easing.standard,
              builder: (context, value, child) {
                final firstChild = switch (value == 0) {
                  true => SizedBox(),
                  _ => widget.firstChild,
                };
                return Stack(
                  children: [
                    Positioned.fill(
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Padding(
                              padding: EdgeInsets.only(left: 250 * value),
                              child: widget.secondChild ?? SizedBox(),
                            ),
                          ),
                          sidebarActionGesture,
                          Positioned.fill(
                            child: IgnorePointer(
                              ignoring: value == 0,
                              child: GestureDetector(
                                onTap: () => controller.hide(),
                                onHorizontalDragEnd: (details) =>
                                    controller.hide(),
                                child: ColoredBox(
                                  color: ColorVariant.onBackground
                                      .resolve(context)
                                      .withOpacity(OpacityVariant.hightlight
                                              .resolve(context)
                                              .value *
                                          value),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: -250 + value * 250,
                      height: constraints.maxHeight,
                      width: 250,
                      child: firstChild,
                    ),
                    Positioned(
                      left: value * 202,
                      child: SafeArea(
                        bottom: false,
                        child: expandButton,
                      ),
                    ),
                  ],
                );
              },
            ),
          _ => TweenAnimationBuilder(
              duration: Duration(milliseconds: 500),
              tween: Tween<double>(
                begin: switch (controller.shown) { false => 0, true => 1 },
                end: switch (controller.shown) { false => 0, true => 1 },
              ),
              curve: Easing.standard,
              builder: (context, value, child) {
                final firstChild = switch (value == 0) {
                  true => SizedBox(),
                  _ => widget.firstChild,
                };
                return Stack(
                  children: [
                    Positioned.fill(
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: widget.secondChild ?? SizedBox(),
                          ),
                          sidebarActionGesture,
                          Positioned.fill(
                            child: IgnorePointer(
                              ignoring: value == 0,
                              child: GestureDetector(
                                onTap: () => controller.hide(),
                                onHorizontalDragEnd: (details) =>
                                    controller.hide(),
                                child: ColoredBox(
                                  color: ColorVariant.onBackground
                                      .resolve(context)
                                      .withOpacity(OpacityVariant.hightlight
                                              .resolve(context)
                                              .value *
                                          value),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: -250 + value * 250,
                      height: constraints.maxHeight,
                      width: 250,
                      child: firstChild,
                    ),
                    Positioned(
                      left: value * 202,
                      child: SafeArea(
                        bottom: false,
                        child: expandButton,
                      ),
                    ),
                  ],
                );
              },
            ),
          // _ => Flex(
          //     direction: widget.direction,
          //     crossAxisAlignment: CrossAxisAlignment.stretch,
          //     children: [
          //       if (totalSize - controller.panelSize < gapSize)
          //         SizedBox(
          //           height: switch (widget.direction) {
          //             Axis.vertical =>
          //               math.min(controller.panelSize, totalSize),
          //             Axis.horizontal => double.maxFinite,
          //           },
          //           width: switch (widget.direction) {
          //             Axis.horizontal =>
          //               math.min(controller.panelSize, totalSize),
          //             Axis.vertical => double.maxFinite,
          //           },
          //           child: Stack(
          //             children: [
          //               Positioned.fill(
          //                 child: firstChild,
          //               ),
          //               Align(
          //                 alignment: Alignment.centerRight,
          //                 child: SafeArea(
          //                   child: Button(
          //                     style: Style(
          //                       $box.height(40),
          //                       $box.width(40),
          //                       $box.margin.all.ref(SpaceVariant.small),
          //                     ),
          //                     kind: ButtonKind.outline,
          //                     background: ColorVariant.onSurface,
          //                     onPressed: () => controller.panelSize =
          //                         widget.minSize ?? widget.initialSize ?? 100,
          //                     child: StyledIcon(IconlyLight.arrow_left_circle),
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         )
          //       else
          //         firstChild,
          //       if (widget.secondChild != null) ...[
          //         MouseRegion(
          //           cursor: switch (widget.direction) {
          //             Axis.horizontal => SystemMouseCursors.resizeLeftRight,
          //             Axis.vertical => SystemMouseCursors.resizeUpDown,
          //           },
          //           child: GestureDetector(
          //             onPanUpdate: (details) {
          //               final deltaAxis = switch (widget.direction) {
          //                 Axis.horizontal => details.delta.dx,
          //                 Axis.vertical => details.delta.dy,
          //               };

          //               final newSize = controller.panelSize + deltaAxis;

          //               if (newSize < (widget.minSize ?? 0)) return;
          //               if (newSize > totalSize) return;

          //               controller.panelSize = newSize;
          //             },
          //             onDoubleTap: () {
          //               switch (controller.panelSize) {
          //                 case 0:
          //                   controller.show();
          //                 default:
          //                   controller.hide();
          //               }
          //             },
          //             child: ColoredBox(
          //               color: ColorVariant.outline
          //                   .resolve(context)
          //                   .withOpacity(
          //                     OpacityVariant.hightlight.resolve(context).value,
          //                   ),
          //               child: SizedBox.square(dimension: gapSize),
          //             ),
          //           ),
          //         ),
          //         if (controller.panelSize <= 0)
          //           Expanded(
          //             child: Stack(
          //               children: [
          //                 Positioned.fill(
          //                   child: widget.secondChild!,
          //                 ),
          //                 Align(
          //                   alignment: Alignment.topLeft,
          //                   child: SafeArea(
          //                     bottom: false,
          //                     child: expandButton,
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           )
          //         else
          //           Expanded(
          //             child: widget.secondChild!,
          //           ),
          //       ],
          //     ],
          //   ),
        };
      },
    );
  }
}
