import 'dart:ui' as ui;

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graph_edge/src/domain/model/edge.dart';
import 'package:touchable/touchable.dart';

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

  (Rect normalizedSource, Rect normalizedTarget) normalizeRects() {
    final topLeft = Offset(
      source.left < target.left ? source.left : target.left,
      source.top < target.top ? source.top : target.top,
    );

    final normalizedSource = Rect.fromPoints(
      source.topLeft - topLeft,
      source.bottomRight - topLeft,
    );

    final normalizedTarget = Rect.fromPoints(
      target.topLeft - topLeft,
      target.bottomRight - topLeft,
    );

    return (normalizedSource, normalizedTarget);
  }

  @override
  Widget build(BuildContext context) {
    final (normalizedSource, normalizedTarget) = normalizeRects();

    final hovered = useState(false);

    return CanvasTouchDetector(
      gesturesToOverride: [
        GestureType.onTapDown,
        GestureType.onPanUpdate,
      ],
      supportedDevices: {...ui.PointerDeviceKind.values}
        ..remove(ui.PointerDeviceKind.trackpad),
      builder: (context) => CustomPaint(
        painter: EdgeVisual(
          context: context,
          source: normalizedSource,
          target: normalizedTarget,
          hovered: hovered,
        ),
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
    required this.hovered,
  });

  final BuildContext context;
  final Rect source;
  final Rect target;

  final ValueNotifier<bool> hovered;

  @override
  void paint(Canvas canvas, Size size) {
    final touchyCanvas = TouchyCanvas(context, canvas);
    touchyCanvas.drawPath(
      Path()
        ..moveTo(source.center.dx, source.center.dy)
        ..lineTo(target.center.dx, target.center.dy),
      Paint() //
        ..color = (hovered.value ? ColorVariant.onBackground : ColorVariant.red)
            .resolve(context)
            .withOpacity(OpacityVariant.blend.resolve(context).value)
        ..strokeWidth = 10
        ..style = PaintingStyle.stroke,
      onTapDown: (_) => hovered.value = !hovered.value,
    );
  }

  @override
  bool shouldRepaint(covariant EdgeVisual oldDelegate) {
    return oldDelegate.hovered.value != hovered.value;
  }
}
