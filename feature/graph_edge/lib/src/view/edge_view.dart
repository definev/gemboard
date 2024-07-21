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

  @override
  void paint(Canvas canvas, Size size) {
    final (normalizedSource, normalizedTarget) = normalizeRects(size);

    canvas.drawPath(
      Path()
        ..moveTo(normalizedSource.center.dx, normalizedSource.center.dy)
        ..lineTo(normalizedTarget.center.dx, normalizedTarget.center.dy),
      Paint() //
        ..color = ColorVariant.onSurface
            .resolve(context)
            .withOpacity(OpacityVariant.hightlight.resolve(context).value)
        ..strokeWidth = 10
        ..style = PaintingStyle.stroke,
    );
  }

  @override
  bool shouldRepaint(covariant EdgeVisual oldDelegate) {
    return false;
  }
}
