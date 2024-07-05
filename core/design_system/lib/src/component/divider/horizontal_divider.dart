import 'package:design_system/design_system.dart';
import 'package:flutter/cupertino.dart';

class DSHorizontalDivider extends StatelessWidget {
  const DSHorizontalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: ColorVariant.onSurface.resolve(context),
      child: SizedBox(
        width: 42,
        height: 1,
      ),
    );
  }
}
