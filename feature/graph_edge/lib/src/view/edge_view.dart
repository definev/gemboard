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

class EdgeTempVisual extends CustomPainter {
  const EdgeTempVisual({
    required this.context,
    required this.childSize,
    required this.portalFollowerKey,
    required this.startLocal,
    required this.startGlobal,
    required this.endGlobal,
    required this.scaleFactor,
  });

  final BuildContext context;

  final Size childSize;
  final GlobalKey portalFollowerKey;
  final double scaleFactor;

  final Offset startLocal;
  final Offset startGlobal;
  final Offset endGlobal;

  @override
  void paint(Canvas canvas, Size size) {
    var start =
        (portalFollowerKey.currentContext!.findRenderObject() as RenderBox)
            .globalToLocal(startGlobal);
    var end =
        (portalFollowerKey.currentContext!.findRenderObject() as RenderBox)
            .globalToLocal(endGlobal);

    start -= startLocal * scaleFactor;
    end -= startLocal * scaleFactor;

    final scaledSize = childSize * scaleFactor;
    start += Offset(scaledSize.width / 2, scaledSize.height / 2);
    end += Offset(scaledSize.width / 2, scaledSize.height / 2);

    canvas.drawLine(
      start,
      end,
      Paint()
        ..color = ColorVariant.onSurface
            .resolve(context)
            .withOpacity(OpacityVariant.hightlight.resolve(context).value)
        ..strokeWidth = 10 * scaleFactor
        ..style = PaintingStyle.stroke,
    );
  }

  @override
  bool shouldRepaint(covariant EdgeTempVisual oldDelegate) {
    if (oldDelegate.startGlobal != startGlobal) return true;
    if (oldDelegate.endGlobal != endGlobal) return true;
    return false;
  }
}
