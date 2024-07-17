import 'dart:math';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mix/mix.dart';

class DSThumb extends StatelessWidget {
  const DSThumb({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi + pi / 4,
      child: StyledIcon(
        IconlyLight.arrow_left_2,
        style: Style(
          $icon.color(color),
        ),
      ),
    );
  }
}
