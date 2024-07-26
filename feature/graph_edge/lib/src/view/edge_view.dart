import 'dart:math';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graph_edge/src/domain/model/edge.dart';

class EdgeView extends HookWidget {
  const EdgeView({
    super.key,
    required this.data,
    required this.source,
    required this.target,
  });

  final Edge data;
  final Rect source;
  final Rect target;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: EdgeVisual(
        context: context,
        source: source,
        target: target,
      ),
    );
  }
}

class EdgeVisual extends CustomPainter {
  EdgeVisual({
    super.repaint,
    required this.context,
    required this.source,
    required this.target,
  });

  final BuildContext context;
  final Rect source;
  final Rect target;

  (Rect normalizedSource, Rect normalizedTarget) normalizeRects(Size size) {
    final topLeft = -Offset(
      min(source.left, target.left),
      min(source.top, target.top),
    );

    var normalizedSource = source.translate(topLeft.dx, topLeft.dy);
    var normalizedTarget = target.translate(topLeft.dx, topLeft.dy);

    return (normalizedSource, normalizedTarget);
  }

  /// if index is even, the point is either top or bottom
  /// if index is odd, the point is either left or right
  (Offset offset, int index) calculateShortestPoint(
      Rect normalizedSource, Rect normalizedTarget) {
    final pointFromSource = [
      normalizedSource.centerLeft,
      normalizedSource.topCenter,
      normalizedSource.centerRight,
      normalizedSource.bottomCenter,
    ];

    var shortestPointFromSource = Offset(double.infinity, double.infinity);
    var distance = double.infinity;
    int shortestIndex = 0;
    for (final (index, point) in pointFromSource.indexed) {
      final d = (normalizedTarget.center - point).distance;
      if (d < distance) {
        distance = d;
        shortestPointFromSource = point;
        shortestIndex = index;
      }
    }

    return (shortestPointFromSource, shortestIndex);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final mediumSpace = SpaceVariant.medium.resolve(context);

    final (normalizedSource, normalizedTarget) = normalizeRects(size);

    var (shortestPointFromSource, shortestPointFromSourceIndex) =
        calculateShortestPoint(normalizedSource, normalizedTarget);
    var (shortestPointFromTarget, shortestPointFromTargetIndex) =
        calculateShortestPoint(normalizedTarget, normalizedSource);

    switch ((shortestPointFromSourceIndex, shortestPointFromTargetIndex)) {
      case (3, 0):
        shortestPointFromSource = Offset(
          shortestPointFromSource.dx,
          shortestPointFromSource.dy + mediumSpace,
        );
        shortestPointFromTarget = Offset(
          shortestPointFromTarget.dx - mediumSpace,
          shortestPointFromTarget.dy,
        );
      case (1, 0):
        shortestPointFromSource = Offset(
          shortestPointFromSource.dx,
          shortestPointFromSource.dy - mediumSpace,
        );
        shortestPointFromTarget = Offset(
          shortestPointFromTarget.dx - mediumSpace,
          shortestPointFromTarget.dy,
        );
      case (1, 2):
        shortestPointFromSource = Offset(
          shortestPointFromSource.dx,
          shortestPointFromSource.dy - mediumSpace,
        );
        shortestPointFromTarget = Offset(
          shortestPointFromTarget.dx + mediumSpace,
          shortestPointFromTarget.dy,
        );
      case (3, 2):
        shortestPointFromSource = Offset(
          shortestPointFromSource.dx,
          shortestPointFromSource.dy + mediumSpace,
        );
        shortestPointFromTarget = Offset(
          shortestPointFromTarget.dx + mediumSpace,
          shortestPointFromTarget.dy,
        );
      case (2, 3):
        shortestPointFromSource = Offset(
          shortestPointFromSource.dx + mediumSpace,
          shortestPointFromSource.dy,
        );
        shortestPointFromTarget = Offset(
          shortestPointFromTarget.dx,
          shortestPointFromTarget.dy + mediumSpace,
        );
      case (0, 1):
        shortestPointFromSource = Offset(
          shortestPointFromSource.dx - mediumSpace,
          shortestPointFromSource.dy,
        );
        shortestPointFromTarget = Offset(
          shortestPointFromTarget.dx,
          shortestPointFromTarget.dy - mediumSpace,
        );
      case (0, 2):
        shortestPointFromSource = Offset(
          shortestPointFromSource.dx - mediumSpace,
          shortestPointFromSource.dy,
        );
        shortestPointFromTarget = Offset(
          shortestPointFromTarget.dx + mediumSpace,
          shortestPointFromTarget.dy,
        );
      case (2, 0):
        shortestPointFromSource = Offset(
          shortestPointFromSource.dx + mediumSpace,
          shortestPointFromSource.dy,
        );
        shortestPointFromTarget = Offset(
          shortestPointFromTarget.dx - mediumSpace,
          shortestPointFromTarget.dy,
        );

      ///
      case (2, 1):
        shortestPointFromSource = Offset(
          shortestPointFromSource.dx + mediumSpace,
          shortestPointFromSource.dy,
        );
        shortestPointFromTarget = Offset(
          shortestPointFromTarget.dx,
          shortestPointFromTarget.dy - mediumSpace,
        );
      case (3, 1):
        shortestPointFromSource = Offset(
          shortestPointFromSource.dx,
          shortestPointFromSource.dy + mediumSpace,
        );
        shortestPointFromTarget = Offset(
          shortestPointFromTarget.dx,
          shortestPointFromTarget.dy - mediumSpace,
        );
      case (3, 0):
        shortestPointFromSource = Offset(
          shortestPointFromSource.dx - mediumSpace,
          shortestPointFromSource.dy,
        );
        shortestPointFromTarget = Offset(
          shortestPointFromTarget.dx + mediumSpace,
          shortestPointFromTarget.dy,
        );
      case (1, 3):
        shortestPointFromSource = Offset(
          shortestPointFromSource.dx,
          shortestPointFromSource.dy - mediumSpace,
        );
        shortestPointFromTarget = Offset(
          shortestPointFromTarget.dx,
          shortestPointFromTarget.dy + mediumSpace,
        );
      case (0, 3):
        shortestPointFromSource = Offset(
          shortestPointFromSource.dx - mediumSpace,
          shortestPointFromSource.dy,
        );
        shortestPointFromTarget = Offset(
          shortestPointFromTarget.dx,
          shortestPointFromTarget.dy + mediumSpace,
        );
    }

    final shortestRect =
        Rect.fromPoints(shortestPointFromSource, shortestPointFromTarget);

    double cubicControlPointDxC1(double base) =>
        switch ((shortestPointFromSourceIndex, shortestPointFromTargetIndex)) {
          /// left - right
          (0, 0) => 0,
          (2, 2) => 0,
          (0, 2) => -base / 2,
          (2, 0) => base / 2,

          /// top - bottom
          (1, 1) => 0,
          (3, 3) => 0,
          (1, 3) => 0,
          (3, 1) => 0,

          ///
          (2, 1) => base,
          (1, 2) => 0,

          ///
          (0, 3) => -base,
          (3, 0) => 0,

          ///
          (0, 1) => -base,
          (1, 0) => 0,

          ///
          (2, 3) => base,

          ///
          (3, 2) => 0,
          _ => 0,
        };
    double cubicControlPointDyC1(double base) =>
        switch ((shortestPointFromSourceIndex, shortestPointFromTargetIndex)) {
          /// left - right
          (0, 0) => 0,
          (2, 2) => 0,
          (0, 2) => 0,
          (2, 0) => 0,

          /// top - bottom
          (1, 1) => 0,
          (3, 3) => 0,
          (1, 3) => -base / 2,
          (3, 1) => base / 2,

          ///
          (2, 1) => 0,
          (1, 2) => -base,

          ///
          (0, 3) => 0,
          (3, 0) => base,

          ///
          (0, 1) => 0,
          (1, 0) => -base,

          ///
          (2, 3) => 0,
          (3, 2) => base,
          _ => 0,
        };

    double cubicControlPointDxC2(double base) =>
        switch ((shortestPointFromSourceIndex, shortestPointFromTargetIndex)) {
          /// left - right
          (0, 0) => 0,
          (2, 2) => 0,
          (0, 2) => base / 2,
          (2, 0) => -base / 2,

          /// top - bottom
          (1, 1) => 0,
          (3, 3) => 0,
          (1, 3) => 0,
          (3, 1) => 0,

          ///
          (2, 1) => 0,
          (1, 2) => base,

          ///
          (0, 3) => 0,
          (3, 0) => -base,

          ///
          (0, 1) => 0,
          (1, 0) => -base,

          ///
          (2, 3) => 0,

          ///
          (3, 2) => base,
          _ => 0,
        };
    double cubicControlPointDyC2(double base) =>
        switch ((shortestPointFromSourceIndex, shortestPointFromTargetIndex)) {
          /// left - right
          (0, 0) => 0,
          (2, 2) => 0,
          (0, 2) => 0,
          (2, 0) => 0,

          /// top - bottom
          (1, 1) => 0,
          (3, 3) => 0,
          (1, 3) => base / 2,
          (3, 1) => -base / 2,

          ///
          (2, 1) => -base,
          (1, 2) => 0,

          ///
          (0, 3) => base,
          (3, 0) => 0,

          ///
          (0, 1) => -base,
          (1, 0) => 0,

          ///
          (2, 3) => base,

          ///
          (3, 2) => 0,
          _ => 0,
        };

    final strokeWidth = SpaceVariant.gap.resolve(context);

    canvas.drawPath(
      Path()
        ..moveTo(shortestPointFromSource.dx, shortestPointFromSource.dy)
        ..cubicTo(
          shortestPointFromSource.dx +
              cubicControlPointDxC1(shortestRect.width),
          shortestPointFromSource.dy +
              cubicControlPointDyC1(shortestRect.height),
          shortestPointFromTarget.dx +
              cubicControlPointDxC2(shortestRect.width),
          shortestPointFromTarget.dy +
              cubicControlPointDyC2(shortestRect.height),
          shortestPointFromTarget.dx,
          shortestPointFromTarget.dy,
        ),
      Paint() //
        ..color = ColorVariant.outline.resolve(context)
        ..strokeWidth = strokeWidth
        ..style = PaintingStyle.stroke,
    );

    /// Draw an arrow at target
    drawArrow(
      canvas,
      ColorVariant.outline.resolve(context),
      arrowSize: strokeWidth * 2,
      target: shortestPointFromTarget +
          switch (shortestPointFromTargetIndex) {
            0 => Offset(strokeWidth, 0),
            1 => Offset(0, strokeWidth),
            2 => Offset(-strokeWidth, 0),
            3 => Offset(0, -strokeWidth),
            _ => Offset.zero,
          },
      angle: switch (shortestPointFromTargetIndex) {
        0 => 0,
        1 => pi / 2,
        2 => pi,
        3 => -pi / 2,
        _ => 0,
      },
    );
  }

  void drawArrow(
    Canvas canvas,
    Color color, {
    required Offset target,
    required double angle,
    required double arrowSize,
  }) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;

    arrowSize *= 1.5;

    const arrowAngle = pi / 6;

    final path = Path();

    path.moveTo(target.dx - arrowSize * cos(angle - arrowAngle),
        target.dy - arrowSize * sin(angle - arrowAngle));
    path.lineTo(target.dx, target.dy);
    path.lineTo(target.dx - arrowSize * cos(angle + arrowAngle),
        target.dy - arrowSize * sin(angle + arrowAngle));
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant EdgeVisual oldDelegate) {
    return false;
  }
}

class EdgeTempVisual extends CustomPainter {
  const EdgeTempVisual({
    required this.context,
    required this.start,
    required this.end,
    required this.scaleFactor,
  });

  final BuildContext context;

  final double scaleFactor;

  final Offset start;
  final Offset end;

  @override
  void paint(Canvas canvas, Size size) {
    final strokeWidth = SpaceVariant.gap.resolve(context) * scaleFactor;
    final rect = Rect.fromPoints(start, end);

    canvas.drawPath(
      Path()
        ..moveTo(start.dx, start.dy)
        ..cubicTo(
          start.dx + rect.width / 2,
          start.dy,
          end.dx - rect.width / 2,
          end.dy,
          end.dx,
          end.dy,
        ),
      Paint()
        ..color = ColorVariant.outline.resolve(context)
        ..strokeWidth = strokeWidth
        ..style = PaintingStyle.stroke,
    );
  }

  @override
  bool shouldRepaint(covariant EdgeTempVisual oldDelegate) {
    if (oldDelegate.start != start) return true;
    if (oldDelegate.end != end) return true;
    return false;
  }
}
