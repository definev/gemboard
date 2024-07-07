import 'package:design_system/design_system.dart';
import 'package:design_system/src/component/gesture/gesture_tool.dart';
import 'package:design_system/src/token/gesture/gesture.dart';
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
    this.focusNode,
    required this.onPressed,
    required this.child,
  });

  final ButtonKind kind;
  final ColorVariant background;
  final ColorVariant? onBackground;
  final VoidCallback? onPressed;

  final FocusNode? focusNode;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureTool(
      focusNode: focusNode,
      onPressed: onPressed,
      builder: (hoverHighlight, focusHighlight, pressed) => withMix(
        context,
        (context) {
          ColorVariant? onBackground = this.onBackground;
          if (kind == ButtonKind.filled) {
            onBackground = ColorVariant.resolveOnBackground(
                background, ColorVariant.onSurface);
          } else {
            onBackground = ColorVariant.onSurface;
          }

          final buttonStyle = ButtonStyle(
            kind,
            background,
            onBackground,
            pressed,
            hoverHighlight,
            focusHighlight,
          );

          return Box(
            style: buttonStyle(context).merge(style),
            child: child,
          );
        },
      ),
    );
  }
}
