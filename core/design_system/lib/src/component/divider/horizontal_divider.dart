import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class DSHorizontalDivider extends StatelessWidget {
  const DSHorizontalDivider({
    super.key,
    this.thickness = 1.5,
  });

  final double thickness;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: ColorVariant.outline.resolve(context),
        borderRadius: BorderRadius.circular(thickness / 2),
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 42,
          minHeight: thickness,
          maxHeight: thickness,
        ),
      ),
    );
  }
}
