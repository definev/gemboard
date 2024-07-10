import 'dart:math' as math;

import 'package:design_system/design_system.dart';
import 'package:flutter/widgets.dart';

class ResizableController extends ChangeNotifier {
  ResizableController({this.initialSize = 100});

  final double initialSize;

  late double _panelSize = initialSize;
  double get panelSize => _panelSize;
  set panelSize(double value) {
    _panelSize = value;
    notifyListeners();
  }

  double? _prevPanelSize;

  void hide() {
    _prevPanelSize = _panelSize;
    _panelSize = 0.0;
    notifyListeners();
  }

  void show() {
    _panelSize = _prevPanelSize ?? initialSize;
    notifyListeners();
  }
}

class ResizableFlex extends StatefulWidget {
  const ResizableFlex({
    super.key,
    required this.direction,
    required this.firstChild,
    this.secondChild,
    this.initialSize,
    this.controller,
  });

  final Axis direction;
  final Widget firstChild;
  final Widget? secondChild;
  final double? initialSize;
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
    return LayoutBuilder(
      builder: (context, constraints) {
        final totalSize = widget.direction == Axis.horizontal
            ? constraints.maxWidth
            : constraints.maxHeight;

        if (totalSize < controller._panelSize) {
          controller._panelSize = totalSize - 1;
        }

        return Flex(
          direction: widget.direction,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: switch (widget.direction) {
                Axis.vertical => math.min(controller.panelSize, totalSize),
                Axis.horizontal => double.maxFinite,
              },
              width: switch (widget.direction) {
                Axis.horizontal => math.min(controller.panelSize, totalSize),
                Axis.vertical => double.maxFinite,
              },
              child: widget.firstChild,
            ),
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

                    if (newSize < 0) return;
                    if (newSize > totalSize - 1) return;

                    controller.panelSize = newSize;
                  },
                  child: ColoredBox(
                    color: ColorVariant.background.resolve(context),
                    child: SizedBox.square(dimension: 1),
                  ),
                ),
              ),
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
