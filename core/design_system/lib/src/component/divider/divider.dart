import 'package:design_system/src/token/color.dart';
import 'package:flutter/material.dart';

class DSDivider extends StatelessWidget {
  const DSDivider({
    super.key,
    this.color,
  });

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      color: color ?? ColorVariant.border.resolve(context),
    );
  }
}
