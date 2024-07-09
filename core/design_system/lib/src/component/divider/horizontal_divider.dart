import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class DSHorizontalDivider extends StatelessWidget {
  const DSHorizontalDivider({
    super.key,
    this.thickness = 1,
  });

  final double thickness;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: ColorVariant.onSurface.resolve(context),
        borderRadius: BorderRadius.circular(thickness / 2),
      ),
      child: SizedBox(
        width: 42,
        height: thickness,
      ),
    );
  }
}
