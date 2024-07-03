import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DSConfetti extends HookWidget {
  const DSConfetti({
    super.key,
    this.alignment = Alignment.center,
  });

  final Alignment alignment;

  double radiusFromDirection(Alignment alignment) {
    if (alignment == Alignment.topLeft) {
      return pi * 1.25;
    } else if (alignment == Alignment.topRight) {
      return pi * 1.75;
    } else if (alignment == Alignment.bottomLeft) {
      return pi * 0.75;
    } else if (alignment == Alignment.bottomRight) {
      return pi * 0.25;
    } else {
      return pi * 1.5;
    }
  }

  /// A custom Path to paint stars.
  Path drawStar(Size size) {
    // Method to convert degree to radians
    double degToRad(double deg) => deg * (pi / 180.0);

    const numberOfPoints = 5;
    final halfWidth = size.width / 2;
    final externalRadius = halfWidth;
    final internalRadius = halfWidth / 2.5;
    final degreesPerStep = degToRad(360 / numberOfPoints);
    final halfDegreesPerStep = degreesPerStep / 2;
    final path = Path();
    final fullAngle = degToRad(360);
    path.moveTo(size.width, halfWidth);

    for (double step = 0; step < fullAngle; step += degreesPerStep) {
      path.lineTo(halfWidth + externalRadius * cos(step),
          halfWidth + externalRadius * sin(step));
      path.lineTo(halfWidth + internalRadius * cos(step + halfDegreesPerStep),
          halfWidth + internalRadius * sin(step + halfDegreesPerStep));
    }
    path.close();
    return path;
  }

  @override
  Widget build(BuildContext context) {
    final confettiController = useMemoized(
      () => ConfettiController(
        duration: const Duration(seconds: 2),
      ),
    );
    useEffect(() {
      confettiController.play();

      return () => confettiController.dispose();
    }, const []);

    final primary = ColorVariant.primary.resolve(context);
    final success = ColorVariant.success.resolve(context);

    return ConfettiWidget(
      confettiController: confettiController,
      blastDirectionality: BlastDirectionality.directional,
      blastDirection: radiusFromDirection(alignment),
      numberOfParticles: 25,
      emissionFrequency: 0.01,
      gravity: 0.08,
      shouldLoop: false, // start again as soon as the animation is finished
      colors: [
        primary.withOpacity(0.6),
        primary.withOpacity(0.4),
        primary.withOpacity(0.2),
        success.withOpacity(0.6),
        success.withOpacity(0.4),
        success.withOpacity(0.2),
      ], // manu
      // createParticlePath: drawStar, // define a custom shape/path.
    );
  }
}
