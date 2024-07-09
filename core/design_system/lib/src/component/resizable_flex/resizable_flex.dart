import 'package:design_system/design_system.dart';
import 'package:flutter/widgets.dart';

class ResizableFlex extends StatefulWidget {
  const ResizableFlex({
    super.key,
    required this.direction,
    required this.firstChild,
    this.secondChild,
    this.fraction = 1000,
  });

  final Axis direction;
  final Widget firstChild;
  final Widget? secondChild;
  final int fraction;

  @override
  State<ResizableFlex> createState() => _ResizableFlexState();
}

class _ResizableFlexState extends State<ResizableFlex> {
  late int firstFraction = widget.fraction;
  late int secondFraction = widget.fraction;
  int get totalFraction => firstFraction + secondFraction;

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
            Expanded(
              flex: firstFraction,
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
                    final resizableFlexRenderBox =
                        context.findRenderObject() as RenderBox;
                    final position = resizableFlexRenderBox
                        .globalToLocal(details.globalPosition);

                    final targetPosition = widget.direction == Axis.horizontal
                        ? position.dx
                        : position.dy;
                    final newFraction =
                        ((targetPosition / totalSize) * totalFraction).toInt();
                    
                    if (newFraction < 5 || newFraction >= totalFraction - 5) return;

                    firstFraction = newFraction;
                    secondFraction = totalFraction - newFraction;
                    setState(() {});
                  },
                  child: ColoredBox(
                    color: ColorVariant.background.resolve(context),
                    child: SizedBox.square(dimension: 1),
                  ),
                ),
              ),
              Expanded(
                flex: secondFraction,
                child: widget.secondChild!,
              ),
            ],
          ],
        );
      },
    );
  }
}
