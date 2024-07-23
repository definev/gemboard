import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:gemboard_common/gemboard_common.dart';
import 'package:home/src/view/gemboard_sidebar_header.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:mix/mix.dart';
import 'package:settings/settings.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:whiteboard/whiteboard.dart';

/// TODO: Implement way to access and control or reactive state
/// TODO: Done specifically for the sidebar
class GemboardLeadSidebar extends HookConsumerWidget {
  const GemboardLeadSidebar({
    this.minSize = _minSize,
    required this.resizableController,
  });

  static const double _minSize = 120;

  final double minSize;
  final ResizableController resizableController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final whiteboardNavigation = ref.read(WhiteboardNavigation.provider);
    final settingsNavigation = ref.read(SettingsNavigation.provider);

    return LayoutBuilder(
      builder: (context, constraints) {
        final panelSize = constraints.biggest.width;

        final gemboardEmojiLabelKind = switch (panelSize) {
          < _minSize => EmojiLabelKind.emojiOnly,
          _ => EmojiLabelKind.emojiWithLabel,
        };

        if (panelSize <= 0) return SizedBox();

        return ColoredBox(
          color: ColorVariant.surface.resolve(context),
          child: Column(
            children: [
              gemboardSidebarHeader(
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
                                kind: gemboardEmojiLabelKind,
                                emoji: StyledText('🏠'),
                                label: StyledText('Zen\'s desk'),
                              ),
                              background: ColorVariant.yellow,
                              highlight: ButtonHighlight.focus,
                              onPressed: () {
                                resizableController.hide();
                                whiteboardNavigation.openWhiteboardEditor(
                                  context,
                                  id: const WhiteboardId(
                                    parentId: WhiteboardParentId(),
                                    id: 'default',
                                  ),
                                  resiableController: resizableController,
                                );
                              },
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
                                          kind: gemboardEmojiLabelKind,
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
                          gemboardFolderBuilder(
                            background: ColorVariant.purple,
                            gemboardEmojiLabelKind: gemboardEmojiLabelKind,
                            emoji: '🔭',
                            label: 'Explore',
                            onChangeEmojiLabel: (emoji, label) {},
                            children: [],
                          ),
                        ],
                      ),
                    ),
                    Button(
                      onPressed: () {
                        resizableController.hide();
                        settingsNavigation.pushSettingsFlow();
                      },
                      background: ColorVariant.green,
                      kind: ButtonKind.filled,
                      style: Style(
                        $box.padding.all.ref(SpaceVariant.large),
                      ),
                      child: SafeArea(
                        top: false,
                        child: StyledRow(
                          inherit: true,
                          style: Style(
                            $flex.gap.ref(SpaceVariant.medium),
                            $flex.mainAxisAlignment.center(),
                          ),
                          children: [
                            StyledIcon(IconlyLight.setting),
                            if (panelSize > _minSize)
                              Expanded(
                                child: StyledText(
                                  'Settings',
                                  style: Style(
                                    $text.overflow.ellipsis(),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class gemboardFolderBuilder extends HookWidget {
  const gemboardFolderBuilder({
    super.key,
    required this.gemboardEmojiLabelKind,
    required this.background,
    required this.emoji,
    required this.label,
    required this.onChangeEmojiLabel,
    required this.children,
  });

  final EmojiLabelKind gemboardEmojiLabelKind;
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
                kind: gemboardEmojiLabelKind,
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
                    kind: gemboardEmojiLabelKind,
                    emoji: StyledText('➕'),
                    label: StyledText('Create folder'),
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
