import 'dart:math';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:folder/folder.dart';
import 'package:gemboard_common/gemboard_common.dart';
import 'package:home/home.dart';
import 'package:home/src/view/gemboard_sidebar_header.dart';
import 'package:home/src/widget/gemboard_folder_builder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:mix/mix.dart';
import 'package:settings/settings.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:utils/utils.dart';
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
    final homeNavigation = ref.read(HomeNavigation.provider);

    final foldersAsyncValue = ref.watch(getFolderListProvider);

    return LayoutBuilder(
      builder: (context, constraints) {
        final panelSize = constraints.biggest.width;

        final gemboardEmojiLabelKind = switch (panelSize) {
          < _minSize => EmojiLabelKind.emojiOnly,
          _ => EmojiLabelKind.emojiWithLabel,
        };

        if (panelSize <= 0) return SizedBox();

        var folderList = DSSidebar(
          sections: [
            DSSidebarSection(
              pinned: true,
              header: Consumer(
                builder: (context, ref, child) {
                  final defaultWhiteboardAsyncValue = ref.watch(
                    getWhiteboardByIdProvider(id: WhiteboardId.defaultValue),
                  );
                  return switch (defaultWhiteboardAsyncValue) {
                    AsyncLoading() => SizedBox(),
                    AsyncError() => SizedBox(),
                    AsyncData(:final value) => Button(
                        child: EmojiLabel(
                          kind: gemboardEmojiLabelKind,
                          emoji: StyledText(value.emoji),
                          label: StyledText(value.title),
                        ),
                        background: ColorVariant.yellow,
                        highlight: ButtonHighlight.focus,
                        onPressed: () =>
                            whiteboardNavigation.openWhiteboardEditor(
                          context,
                          id: value.id,
                          resiableController: resizableController,
                        ),
                      ),
                    _ => SizedBox(),
                  };
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
                        onSubmitted: (emoji, label) {
                          ref.read(
                            createFolderProvider(
                              data: Folder(
                                emoji: emoji,
                                title: label,
                                id: FolderId(
                                  id: Helper.createId(),
                                ),
                              ),
                            ).future,
                          );
                          showCreateForm.value = false;
                        },
                        child: Button(
                          background: ColorVariant.yellow,
                          kind: ButtonKind.outline,
                          onPressed: () =>
                              showCreateForm.value = !showCreateForm.value,
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
                ...switch (foldersAsyncValue) {
                  AsyncLoading() => [],
                  AsyncError() => [],
                  AsyncData(:final value) when value.isEmpty => [
                      SliverFillRemaining(
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              StyledText(
                                '💎',
                                style: Style(
                                  $text.style.fontSize(48),
                                ),
                              )
                                  .animate(
                                      onPlay: (controller) =>
                                          controller.loop(reverse: true))
                                  .scaleXY(
                                    begin: 1.0,
                                    end: 1.1,
                                  )
                                  .shake(
                                    delay: Duration(seconds: 1),
                                    duration: Duration(
                                      milliseconds: 400,
                                    ),
                                    hz: 2.5,
                                    rotation: pi / 10,
                                  ),
                              SizedBox(
                                height: SpaceVariant.small.resolve(context),
                              ),
                              StyledText(
                                'Start your first 💎board',
                                style: Style(
                                  $text.style.ref(TextStyleVariant.h5),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  AsyncData(:final value) => [
                      MultiSliver(
                        children: [
                          for (final folder in value)
                            Consumer(
                              builder: (context, ref, child) {
                                final parentId = WhiteboardParentId(
                                  folderId: folder.id.id,
                                );
                                final whiteboardLitAsyncValue = ref.watch(
                                  getWhiteboardListProvider(parentId: parentId),
                                );
                                return GemboardFolderBuilder(
                                  background: ColorVariant.purple,
                                  gemboardEmojiLabelKind:
                                      gemboardEmojiLabelKind,
                                  emoji: folder.emoji,
                                  label: folder.title,
                                  onChangeEmojiLabel: (emoji, label) {},
                                  onCreateGemboard: () {
                                    ref.read(
                                      createWhiteboardProvider(
                                        parentId: parentId,
                                        data: Whiteboard(
                                          id: WhiteboardId(
                                            parentId: parentId,
                                            id: Helper.createId(),
                                          ),
                                          emoji: StringUtils.randomEmoji(),
                                          title: 'Untitled',
                                        ),
                                      ).future,
                                    );
                                  },
                                  children: switch (whiteboardLitAsyncValue) {
                                    AsyncLoading() => [],
                                    AsyncError() => [],
                                    AsyncData(:final value) => [
                                        for (final whiteboard in value)
                                          Button(
                                            background: ColorVariant.purple,
                                            onPressed: () =>
                                                whiteboardNavigation
                                                    .openWhiteboardEditor(
                                              context,
                                              id: whiteboard.id,
                                              resiableController:
                                                  resizableController,
                                            ),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: EmojiLabel(
                                                    kind:
                                                        gemboardEmojiLabelKind,
                                                    emoji: StyledText(
                                                        whiteboard.emoji),
                                                    label: StyledText(
                                                        whiteboard.title),
                                                  ),
                                                ),
                                                StyledIcon(IconlyLight.edit),
                                              ],
                                            ),
                                          ),
                                      ],
                                    _ => [],
                                  },
                                );
                              },
                            ),
                        ],
                      ),
                    ],
                  _ => [],
                },
              ],
            ),
          ],
        );
        return ColoredBox(
          color: ColorVariant.surface.resolve(context),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  resizableController.hide();
                  homeNavigation.goToHome();
                },
                child: GemboardSidebarHeader(
                  panelSize: panelSize,
                  minSize: _minSize,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: folderList,
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
