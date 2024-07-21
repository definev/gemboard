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

  Rect snappingRect(Rect rect, Rect sizeRect) {
    if (rect.left < 0) {
      rect = rect.translate(-rect.left, 0);
    }
    if (rect.top < 0) {
      rect = rect.translate(0, -rect.top);
    }
    if (rect.right > sizeRect.width) {
      rect = rect.translate(sizeRect.width - rect.right, 0);
    }
    if (rect.bottom > sizeRect.height) {
      rect = rect.translate(0, sizeRect.height - rect.bottom);
    }

    final corners = [
      rect.topLeft,
      rect.topRight,
      rect.bottomRight,
      rect.bottomLeft,
    ];
    final sizeCorners = [
      sizeRect.topLeft,
      sizeRect.topRight,
      sizeRect.bottomRight,
      sizeRect.bottomLeft,
    ];

    double distance = double.infinity;
    Offset diff = Offset.zero;
    for (var index = 0; index < corners.length; index++) {
      final corner = corners[index];
      final sizeCorner = sizeCorners[index];
      final newDiff = sizeCorner - corner;
      final newDistance = newDiff.distanceSquared;
      if (newDistance < distance) {
        distance = newDistance;
        diff = newDiff;
      }
    }

    rect = rect.translate(diff.dx, diff.dy);

    return rect;
  }

  (Rect normalizedSource, Rect normalizedTarget) normalizeRects(Size size) {
    final topLeft = -Offset(
      min(source.left, target.left),
      min(source.top, target.top),
    );
    final sizeRect = Offset.zero & size;

    var normalizedSource = source.translate(topLeft.dx, topLeft.dy);
    var normalizedTarget = target.translate(topLeft.dx, topLeft.dy);


    (normalizedSource, normalizedTarget) = (
      snappingRect(normalizedSource, sizeRect),
      snappingRect(normalizedTarget, sizeRect),
    );

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
        ..color = ColorVariant.red
            .resolve(context)
            .withOpacity(OpacityVariant.blend.resolve(context).value)
        ..strokeWidth = 10
        ..style = PaintingStyle.stroke,
    );
  }

  @override
  bool shouldRepaint(covariant EdgeVisual oldDelegate) {
    return false;
  }
}
