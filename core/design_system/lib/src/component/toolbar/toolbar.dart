import 'package:design_system/design_system.dart';
import 'package:flutter/cupertino.dart';
import 'package:mix/mix.dart';

part 'toolbar.style.dart';
part 'toolbar.variant.dart';

class DSToolbar extends StyledWidget {
  const DSToolbar({
    super.key,
    this.direction = Axis.horizontal,
    required this.children,
    super.orderOfModifiers = const [],
    super.style,
    super.inherit,
  });

  final Axis direction;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return withMix(
      context,
      (context) {
        final dsToolbarStyle = DSToolbarStyle();

        return Box(
          style: dsToolbarStyle(context).merge(style),
          child: StyledFlex(
            direction: direction,
            style: dsToolbarStyle.styledFlexStyle(context),
            children: [
              if (direction == Axis.vertical)
                DSHorizontalDivider()
              else
                DSVerticalDivider(),
              ...[
                for (final child in children) ...[
                  switch (child) {
                    DSToolbarItem() => child..direction = direction,
                    _ => child,
                  },
                  if (direction == Axis.vertical)
                    DSHorizontalDivider()
                  else
                    DSVerticalDivider(),
                ],
              ]
            ],
          ),
        );
      },
    );
  }
}
