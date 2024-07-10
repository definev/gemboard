import 'package:design_system/design_system.dart';
import 'package:flutter/widgets.dart';

class ResizableFlex extends StatefulWidget {
  const ResizableFlex({
    super.key,
    required this.direction,
    required this.firstChild,
    this.secondChild,
    this.initialSize,
  });

  final Axis direction;
  final Widget firstChild;
  final Widget? secondChild;
  final double? initialSize;

  @override
  State<ResizableFlex> createState() => _ResizableFlexState();
}

class _ResizableFlexState extends State<ResizableFlex> {
  late double size = widget.initialSize ?? 100.0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final totalSize = widget.direction == Axis.horizontal
            ? constraints.maxWidth
            : constraints.maxHeight;

        return Flex(
          direction: widget.direction,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: switch (widget.direction) {
                Axis.vertical => size,
                Axis.horizontal => double.maxFinite,
              },
              width: switch (widget.direction) {
                Axis.horizontal => size,
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

                    size = size + deltaAxis;
                    setState(() {});
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
