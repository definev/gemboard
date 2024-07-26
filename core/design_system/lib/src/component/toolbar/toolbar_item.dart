import 'package:design_system/design_system.dart';
import 'package:design_system/src/component/gesture/gesture_tool.dart';
import 'package:design_system/src/token/gesture/gesture.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

// ignore: must_be_immutable
class DSToolbarItem extends StyledWidget {
  DSToolbarItem({
    super.key,
    required this.child,
    this.onPressed,
    super.orderOfModifiers = const [],
    super.inherit,
    super.style,
  });

  final Widget child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final scale = DesignSystemTheme.of(context).scale;

    return GestureTool(
      onPressed: onPressed,
      builder: (bool hoverHighlight, bool focusHighlight, bool? pressed) {
        return withMix(
          context,
          (context) => Box(
            style: Style(
              $box.color.ref(ColorVariant.surface),
              $box.height(SpaceVariant.large.resolve(context) * 2 * scale),
              $box.width(SpaceVariant.large.resolve(context) * 2 * scale),
              HoverVariant.hover(
                $box.color(
                  Color.lerp(
                    ColorVariant.surface.resolve(context),
                    ColorVariant.yellow.resolve(context),
                    OpacityVariant.hightlight.resolve(context).value,
                  )!,
                ),
              ),
            ).applyVariants([
              GestureTool.convertHoverVariant(hoverHighlight),
              GestureTool.convertFocusVariant(focusHighlight),
              GestureTool.convertPressVariant(pressed),
            ]).merge(style),
            child: Center(
              child: child,
            ),
          ),
        );
      },
    );
  }
}
