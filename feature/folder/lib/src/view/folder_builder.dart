import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:gemboard_common/gemboard_common.dart';
import 'package:iconly/iconly.dart';
import 'package:mix/mix.dart';
import 'package:sliver_tools/sliver_tools.dart';

class FolderBuilder extends HookWidget {
  const FolderBuilder({
    super.key,
    required this.gemboardEmojiLabelKind,
    required this.background,
    required this.emoji,
    required this.label,
    required this.onChangeEmojiLabel,
    required this.onCreateGemboard,
    required this.onDeleteFolder,
    this.anchor,
    required this.children,
  });

  final EmojiLabelKind gemboardEmojiLabelKind;
  final ColorVariant background;

  final String emoji;
  final String label;
  final void Function(String emoji, String label) onChangeEmojiLabel;
  final VoidCallback onCreateGemboard;
  final VoidCallback onDeleteFolder;
  final Anchor? anchor;

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final pinned = useState(false);
    final openEditor = useState(false);
    final openMenu = useState(false);

    final mobileBreakpoint = BreakpointToken.small.resolve(context).maxWidth;

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
        child: LayoutBuilder(
          builder: (context, constraints) {
            final anchor = this.anchor ??
                switch (constraints.maxWidth <= mobileBreakpoint) {
                  true => const Aligned(
                      target: Alignment.bottomRight,
                      follower: Alignment.topRight,
                    ),
                  false => const Aligned(
                      target: Alignment.topRight,
                      follower: Alignment.topLeft,
                    )
                };
            return DSSidebarSectionHeader(
              background: background,
              pinned: pinned.value,
              title: PortalTarget(
                anchor: anchor,
                visible: openMenu.value && !openEditor.value,
                portalFollower: IntrinsicHeight(
                  child: VBox(
                    style: Style(
                      $box.width(150),
                      switch (openEditor.value) {
                        true => $box.margin.top(40),
                        false => $box.margin.top(0),
                      },
                      switch (anchor) {
                        const Aligned(
                          target: Alignment.topRight,
                          follower: Alignment.topLeft,
                        ) =>
                          $box.margin.horizontal.ref(SpaceVariant.medium),
                        const Aligned(
                          target: Alignment.bottomRight,
                          follower: Alignment.topRight,
                        ) =>
                          $box.margin.vertical.ref(SpaceVariant.small),
                        _ => null,
                      },
                      $box.border.all(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignOutside,
                        color: background.resolve(context),
                      ),
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
                        onPressed: () {
                          openMenu.value = false;
                          onDeleteFolder();
                        },
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
            );
          },
        ),
      ),
      children: [
        SliverPinnedHeader(
          child: HookBuilder(
            builder: (context) {
              return Button(
                background: ColorVariant.purple,
                highlight: ButtonHighlight.focus,
                onPressed: onCreateGemboard,
                child: EmojiLabel(
                  kind: gemboardEmojiLabelKind,
                  emoji: StyledText('➕'),
                  label: StyledText('Create gemboard'),
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
