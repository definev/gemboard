import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:home/src/view/genit_lead_sidebar_view.dart';
import 'package:mix/mix.dart';
import 'package:utils/utils.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ResizableFlex(
        direction: Axis.horizontal,
        initialSize: 300,
        firstChild: Column(
          children: [
            DSSidebarSectionHeader(
              background: ColorVariant.yellow,
              title: SafeArea(
                child: Row(
                  children: [
                    SizedBox.square(
                      dimension: 60,
                      child: ColoredBox(
                        color: ColorVariant.background
                            .resolve(context)
                            .withOpacity(
                                OpacityVariant.blend.resolve(context).value),
                      ),
                    ),
                    Expanded(
                      child: VBox(
                        inherit: true,
                        style: Style(
                          $flex.crossAxisAlignment.start(),
                          $box.padding.vertical.ref(SpaceVariant.medium),
                        ),
                        children: [
                          StyledText(
                            'Hi, you!',
                            style: Style(
                              $text.style.fontWeight.bold(),
                            ),
                          ),
                          StyledText(
                            DateTimeUtils.weekdayYear(DateTime.now()),
                            style: Style(
                              $text.style.ref(TextStyleVariant.p),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GenitLeadSidebar(),
            ),
          ],
        ),
        secondChild: SizedBox(),
      ),
    );
  }
}

