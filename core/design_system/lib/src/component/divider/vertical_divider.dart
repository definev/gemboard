import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class DSVerticalDivider extends StatelessWidget {
  const DSVerticalDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: ColorVariant.onSurface.resolve(context),
      child: SizedBox(
        width: 1,
        height: 42,
      ),
    );
  }
}
