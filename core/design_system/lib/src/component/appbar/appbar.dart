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
  });

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return withMix(
      context,
      (context) {
        return WindowMover(
          child: Box(
            style: Style(
              $box.color.ref(ColorVariant.surface),
              $box.shadow(
                  blurRadius: 10,
                  color: ColorVariant.onSurface.resolve(context).withOpacity(
                      OpacityVariant.hightlight.resolve(context).value)),
              $box.padding.all.ref(SpaceVariant.small),
              $flex.mainAxisAlignment.center(),
            ).merge(style),
            child: SafeArea(
              bottom: false,
              child: StyledRow(
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
