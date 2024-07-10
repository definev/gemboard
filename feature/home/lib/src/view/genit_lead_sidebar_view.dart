import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:genit_common/genit_common.dart';
import 'package:iconly/iconly.dart';
import 'package:mix/mix.dart';
import 'package:utils/utils.dart';

/// TODO: Implement way to access and control or reactive state
/// TODO: Done specifically for the sidebar
class GenitLeadSidebar extends HookWidget {
  const GenitLeadSidebar({
    required this.resizableController,
  });

  final ResizableController resizableController;

  @override
  Widget build(BuildContext context) {
    final panelSize = useListenableSelector(
      resizableController,
      () => resizableController.panelSize,
    );

    return Column(
      children: [
        DSSidebarSectionHeader(
          background: ColorVariant.yellow,
          title: SafeArea(
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    resizableController.panelSize += 10;
                  },
                  child: SizedBox.square(
                    dimension: 60,
                    child: ColoredBox(
                      color: ColorVariant.background //
                          .resolve(context)
                          .withOpacity(
                              OpacityVariant.blend.resolve(context).value),
                    ),
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
          child: Column(
            children: [
              Expanded(
                child: DSSidebar(
                  sections: [
                    DSSidebarSection(
                      pinned: true,
                      children: [
                        GenitEmojiButton(
                          background: ColorVariant.yellow,
                          highlight: ButtonHighlight.focus,
                          emoji: '🏠',
                          label: 'Zen\'s desk',
                          onPressed: () {},
                        ),
                        PinnedHeaderSliver(
                          child: GenitEmojiButton(
                            background: ColorVariant.yellow,
                            // highlight: ButtonHighlight.focus,
                            kind: ButtonKind.outline,
                            label: 'Create folder',
                            emoji: '🗂️',
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    HookBuilder(
                      builder: (context) {
                        final pinned = useState(false);
                        return DSSidebarSection(
                          pinned: pinned.value,
                          header: DSSidebarSectionHeader(
                            pinned: pinned.value,
                            onPinnedChanged: (value) => pinned.value = value,
                            background: ColorVariant.purple,
                            title: StyledText('Draft'),
                          ),
                          children: [
                            GenitEmojiButton(
                              background: ColorVariant.purple,
                              highlight: ButtonHighlight.focus,
                              emoji: '➕',
                              label: 'Create board',
                              onPressed: () {},
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
              Button(
                onPressed: () {},
                background: ColorVariant.green,
                kind: ButtonKind.filled,
                style: Style(
                  $box.padding.all.ref(SpaceVariant.large),
                ),
                child: StyledRow(
                  inherit: true,
                  style: Style(
                    $flex.gap.ref(SpaceVariant.gap),
                  ),
                  children: [
                    StyledIcon(IconlyBroken.upload),
                    StyledText('Input pool'),
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
