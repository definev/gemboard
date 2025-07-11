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

  void hide() {
    shown = false;
    notifyListeners();
  }

  void show() {
    shown = true;
    notifyListeners();
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
    this.controller,
  });

  final Axis direction;
  final Widget firstChild;
  final Widget? secondChild;
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

        const duration = Duration(milliseconds: 300);
        final tween = Tween<double>(
          begin: switch (controller.shown) { false => 0, true => 1 },
          end: switch (controller.shown) { false => 0, true => 1 },
        );
        final curve = Curves.easeOutCirc;

        return switch (totalSize) {
          final totalSize when totalSize < mobileBreakpoint =>
            TweenAnimationBuilder(
              duration: duration,
              tween: tween,
              curve: curve,
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
                                      .withValues(alpha:OpacityVariant.hightlight
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
              duration: duration,
              tween: tween,
              curve: curve,
              builder: (context, value, child) {
                final firstChild = widget.firstChild;
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
                                      .withValues(alpha:OpacityVariant.hightlight
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
                      left: -300 + value * 300,
                      height: constraints.maxHeight,
                      width: 300,
                      child: firstChild,
                    ),
                    Positioned(
                      left: value * (300 - 48),
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
              duration: duration,
              tween: tween,
              curve: curve,
              builder: (context, value, child) => Stack(
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
                                    .withValues(alpha:OpacityVariant.hightlight
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
                    left: -300 + value * 300,
                    height: constraints.maxHeight,
                    width: 300,
                    child: widget.firstChild,
                  ),
                  Positioned(
                    left: value * (300 - 48),
                    child: SafeArea(
                      bottom: false,
                      child: expandButton,
                    ),
                  ),
                ],
              ),
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
          //                   .withValues(alpha:
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
