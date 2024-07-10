import 'dart:math';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:genit_common/genit_common.dart';
import 'package:iconly/iconly.dart';
import 'package:mix/mix.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:utils/utils.dart';

/// TODO: Implement way to access and control or reactive state
/// TODO: Done specifically for the sidebar
class GenitLeadSidebar extends HookWidget {
  const GenitLeadSidebar({
    required this.resizableController,
  });

  static const double _minSize = 150;

  final ResizableController resizableController;

  @override
  Widget build(BuildContext context) {
    final panelSize = useListenableSelector(
      resizableController,
      () => resizableController.panelSize,
    );

    final genitEmojiButtonKind = switch (panelSize) {
      < _minSize => GenitEmojiButtonKind.emojiOnly,
      _ => GenitEmojiButtonKind.emojiWithLabel,
    };

    return Column(
      children: [
        WindowMover(
          child: DSSidebarSectionHeader(
            style: Style(
              $box.padding.horizontal.ref(SpaceVariant.medium),
              $box.padding.vertical.ref(SpaceVariant.medium),
            ),
            background: ColorVariant.yellow,
            title: SafeArea(
              child: HBox(
                style: Style(
                  $flex.mainAxisAlignment.center(),
                ),
                children: [
                  GestureDetector(
                    onTap: () {
                      resizableController.panelSize += 10;
                    },
                    child: SizedBox(
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
                  ),
                  if (panelSize > _minSize)
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
                    ),
                ],
              ),
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
                          kind: genitEmojiButtonKind,
                          background: ColorVariant.yellow,
                          highlight: ButtonHighlight.focus,
                          emoji: '🏠',
                          label: 'Zen\'s desk',
                          onPressed: () {},
                        ),
                        SliverPinnedHeader(
                          child: HookBuilder(
                            builder: (context) {
                              final showCreateForm = useState(false);

                              return EmojiLabelEditorPopup(
                                background: ColorVariant.yellow,
                                visible: showCreateForm.value,
                                child: GenitEmojiButton(
                                  kind: genitEmojiButtonKind,
                                  background: ColorVariant.yellow,
                                  // highlight: ButtonHighlight.focus,
                                  buttonKind: ButtonKind.outline,
                                  label: 'Create folder',
                                  emoji: '🗂️',
                                  onPressed: () => showCreateForm.value =
                                      !showCreateForm.value,
                                ),
                                emojiPickerSize: panelSize,
                              );
                            },
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
                            title: GenitEmojiLabelEditor(
                              emoji: '📌',
                              label: 'Pinned',
                              autofocus: false,
                              onEmojiSelected: (value) {},
                              onLabelChanged: (value) {},
                              labelStyle: TextStyleVariant.h6.resolve(context),
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
                                    child: GenitEmojiButton(
                                      kind: genitEmojiButtonKind,
                                      background: ColorVariant.purple,
                                      highlight: ButtonHighlight.focus,
                                      emoji: '➕',
                                      label: 'Create board',
                                      onPressed: () => showCreateForm.value =
                                          !showCreateForm.value,
                                    ),
                                    emojiPickerSize: panelSize,
                                  );
                                },
                              ),
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

class EmojiLabelEditorPopup extends HookWidget {
  const EmojiLabelEditorPopup({
    super.key,
    required this.visible,
    required this.emojiPickerSize,
    required this.background,
    this.emoji,
    this.label,
    this.onSubmitted,
    required this.child,
  });

  final bool visible;
  final double emojiPickerSize;
  final ColorVariant background;

  final String? emoji;
  final String? label;

  final void Function(String emoji, String label)? onSubmitted;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final randomEmoji = useMemoized(
      () => emoji ?? StringUtils.randomEmoji(),
      [visible, emoji],
    );
    final emojiNotifier = useState(randomEmoji);
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        emojiNotifier.value = randomEmoji;
      });
      return null;
    }, [randomEmoji]);
    final labelNotifier = useValueNotifier(label ?? '');

    return PortalTarget(
      visible: visible,
      anchor: switch (emojiPickerSize) {
        < GenitEmojiLabelEditor.emojiPickerWidth => Aligned(
            target: Alignment.topRight,
            follower: Alignment.topLeft,
          ),
        _ => Aligned(
            target: Alignment.bottomCenter,
            follower: Alignment.topCenter,
          ),
      },
      portalFollower: Portal(
        child: SizedBox(
          height: double.maxFinite,
          width: max(emojiPickerSize, GenitEmojiLabelEditor.emojiPickerWidth),
          child: Align(
            alignment: Alignment.topCenter,
            child: DSCard(
              background: background,
              kind: DSCardKind.elevated,
              style: Style(
                switch (emojiPickerSize) {
                  < GenitEmojiLabelEditor.emojiPickerWidth =>
                    $box.margin.left.ref(SpaceVariant.gap),
                  _ => $box.margin.top.ref(SpaceVariant.gap),
                },
                $box.height(40),
                $box.padding.horizontal.ref(SpaceVariant.gap),
                $box.padding.vertical.ref(SpaceVariant.gap),
              ),
              child: GenitEmojiLabelEditor(
                emoji: emojiNotifier.value,
                label: label ?? '',
                autofocus: true,
                onEmojiSelected: (value) => emojiNotifier.value = value,
                onLabelChanged: (value) => labelNotifier.value = value,
                onSubmitted: () => onSubmitted?.call(
                  emojiNotifier.value,
                  labelNotifier.value,
                ),
              ),
            ),
          ),
        ),
      ),
      child: child,
    );
  }
}
