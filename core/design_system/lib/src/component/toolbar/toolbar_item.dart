import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

// ignore: must_be_immutable
class DSToolbarItem extends StatelessWidget {
  DSToolbarItem({
    super.key,
    required this.child,
    this.direction = Axis.horizontal,
    this.onPressed,
  });

  Axis direction = Axis.horizontal;
  final Widget child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return PressableBox(
      onPress: onPressed,
      style: Style(
        switch (direction) {
          Axis.vertical => $box.border.left.color.ref(ColorVariant.onSurface),
          Axis.horizontal => $box.border.top.color.ref(ColorVariant.onSurface),
        },
        switch (direction) {
          Axis.vertical => $box.border.right.color.ref(ColorVariant.onSurface),
          Axis.horizontal =>
            $box.border.bottom.color.ref(ColorVariant.onSurface),
        },
        $box.height(42),
        $box.width(42),
        $on.hover(
          $box.color(ColorVariant.yellow
              .resolve(context)
              .withOpacity(OpacityVariant.hightlight.resolve(context).value)),
        ),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
