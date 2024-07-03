import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

class DSBanner extends StatelessWidget {
  const DSBanner({
    required this.title,
    required this.description,
    this.trailing,
    required this.onPressed,
    this.blend = false,
  });

  final String title;
  final String description;
  final Widget? trailing;
  final VoidCallback onPressed;
  final bool blend;

  @override
  Widget build(BuildContext context) {
    final child = PressableBox(
      onPress: onPressed,
      style: Style(
        $box.borderRadius.all.ref(RadiusVariant.small),
        $box.padding.horizontal.ref(SpaceVariant.medium),
        $box.padding.vertical.ref(SpaceVariant.small),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StyledText(
                  title,
                  style: Style(
                    $text.style.ref(TextStyleVariant.body),
                    $text.style.color.ref(ColorVariant.onBackground),
                    $text.style.fontWeight.bold(),
                  ),
                ),
                StyledText(
                  description,
                  style: Style(
                    $text.style.ref(TextStyleVariant.body),
                    $text.style.color.ref(ColorVariant.onBackground),
                  ),
                ),
              ],
            ),
          ),
          if (trailing != null)
            Mix(
              data: Style(
                $text.style.color(Color(0xFF276EF1)),
              ).of(context),
              child: trailing!,
            ),
        ],
      ),
    );
    return Padding(
      padding: EdgeInsets.only(
        top: SpaceVariant.small.resolve(context),
      ),
      child: switch (blend) {
        true => ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.yellow.withOpacity(0.1),
              BlendMode.srcOver,
            ),
            child: child,
          ),
        false => child,
      },
    );
  }
}
