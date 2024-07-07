import 'package:design_system/design_system.dart';
import 'package:design_system/src/token/gesture/gesture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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
    return HookBuilder(
      builder: (context) {
        final hoverHighlight = useState(false);
        void onShowHoverHighlight(bool hover) {
          hoverHighlight.value = hover;
        }

        final focusHighlight = useState(false);
        void onShowFocusHighlight(bool focus) {
          focusHighlight.value = focus;
        }

        final pressed = useState(false);

        return withMix(
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
              pressed.value,
              hoverHighlight.value,
              focusHighlight.value,
            );

            return FocusableActionDetector(
              focusNode: focusNode,
              onShowHoverHighlight: onShowHoverHighlight,
              onShowFocusHighlight: onShowFocusHighlight,
              child: GestureDetector(
                onTap: () async {
                  pressed.value = true;
                  onPressed?.call();
                  await Future.delayed(Duration(milliseconds: 300));
                  pressed.value = false;
                },
                child: Box(
                  style: buttonStyle(context).merge(style),
                  child: child,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
