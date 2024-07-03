import 'package:design_system/design_system.dart';
import 'package:design_system/src/token/color.dart' as color;
import 'package:design_system/src/token/spaces.dart' as space;
import 'package:design_system/src/token/text_styles.dart' as textStyles;
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

part 'appbar.variant.dart';

class DSAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DSAppBar({
    super.key,
    this.leading,
    this.title,
    this.size = AppBarSizeVariant.small,
    this.navigatorContext,
  });

  static Size getPreferredSize(AppBarSizeVariant size) {
    return Size.fromHeight(_appBarSizes[size]!);
  }

  final Widget? leading;
  final Widget? title;

  final AppBarSizeVariant size;

  final BuildContext? navigatorContext;

  @override
  Widget build(BuildContext context) {
    final canPop = Navigator.canPop(navigatorContext ?? context);
    final primary = color.ColorVariant.primary.resolve(context);

    final padding = MediaQuery.paddingOf(context);

    return Column(
      children: [
        ColoredBox(
          color: primary,
          child: SizedBox(
            height: MediaQuery.paddingOf(context).top,
            width: double.maxFinite,
          ),
        ),
        Expanded(
          child: SizedBox.expand(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    primary,
                    switch (size) {
                      AppBarSizeVariant.small => primary.withOpacity(0.5),
                      AppBarSizeVariant.large => primary.withOpacity(0.0),
                      _ => primary,
                    },
                  ],
                ),
              ),
              child: ZBox(
                style: Style(
                  $stack.clipBehavior.none(),
                ),
                children: [
                  if (title case final title?)
                    Box(
                      style: Style(
                        $box.padding.top(
                          switch (size) {
                            _ when padding.top == 0 => 0,
                            AppBarSizeVariant.small =>
                              space.SpaceVariant.medium.resolve(context),
                            AppBarSizeVariant.large =>
                              space.SpaceVariant.small.resolve(context),
                            _ => 0,
                          },
                        ),
                        $box.alignment(
                          switch (true) {
                            _ when padding.top == 0 => Alignment.center,
                            _ => Alignment.topCenter,
                          },
                        ),
                        $text.style.ref(textStyles.TextStyleVariant.title),
                        $text.style.color(
                            color.ColorVariant.onPrimary.resolve(context)),
                        $text.style.fontWeight.bold(),
                        $with.align(alignment: Alignment.center),
                      ),
                      child: IntrinsicHeight(
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            ...switch (true) {
                              _ when leading != null => [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: leading,
                                  )
                                ],
                              _ when canPop => [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: DSBackButton(
                                      onPressed: () => Navigator.pop(
                                          navigatorContext ?? context),
                                    ),
                                  ),
                                ],
                              _ => [],
                            },
                            Align(
                              alignment: Alignment.topCenter,
                              child: title,
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => getPreferredSize(size);
}

class DSLargeAppBar extends StatelessWidget {
  const DSLargeAppBar({super.key, this.leading, this.content});

  final Widget? leading;
  final Widget? content;

  @override
  Widget build(BuildContext context) {
    EdgeInsets padding = MediaQuery.paddingOf(context);

    final primary = color.ColorVariant.primary.resolve(context);

    return Column(
      children: [
        ColoredBox(
          color: primary,
          child: SizedBox(
            height: padding.top,
            width: double.maxFinite,
          ),
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                primary,
                primary.withOpacity(0.7),
              ],
            ),
          ),
          child: ZBox(
            style: Style(
              $stack.clipBehavior.none(),
            ),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: space.SpaceVariant.medium.resolve(context),
                  vertical: space.SpaceVariant.large.resolve(context),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (leading case final leading?) leading,
                    if (content case final content?) content,
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
