import 'package:design_system/design_system.dart';
import 'package:flutter/cupertino.dart';
import 'package:mix/mix.dart';

part 'appbar.style.dart';

class DSAppbar extends StyledWidget {
  const DSAppbar({
    super.key,
    required this.title,
    super.orderOfModifiers = const [],
    super.inherit,
    super.style,
    this.border,
  });

  final Color? border;
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
              $text.style.ref(TextStyleVariant.h6),
              $box.color.ref(ColorVariant.surface),
              $box.border.bottom.color(border),
            ).merge(style),
            child: SafeArea(
              bottom: false,
              child: HBox(
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
            ),
          ),
        );
      },
    );
  }
}
