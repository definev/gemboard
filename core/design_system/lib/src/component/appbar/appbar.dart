import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mix/mix.dart';

part 'appbar.style.dart';

class DSAppbar extends StyledWidget {
  const DSAppbar({
    super.key,
    required this.title,
    super.orderOfModifiers = const [],
    super.inherit,
    super.style,
    this.leading,
    this.border,
  });

  final Color? border;
  final Widget? leading;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    var border = this.border ?? colors[ColorVariant.yellow]!;

    return withMix(
      context,
      (context) {
        return WindowMover(
          child: Box(
            style: Style(
              $flex.mainAxisAlignment.center(),
              $text.style.ref(TextStyleVariant.p),
              $box.color.ref(ColorVariant.surface),
              $box.border.all.color(Colors.transparent),
              $box.border.bottom.color(border),
            ).merge(style),
            child: SafeArea(
              bottom: false,
              child: SizedBox(
                height: 48,
                child: Stack(
                  children: [
                    HBox(
                      inherit: true,
                      style: Style(
                        $box.padding.all.ref(SpaceVariant.small),
                        $box.minHeight(48),
                      ),
                      children: [
                        Expanded(
                          child: Center(
                            child: title,
                          ),
                        ),
                      ],
                    ),
                    if (leading case final leading?)
                      Align(
                        alignment: Alignment.centerLeft,
                        child: leading,
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class DSBackButton extends StatelessWidget {
  const DSBackButton({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(SpaceVariant.small.resolve(context)),
      child: Button(
        style: Style(
          $box.borderRadius.circular(SpaceVariant.gap.resolve(context)),
        ),
        onPressed: onPressed ?? () => Navigator.pop(context),
        child: StyledIcon(IconlyLight.close_square),
      ),
    );
  }
}
