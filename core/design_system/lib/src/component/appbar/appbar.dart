import 'package:design_system/design_system.dart';
import 'package:flutter/cupertino.dart';
import 'package:mix/mix.dart';

part 'appbar.style.dart';

class DSAppbar extends StyledWidget {
  const DSAppbar({
    super.key,
    super.orderOfModifiers = const [],
    super.inherit,
    super.style,
    required this.child,
    this.borderColor = ColorVariant.blue,
  });

  final ColorVariant borderColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final dsAppbarStyle = DSAppbarStyle(borderColor);

    return withMix(
      context,
      (context) => Box(
        style: dsAppbarStyle(context),
        child: child,
      ),
    );
  }
}
