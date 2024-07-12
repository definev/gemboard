import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:genit_common/genit_common.dart';
import 'package:home/src/view/genit_sidebar_header.dart';
import 'package:iconly/iconly.dart';
import 'package:mix/mix.dart';
import 'package:sliver_tools/sliver_tools.dart';

/// TODO: Implement way to access and control or reactive state
/// TODO: Done specifically for the sidebar
class GenitLeadSidebar extends HookWidget {
  const GenitLeadSidebar({
    required this.resizableController,
    this.minSize = _minSize,
  });

  static const double _minSize = 120;

  final ResizableController resizableController;
  final double minSize;

  @override
  Widget build(BuildContext context) {
    final panelSize = useListenableSelector(
      resizableController,
      () => resizableController.panelSize,
    );

    final genitEmojiLabelKind = switch (panelSize) {
      < _minSize => EmojiLabelKind.emojiOnly,
      _ => EmojiLabelKind.emojiWithLabel,
    };

    if (panelSize <= 0) return SizedBox();

    return Column(
      children: [
        GenitSidebarHeader(
          panelSize: panelSize,
          minSize: _minSize,
        ),
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: DSSidebar(
                  sections: [
                    DSSidebarSection(
                      pinned: true,
                      header: Button(
                        child: EmojiLabel(
                          kind: genitEmojiLabelKind,
                          emoji: StyledText('🏠'),
                          label: StyledText('Zen\'s desk'),
                        ),
                        background: ColorVariant.yellow,
                        highlight: ButtonHighlight.focus,
                        onPressed: () {},
                      ),
                      children: [
                        SliverPinnedHeader(
                          child: HookBuilder(
                            builder: (context) {
                              final showCreateForm = useState(false);

                              return EmojiLabelEditorPopup(
                                background: ColorVariant.yellow,
                                visible: showCreateForm.value,
                                child: Button(
                                  background: ColorVariant.yellow,
                                  kind: ButtonKind.outline,
                                  onPressed: () => showCreateForm.value =
                                      !showCreateForm.value,
                                  child: EmojiLabel(
                                    kind: genitEmojiLabelKind,
                                    emoji: StyledText('🗂️'),
                                    label: StyledText('Create folder'),
                                  ),
                                  // highlight: ButtonHighlight.focus,
                                ),
                                pickerSize: panelSize,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    GenitFolderBuilder(
                      background: ColorVariant.purple,
                      genitEmojiLabelKind: genitEmojiLabelKind,
                      emoji: '🔭',
                      label: 'Explore',
                      onChangeEmojiLabel: (emoji, label) {},
                      children: [],
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
                    $flex.gap.ref(SpaceVariant.medium),
                    $flex.mainAxisAlignment.center(),
                  ),
                  children: [
                    StyledIcon(IconlyLight.upload),
                    if (panelSize > _minSize)
                      Expanded(
                        child: StyledText(
                          'Input sources',
                          style: Style(
                            $text.overflow.ellipsis(),
                          ),
                        ),
                      ),
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

class GenitFolderBuilder extends HookWidget {
  const GenitFolderBuilder({
    super.key,
    required this.genitEmojiLabelKind,
    required this.background,
    required this.emoji,
    required this.label,
    required this.onChangeEmojiLabel,
    required this.children,
  });

  final EmojiLabelKind genitEmojiLabelKind;
  final ColorVariant background;

  final String emoji;
  final String label;
  final void Function(String emoji, String label) onChangeEmojiLabel;

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final pinned = useState(false);
    final openEditor = useState(false);
    final openMenu = useState(false);

    return DSSidebarSection(
      pinned: pinned.value,
      header: EmojiLabelEditorPopup(
        visible: openEditor.value,
        background: background,
        onSubmitted: (emoji, label) {
          openEditor.value = false;
          onChangeEmojiLabel(emoji, label);
        },
        emoji: emoji,
        label: label,
        child: DSSidebarSectionHeader(
          background: background,
          pinned: pinned.value,
          title: PortalTarget(
            anchor: const Aligned(
              target: Alignment.topRight,
              follower: Alignment.topLeft,
            ),
            visible: openMenu.value && !openEditor.value,
            portalFollower: IntrinsicHeight(
              child: VBox(
                style: Style(
                  $box.width(150),
                  switch (openEditor.value) {
                    true => $box.margin.top(40),
                    false => $box.margin.top(0),
                  },
                  $box.margin.horizontal.ref(SpaceVariant.medium),
                ),
                children: [
                  Button(
                    onPressed: () => pinned.value = !pinned.value,
                    background: ColorVariant.purple,
                    child: EmojiLabel(
                      emoji: StyledText('📌'),
                      label: switch (pinned.value) {
                        true => StyledText('Unpinned'),
                        false => StyledText('Pinned'),
                      },
                    ),
                  ),
                  Button(
                    onPressed: () => openEditor.value = true,
                    background: ColorVariant.purple,
                    child: EmojiLabel(
                      emoji: StyledText('✏️'),
                      label: StyledText('Edit'),
                    ),
                  ),
                  Button(
                    onPressed: () => openMenu.value = false,
                    background: ColorVariant.red,
                    child: EmojiLabel(
                      emoji: StyledText('🗑️'),
                      label: StyledText('Delete'),
                    ),
                  ),
                ],
              ),
            ),
            child: GestureDetector(
              onTap: () {
                openEditor.value = false;
                openMenu.value = !openMenu.value;
              },
              child: EmojiLabel(
                kind: genitEmojiLabelKind,
                emoji: StyledText(emoji),
                label: StyledText(label),
                trailing: StyledIcon(IconlyLight.more_square),
              ),
            ),
          ),
        ),
      ),
      children: [
        SliverPinnedHeader(
          child: HookBuilder(
            builder: (context) {
              final showCreateForm = useState(false);

              return EmojiLabelEditorPopup(
                background: ColorVariant.purple,
                visible: showCreateForm.value,
                onSubmitted: (emoji, label) => showCreateForm.value = false,
                child: Button(
                  background: ColorVariant.purple,
                  highlight: ButtonHighlight.focus,
                  onPressed: () => showCreateForm.value = !showCreateForm.value,
                  child: EmojiLabel(
                    kind: genitEmojiLabelKind,
                    emoji: StyledText('➕'),
                    label: StyledText('Create jam'),
                  ),
                ),
              );
            },
          ),
        ),
        ...children,
      ],
    );
  }
}
