import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

class DSListTile extends StatelessWidget {
  const DSListTile({
    super.key,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.onPressed,
  });

  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final inheritStyle = Mix.maybeOfInherited(context);
    final titleStyle = Style(
      $text.style.ref(TextStyleVariant.title),
      $text.style.color.ref(ColorVariant.onBackground),
      $text.style.fontWeight.w500(),
      $text.overflow.ellipsis(),
    );
    final subtitleStyle = Style(
      $text.style.ref(TextStyleVariant.body),
      $text.style.color.ref(ColorVariant.onBackgroundDim),
      $text.overflow.ellipsis(),
    );
    final iconStyle = Style(
      $icon.color.ref(ColorVariant.border),
    );

    return DSCard(
      onPressed: onPressed,
      kind: DSCardKind.outlined,
      child: Row(
        children: [
          if (leading != null) ...[
            leading!,
            SizedBox(width: SpaceVariant.small.resolve(context)),
          ],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (title != null) ...[
                  Mix(
                    data: switch (inheritStyle) {
                      final inherit? => titleStyle.of(context).merge(inherit),
                      _ => titleStyle.of(context),
                    },
                    child: title!,
                  ),
                ],
                if (subtitle != null) ...[
                  Mix(
                    data: switch (inheritStyle) {
                      final inherit? =>
                        subtitleStyle.of(context).merge(inherit),
                      _ => subtitleStyle.of(context),
                    },
                    child: subtitle!,
                  ),
                ],
              ],
            ),
          ),
          if (trailing != null) ...[
            SizedBox(width: SpaceVariant.small.resolve(context)),
            Mix(
              data: switch (inheritStyle) {
                final inherit? => iconStyle.of(context).merge(inherit),
                _ => iconStyle.of(context),
              },
              child: trailing!,
            ),
          ],
        ],
      ),
    );
  }
}
