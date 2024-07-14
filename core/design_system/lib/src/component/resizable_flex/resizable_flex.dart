import 'dart:math' as math;

import 'package:design_system/design_system.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconly/iconly.dart';
import 'package:mix/mix.dart';

class ResizableController extends ChangeNotifier {
  ResizableController({this.initialSize = 100});

  final double initialSize;

  late double _panelSize = initialSize;
  double get panelSize => _panelSize;
  set panelSize(double value) {
    _lastPanelSize = _panelSize;
    _panelSize = value;
    notifyListeners();
  }

  double _lastPanelSize = 0;
  void hide() {
    panelSize = 0;
  }

  void show() {
    panelSize = _lastPanelSize;
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

    return LayoutBuilder(
      builder: (context, constraints) {
        final totalSize = (widget.direction == Axis.horizontal
            ? constraints.maxWidth
            : constraints.maxHeight) - gapSize;

        final firstChild = SizedBox(
          height: switch (widget.direction) {
            Axis.vertical => math.min(controller.panelSize, totalSize),
            Axis.horizontal => double.maxFinite,
          },
          width: switch (widget.direction) {
            Axis.horizontal => math.min(controller.panelSize, totalSize),
            Axis.vertical => double.maxFinite,
          },
          child: widget.firstChild,
        );
        return Flex(
          direction: widget.direction,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (totalSize - controller.panelSize < gapSize)
              SizedBox(
                height: switch (widget.direction) {
                  Axis.vertical => math.min(controller.panelSize, totalSize),
                  Axis.horizontal => double.maxFinite,
                },
                width: switch (widget.direction) {
                  Axis.horizontal => math.min(controller.panelSize, totalSize),
                  Axis.vertical => double.maxFinite,
                },
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: firstChild,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SafeArea(
                        child: Button(
                          style: Style(
                            $box.height(40),
                            $box.width(40),
                            $box.margin.all.ref(SpaceVariant.small),
                          ),
                          kind: ButtonKind.outline,
                          background: ColorVariant.onSurface,
                          onPressed: () => controller.panelSize =
                              widget.minSize ?? widget.initialSize ?? 100,
                          child: StyledIcon(IconlyLight.arrow_left_circle),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            else
              firstChild,
            if (widget.secondChild != null) ...[
              MouseRegion(
                cursor: switch (widget.direction) {
                  Axis.horizontal => SystemMouseCursors.resizeLeftRight,
                  Axis.vertical => SystemMouseCursors.resizeUpDown,
                },
                child: GestureDetector(
                  onPanUpdate: (details) {
                    final deltaAxis = switch (widget.direction) {
                      Axis.horizontal => details.delta.dx,
                      Axis.vertical => details.delta.dy,
                    };

                    final newSize = controller.panelSize + deltaAxis;

                    if (newSize < (widget.minSize ?? 0)) return;
                    if (newSize > totalSize) return;

                    controller.panelSize = newSize;
                  },
                  onDoubleTap: () {
                    switch (controller.panelSize) {
                      case 0:
                        controller.show();
                      default:
                        controller.hide();
                    }
                  },
                  child: ColoredBox(
                    color: ColorVariant.outline.resolve(context).withOpacity(
                          OpacityVariant.hightlight.resolve(context).value,
                        ),
                    child: SizedBox.square(dimension: gapSize),
                  ),
                ),
              ),
              if (controller.panelSize <= 0)
                Expanded(
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: widget.secondChild!,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SafeArea(
                          child: Button(
                            style: Style(
                              $box.height(40),
                              $box.width(40),
                              $box.margin.all.ref(SpaceVariant.small),
                            ),
                            kind: ButtonKind.outline,
                            background: ColorVariant.onSurface,
                            onPressed: () => controller.show(),
                            child: StyledIcon(IconlyLight.arrow_right_circle),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              else
                Expanded(
                  child: widget.secondChild!,
                ),
            ],
          ],
        );
      },
    );
  }
}
