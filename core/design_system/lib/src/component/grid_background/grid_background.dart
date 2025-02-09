import 'package:design_system/design_system.dart';
import 'package:design_system/resources/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_shaders/flutter_shaders.dart';

class GridBackground extends StatelessWidget {
  const GridBackground({
    super.key,
    required this.topLeft,
    required this.scale,
    this.dimension = 50,
    this.dotSize = 2,
  });

  static TwoDimensionalViewportBuilder backgroundBuilder({
    required double scale,
    double dimension = 100,
    double dotSize = 5,
  }) {
    return (
      BuildContext context,
      ViewportOffset verticalPosition,
      ViewportOffset horizontalPosition,
    ) {
      var topLeft = Offset(
        horizontalPosition.pixels,
        verticalPosition.pixels,
      );

      return GridBackground(
        topLeft: topLeft,
        scale: scale,
        dimension: dimension,
        dotSize: dotSize,
      );
    };
  }

  final Offset topLeft;
  final double scale;
  final double dimension;
  final double dotSize;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: ShaderBuilder(
        assetKey: designSystemAssetPath('assets/shaders/grid_background.frag'),
        (context, shader, child) {
          return AnimatedSampler(
            (image, size, canvas) {
              shader.setFloatUniforms((uniforms) {
                uniforms //
                  // topLeft
                  ..setOffset(topLeft)
                  // dimension
                  ..setFloat(dimension * scale)
                  // dotSize
                  ..setFloat(dotSize * scale)
                  // background
                  ..setColor(ColorVariant.background.resolve(context))
                  // onBackground
                  ..setColor(
                    Color.lerp(ColorVariant.background.resolve(context),
                        ColorVariant.onBackground.resolve(context), 0.07)!,
                  );
              });
      
              canvas.drawRect(
                Offset.zero & size,
                Paint()..shader = shader,
              );
            },
            child: child!,
          );
        },
        child: SizedBox.expand(),
      ),
    );
  }
}

class GridBackgroundPainter extends CustomPainter {
  const GridBackgroundPainter({
    super.repaint,
    required this.context,
    required this.topLeft,
    required this.scale,
    required this.dimension,
  });

  final BuildContext context;
  final Offset topLeft;
  final double scale;
  final double dimension;

  @override
  void paint(Canvas canvas, Size size) {
    var dimension = this.dimension * scale;

    final paint = Paint()
      ..color = Colors.grey.withValues(alpha:0.2)
      ..strokeWidth = 1;

    final width = size.width;
    final height = size.height;

    final offsetX = topLeft.dx % dimension;
    final offsetY = topLeft.dy % dimension;

    for (var x = 0; x < width / dimension; x++) {
      final dx = x * dimension - offsetX;
      canvas.drawLine(
        Offset(dx, 0),
        Offset(dx, height),
        paint,
      );
    }

    for (var y = 0; y < height / dimension; y++) {
      final dy = y * dimension - offsetY;
      canvas.drawLine(
        Offset(0, dy),
        Offset(width, dy),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(GridBackgroundPainter oldDelegate) {
    return oldDelegate.topLeft != topLeft ||
        oldDelegate.scale != scale ||
        oldDelegate.dimension != dimension;
  }
}
