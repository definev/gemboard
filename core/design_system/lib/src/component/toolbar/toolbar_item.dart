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
    this.direction = Axis.horizontal,
    this.onPressed,
    super.orderOfModifiers = const [],
    super.inherit,
    super.style,
  });

  Axis direction = Axis.horizontal;
  final Widget child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureTool(
      onPressed: onPressed,
      builder: (bool hoverHighlight, bool focusHighlight, bool? pressed) {
        return withMix(
          context,
          (context) => Box(
            style: Style(
              $box.color.ref(ColorVariant.surface),
              switch (direction) {
                Axis.vertical => $box.border.left(
                    color: ColorVariant.onSurface.resolve(context),
                    width: 1.5,
                  ),
                Axis.horizontal => $box.border.top(
                    color: ColorVariant.onSurface.resolve(context),
                    width: 1.5,
                  ),
              },
              switch (direction) {
                Axis.vertical => $box.border.right(
                    color: ColorVariant.onSurface.resolve(context),
                    width: 1.5,
                  ),
                Axis.horizontal => $box.border.bottom(
                    color: ColorVariant.onSurface.resolve(context),
                    width: 1.5,
                  )
              },
              $box.height(42),
              $box.width(42),
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
