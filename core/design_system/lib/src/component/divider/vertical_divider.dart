import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class DSVerticalDivider extends StatelessWidget {
  const DSVerticalDivider({
    super.key,
    this.thickness = 1,
    this.color,
  });

  final Color? color;
  final double thickness;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color ?? ColorVariant.onSurface.resolve(context),
        borderRadius: BorderRadius.circular(thickness / 2),
      ),
      child: SizedBox(
        width: thickness,
        height: 42,
      ),
    );
  }
}
