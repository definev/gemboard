import 'package:design_system/src/token/color.dart' as color;
import 'package:design_system/src/token/opacity.dart' as opacity;
import 'package:design_system/src/token/spaces.dart' as space;
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

part 'card.style.dart';
part 'card.variant.dart';

class DSCard extends StyledWidget {
  const DSCard({
    super.key,
    super.inherit,
    super.style,
    super.orderOfModifiers = const [],
    this.kind = DSCardKind.primary,
    this.onPressed,
    required this.child,
  });

  final VoidCallback? onPressed;
  final Widget child;

  final DSCardKind kind;

  @override
  Widget build(BuildContext context) {
    final style = DSCardStyle(kind);
    return PressableBox(
      onPress: onPressed,
      style: style(context)
          .merge(this.style)
          .animate(duration: Duration(milliseconds: 200), curve: Curves.ease),
      child: child,
    );
  }
}
