import 'package:design_system/src/token/color.dart' as color;
import 'package:design_system/src/token/opacity.dart';
import 'package:design_system/src/token/text_styles.dart' as textStyles;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mix/mix.dart';

part 'button.style.dart';
part 'button.variant.dart';

class Button extends StyledWidget {
  const Button({
    super.key,
    super.inherit,
    super.style,
    super.orderOfModifiers = const [],
    required this.child,
    this.onPressed,
    this.kind = ButtonKind.primary,
    this.size = ButtonSize.medium,
    this.shape = ButtonShape.pill,
    this.opacity = ButtonOpacity.none,
  });

  final VoidCallback? onPressed;
  final Widget child;

  final ButtonKind kind;
  final ButtonSize size;
  final ButtonShape shape;
  final ButtonOpacity opacity;

  @override
  Widget build(BuildContext context) {
    final style = ButtonStyle(size, kind, shape, opacity);

    return withMix(
      context,
      (context) => PressableBox(
        enabled: onPressed != null,
        style: style(context).animate(curve: Curves.ease).merge(this.style),
        onPress: onPressed,
        child: child,
      ),
    );
  }
}

List<Widget> previewButtons() {
  return [
    Button(
      child: StyledText('Primary Button'),
    ),
    Button(
      child: StyledText('Primary Button'),
      kind: ButtonKind.outlined,
    ),
    Button(
      child: StyledText('Primary Button'),
    ),
  ];
}
