import 'package:design_system/design_system.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

class DSBottomTabBar extends StatelessWidget {
  const DSBottomTabBar({
    super.key,
    required this.items,
  });

  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    return Box(
      style: Style(
        $box.shadow(
          blurRadius: 10,
          color: ColorVariant.onBackground
              .resolve(context)
              .withOpacity(OpacityVariant.highlight.resolve(context).value),
        ),
        $box.color.ref(ColorVariant.background),
      ),
      child: SafeArea(
        child: Row(
          children: [
            for (final item in items) Expanded(child: item),
          ],
        ),
      ),
    );
  }
}

class BottomTabBarItem extends StatelessWidget {
  const BottomTabBarItem({
    required this.title,
    required this.icon,
    required this.selected,
    this.onPressed,
  });

  final String title;
  final Widget icon;
  final bool selected;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            height: 1,
            thickness: 1,
            color: switch (selected) {
              true => ColorVariant.primary.resolve(context),
              false => ColorVariant.background.resolve(context),
            },
          ),
          PaddedColumn(
            padding: EdgeInsets.all(SpaceVariant.small.resolve(context)),
            mainAxisSize: MainAxisSize.min,
            children: [
              ColorFiltered(
                colorFilter: ColorFilter.mode(
                  switch (selected) {
                    true => ColorVariant.primary.resolve(context),
                    false => ColorVariant.onDisable.resolve(context),
                  },
                  BlendMode.srcIn,
                ),
                child: icon,
              ),
              StyledText(
                title,
                style: Style(
                  $text.style.ref(TextStyleVariant.caption),
                  $text.style.color.ref(
                    switch (selected) {
                      true => ColorVariant.primary,
                      false => ColorVariant.onDisable,
                    },
                  ),
                  $text.overflow.ellipsis(),
                  $text.textAlign.center(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
