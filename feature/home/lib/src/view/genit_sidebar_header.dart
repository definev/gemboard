import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:utils/utils.dart';

class GenitSidebarHeader extends StatelessWidget {
  const GenitSidebarHeader({
    super.key,
    required this.panelSize,
    required this.minSize,
  });

  final double panelSize;
  final double minSize;

  @override
  Widget build(BuildContext context) {
    return WindowMover(
      child: DSSidebarSectionHeader(
        style: Style(
          $box.padding.horizontal.ref(
            panelSize < minSize ? SpaceVariant.small : SpaceVariant.medium,
          ),
          $box.padding.bottom.ref(
            panelSize < minSize ? SpaceVariant.small : SpaceVariant.medium,
          ),
        ),
        background: ColorVariant.yellow,
        title: SafeArea(
          bottom: false,
          right: false,
          child: HBox(
              style: Style(
                $flex.mainAxisAlignment.center(),
              ),
              children: switch (panelSize > minSize) {
                true => [
                    SizedBox(
                      height: 76,
                      child: Center(
                        child: SizedBox.square(
                          dimension: 60,
                          child: ColoredBox(
                            color: ColorVariant.background //
                                .resolve(context)
                                .withOpacity(OpacityVariant.blend
                                    .resolve(context)
                                    .value),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: VBox(
                        inherit: true,
                        style: Style(
                          $flex.crossAxisAlignment.start(),
                          $box.margin.left.ref(SpaceVariant.medium),
                        ),
                        children: [
                          StyledText(
                            'Hi, you!',
                            style: Style(
                              $text.style.ref(TextStyleVariant.h6),
                              $text.style.fontWeight.bold(),
                              $text.overflow.ellipsis(),
                            ),
                          ),
                          StyledText(
                            DateTimeUtils.weekdayYear(DateTime.now()),
                            style: Style(
                              $text.style.ref(TextStyleVariant.p),
                              $text.overflow.ellipsis(),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                false => [
                    Expanded(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Center(
                          child: SizedBox.square(
                            dimension: 60,
                            child: ColoredBox(
                              color: ColorVariant.background //
                                  .resolve(context)
                                  .withOpacity(OpacityVariant.blend
                                      .resolve(context)
                                      .value),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
              }),
        ),
      ),
    );
  }
}
