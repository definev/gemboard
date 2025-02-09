import 'dart:math';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:graph_edge/src/domain/model/edge.dart';
import 'package:iconly/iconly.dart';
import 'package:mix/mix.dart';

Offset getCubicPointAt(Offset p0, Offset p1, Offset p2, Offset p3, double t) {
  // Calculate the x and y coordinates of the point on the curve at t
  double x = (1 - t) * (1 - t) * (1 - t) * p0.dx +
      3 * (1 - t) * (1 - t) * t * p1.dx +
      3 * (1 - t) * t * t * p2.dx +
      t * t * t * p3.dx;

  double y = (1 - t) * (1 - t) * (1 - t) * p0.dy +
      3 * (1 - t) * (1 - t) * t * p1.dy +
      3 * (1 - t) * t * t * p2.dy +
      t * t * t * p3.dy;

  return Offset(x, y);
}

/// Computes the angle in radians between three points A, B, and C.
/// The angle is measured at point B.
///
/// - [a] is point A as an [Offset].
/// - [b] is point B as an [Offset].
/// - [c] is point C as an [Offset].
///
/// Returns the angle in radians.
double getAngleBetweenPoints(Offset a, Offset b, Offset c) {
  // Vectors from B to A and B to C
  Offset ab = Offset(a.dx - b.dx, a.dy - b.dy);
  Offset bc = Offset(c.dx - b.dx, c.dy - b.dy);

  // Dot product of vectors AB and BC
  double dotProduct = ab.dx * bc.dx + ab.dy * bc.dy;

  // Magnitudes of vectors AB and BC
  double magnitudeAB = sqrt(ab.dx * ab.dx + ab.dy * ab.dy);
  double magnitudeBC = sqrt(bc.dx * bc.dx + bc.dy * bc.dy);

  // Cosine of the angle
  double cosTheta = dotProduct / (magnitudeAB * magnitudeBC);

  // Angle in radians
  double angle = acos(cosTheta);

  return angle;
}

class EdgeView extends HookWidget {
  EdgeView({
    super.key,
    required this.data,
    required this.source,
    required this.target,

    ///
    required this.onEdgeDeleted,
    required this.onEdgeLabelChanged,
    required this.onAutoLabel,
  });

  final Edge data;
  final Rect source;
  final Rect target;

  late final (Rect normalizedSource, Rect normalizedTarget) normalizeRects =
      () {
    final topLeft = -Offset(
      min(source.left, target.left),
      min(source.top, target.top),
    );

    var normalizedSource = source.translate(topLeft.dx, topLeft.dy);
    var normalizedTarget = target.translate(topLeft.dx, topLeft.dy);

    return (normalizedSource, normalizedTarget);
  }();

  final void Function(Edge data) onEdgeDeleted;
  final void Function(String label) onEdgeLabelChanged;
  final VoidCallback onAutoLabel;

  (
    Offset shortestPointFromSource,
    Offset shortestPointFromTarget,
    Offset curvePointFirst,
    Offset curvePointSecond,
    Offset middlePoint,
    double angle,
  ) _computeEdgeVisual(BuildContext context) {
    final mediumSpace = SpaceVariant.small.resolve(context);

    /// if index is even, the point is either top or bottom
    /// if index is odd, the point is either left or right
    (Offset offset, int index) calculateShortestPoint(
      Rect normalizedSource,
      Rect normalizedTarget,
    ) {
      final pointFromSource = [
        normalizedSource.centerLeft,
        normalizedSource.topCenter,
        normalizedSource.centerRight,
        normalizedSource.bottomCenter,
      ];

      var shortestPointFromSource = Offset(
        double.infinity,
        double.infinity,
      );
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

    final (normalizedSource, normalizedTarget) = normalizeRects;

    var (shortestPointFromSource, shortestPointFromSourceIndex) =
        calculateShortestPoint(normalizedSource, normalizedTarget);
    var (shortestPointFromTarget, shortestPointFromTargetIndex) =
        calculateShortestPoint(normalizedTarget, normalizedSource);
    final shortestRect = Rect.fromPoints(
      shortestPointFromSource,
      shortestPointFromTarget,
    );

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

    final curvePointFirst = Offset(
      shortestPointFromSource.dx + cubicControlPointDxC1(shortestRect.width),
      shortestPointFromSource.dy + cubicControlPointDyC1(shortestRect.height),
    );
    final curvePointSecond = Offset(
      shortestPointFromTarget.dx + cubicControlPointDxC2(shortestRect.width),
      shortestPointFromTarget.dy + cubicControlPointDyC2(shortestRect.height),
    );

    final middlePoint = getCubicPointAt(
      shortestPointFromSource,
      curvePointFirst,
      curvePointSecond,
      shortestPointFromTarget,
      0.5,
    );

    final angle = getAngleBetweenPoints(
      middlePoint + Offset(10, 0),
      middlePoint,
      getCubicPointAt(
        shortestPointFromSource,
        curvePointFirst,
        curvePointSecond,
        shortestPointFromTarget,
        0.6,
      ),
    );

    return (
      shortestPointFromSource,
      shortestPointFromTarget,
      curvePointFirst,
      curvePointSecond,
      middlePoint,
      angle,
    );
  }

  @override
  Widget build(BuildContext context) {
    final scale = DesignSystemTheme.of(context).scale;
    final (
      shortestPointFromSource,
      shortestPointFromTarget,
      curvePointFirst,
      curvePointSecond,
      middlePoint,
      angle,
    ) = useMemoized(
      () => _computeEdgeVisual(context),
      [normalizeRects],
    );
    final showOptions = useState(false);
    final labelTextController =
        useTextEditingController(text: data.decoration.label);
    useEffect(() {
      if (data.decoration.label == null) return;
      if (labelTextController.text != data.decoration.label) {
        labelTextController.text = data.decoration.label!;
      }
      return null;
    }, [data.decoration.label]);
    final labelTextFocusNode = useFocusNode();

    final labelTextStyle = TextStyleVariant.medium.resolve(context).copyWith(
          fontSize: TextStyleVariant.h6.resolve(context).fontSize,
          color: ColorVariant.blue.resolve(context),
        );
    return LayoutBuilder(
      builder: (context, constraints) {
        Widget child = IgnorePointer(
          child: CustomPaint(
            painter: EdgeVisual(
              context: context,
              shortestPointFromSource: shortestPointFromSource,
              shortestPointFromTarget: shortestPointFromTarget,
              curvePointFirst: curvePointFirst,
              curvePointSecond: curvePointSecond,
            ),
            child: Stack(
              children: [
                Positioned(
                  left: middlePoint.dx - 15 * scale,
                  top: middlePoint.dy - 15 * scale,
                  height: 30 * scale,
                  width: 30 * scale,
                  child: PortalTarget(
                    anchor: Aligned(
                      follower: Alignment.bottomCenter,
                      target: Alignment.bottomCenter,
                    ),
                    portalFollower: VBox(
                      style: Style(
                        $flex.mainAxisSize.min(),
                        $flex.gap.ref(SpaceVariant.small),
                      ),
                      children: [
                        if (showOptions.value)
                          DSToolbar(
                            direction: Axis.horizontal,
                            children: [
                              Button(
                                style: Style(
                                  $box.height(40 * scale),
                                ),
                                onPressed: () {
                                  onAutoLabel();
                                  showOptions.value = false;
                                },
                                child: HBox(
                                  inherit: true,
                                  style: Style(
                                    $flex.gap.ref(SpaceVariant.gap),
                                  ),
                                  children: [
                                    StyledIcon(IconlyLight.discovery),
                                    StyledText('Auto-label'),
                                  ],
                                ),
                              ),
                              Button(
                                style: Style(
                                  $box.height(40 * scale),
                                  $box.width(40 * scale),
                                ),
                                onPressed: () => onEdgeDeleted(data),
                                child: StyledIcon(IconlyLight.delete),
                              ),
                            ],
                          ),
                        IntrinsicWidth(
                          child: DSTextbox(
                            style: Style(
                              $box.color.transparent(),
                              $box.padding(0),
                            ),
                            controller: labelTextController,
                            focusNode: labelTextFocusNode,
                            kind: DSTextboxKind.boundless,
                            maxLength: 100,
                            textStyle: labelTextStyle,
                            hintText: '.',
                            onChanged: (value) => onEdgeLabelChanged(value),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Transform.rotate(
                          angle: switch (shortestPointFromTarget.dy >
                              shortestPointFromSource.dy) {
                            true => angle,
                            false => -angle,
                          },
                          child: Button(
                            background: ColorVariant.onSurface,
                            kind: ButtonKind.outline,
                            style: Style(
                              $box.borderRadius(30 * scale),
                              $box.foregroundDecoration
                                  .borderRadius(30 * scale),
                            ),
                            onPressed: () =>
                                showOptions.value = !showOptions.value,
                            child: StyledIcon(IconlyLight.arrow_right),
                          ),
                        ),
                      ],
                    ),
                    child: SizedBox(height: 30 * scale, width: 30 * scale),
                  ),
                ),
              ],
            ),
          ),
        );
        if (constraints.maxHeight > 135 * scale) {
          return Portal(child: child);
        }
        return child;
      },
    );
  }
}

class EdgeVisual extends CustomPainter {
  EdgeVisual({
    super.repaint,
    required this.context,
    required this.shortestPointFromSource,
    required this.shortestPointFromTarget,
    required this.curvePointFirst,
    required this.curvePointSecond,
  });

  final BuildContext context;

  final Offset shortestPointFromSource;
  final Offset shortestPointFromTarget;
  final Offset curvePointFirst;
  final Offset curvePointSecond;

  @override
  void paint(Canvas canvas, Size size) {
    final strokeWidth = SpaceVariant.gap.resolve(context);

    final path = Path()
      ..moveTo(shortestPointFromSource.dx, shortestPointFromSource.dy)
      ..cubicTo(
        curvePointFirst.dx,
        curvePointFirst.dy,
        curvePointSecond.dx,
        curvePointSecond.dy,
        shortestPointFromTarget.dx,
        shortestPointFromTarget.dy,
      );

    canvas.drawPath(
      path,
      Paint() //
        ..color = ColorVariant.outline.resolve(context).withValues(alpha:0.5)
        ..strokeWidth = strokeWidth
        ..style = PaintingStyle.stroke,
    );
  }

  @override
  bool shouldRepaint(covariant EdgeVisual oldDelegate) {
    if (oldDelegate.shortestPointFromSource != shortestPointFromSource)
      return true;
    return false;
  }
}

class EdgeTempVisual extends CustomPainter {
  const EdgeTempVisual({
    required this.context,
    required this.start,
    required this.end,
    required this.scaleFactor,
    required this.color,
  });

  final BuildContext context;

  final double scaleFactor;

  final Offset start;
  final Offset end;

  final Color color;

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
        ..color = color
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
