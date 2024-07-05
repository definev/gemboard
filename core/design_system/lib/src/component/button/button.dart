import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

part 'button.style.dart';
part 'button.variant.dart';

class Button extends StyledWidget {
  const Button({
    super.key,
    super.orderOfModifiers = const [],
    super.style,
    super.inherit,
    this.kind = ButtonKind.flat,
    this.background = ColorVariant.purple,
    this.onBackground,
    required this.onPressed,
    required this.child,
  });

  final ButtonKind kind;
  final ColorVariant background;
  final ColorVariant? onBackground;
  final VoidCallback? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return withMix(
      context,
      (context) {
        ColorVariant? onBackground = this.onBackground;
        if (kind == ButtonKind.filled) {
          onBackground = ColorVariant.resolveOnBackground(background, ColorVariant.onSurface);
        } else {
          onBackground = ColorVariant.onSurface;
        }

        final buttonStyle = ButtonStyle(kind, background, onBackground);

        return PressableBox(
          style: buttonStyle(context).merge(style),
          onPress: () async {
            await Future.delayed(Duration(milliseconds: 100));
            onPressed?.call();
          },
          child: child,
        );
      },
    );
  }
}
