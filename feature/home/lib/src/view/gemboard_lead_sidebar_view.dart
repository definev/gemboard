import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:folder/folder.dart';
import 'package:gemboard_common/gemboard_common.dart';
import 'package:home/home.dart';
import 'package:home/src/view/gemboard_sidebar_header.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:import_export/import_export.dart';
import 'package:mix/mix.dart';
import 'package:settings/settings.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:utils/utils.dart';
import 'package:whiteboard/whiteboard.dart';

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
    final importExportNavigation = ref.read(ImportExportNavigation.provider);

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
                          resizableController: resizableController,
                        ),
                      ),
                    _ => SizedBox(),
                  };
                },
              ),
              children: [
                ...switch (ref.watch(getWhiteboardListProvider(
                    parentId: const WhiteboardParentId()))) {
                  AsyncLoading() => [],
                  AsyncData(:final value) => [
                      for (final whiteboard in value)
                        if (whiteboard.id != WhiteboardId.defaultValue)
                          WhiteboardEditorButton(
                            background: ColorVariant.yellow,
                            whiteboard: whiteboard,
                            onWhiteboardPressed: (whiteboard) =>
                                whiteboardNavigation.openWhiteboardEditor(
                              context,
                              id: whiteboard.id,
                              resizableController: resizableController,
                            ),
                          ),
                    ],
                  _ => [],
                },
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
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Button(
                                background: ColorVariant.yellow,
                                highlight: ButtonHighlight.focus,
                                onPressed: () async {
                                  final data = Whiteboard(
                                    id: WhiteboardId(
                                      parentId: WhiteboardParentId(),
                                      id: Helper.createId(),
                                    ),
                                    emoji: StringUtils.randomEmoji(),
                                    title: 'Untitled',
                                  );
                                  await ref.read(
                                    createWhiteboardProvider(
                                      parentId: WhiteboardParentId(),
                                      data: data,
                                    ).future,
                                  );
                                  whiteboardNavigation.openWhiteboardEditor(
                                    context,
                                    id: data.id,
                                    whiteboard: data,
                                    resizableController: resizableController,
                                  );
                                },
                                child: EmojiLabel(
                                  kind: gemboardEmojiLabelKind,
                                  emoji: StyledText('📜'),
                                  label: StyledText('Start new gemboard'),
                                ),
                              ),
                            ),
                            Button(
                              style: Style(
                                $box.width(40),
                                $box.height(40),
                              ),
                              background: ColorVariant.yellow,
                              kind: ButtonKind.filled,
                              onPressed: () =>
                                  showCreateForm.value = !showCreateForm.value,
                              child: Center(
                                child: StyledText(
                                  '🗂️',
                                  style: Style(
                                    $text.style.ref(TextStyleVariant.emoji),
                                    $text.style.fontSize(24),
                                  ),
                                ),
                              ),
                            ),
                          ],
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
                        child: EmptyFolderView(),
                      ),
                    ],
                  AsyncData(value: final folders) => [
                      FolderListView(
                        folders: folders,
                        gemboardEmojiLabelKind: gemboardEmojiLabelKind,
                        onImport: (id) {
                          importExportNavigation.pushToImportFlow(folderId: id);
                        },
                        onCreateGemboard: (data) {
                          whiteboardNavigation.openWhiteboardEditor(
                            context,
                            id: data.id,
                            whiteboard: data,
                            resizableController: resizableController,
                          );
                        },
                        onWhiteboardPressed: (whiteboard) {
                          whiteboardNavigation.openWhiteboardEditor(
                            context,
                            id: whiteboard.id,
                            resizableController: resizableController,
                          );
                        },
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
                      background: ColorVariant.green,
                      kind: ButtonKind.outline,
                      style: Style(
                        $box.padding.horizontal.ref(SpaceVariant.small),
                        $box.padding.vertical.ref(SpaceVariant.medium),
                        $box.alignment.center(),
                      ),
                      onPressed: () =>
                          importExportNavigation.pushToImportFlow(),
                      child: StyledText('Import gemboard'),
                    ),
                    Button(
                      onPressed: () {
                        resizableController.hide();
                        settingsNavigation.pushSettingsFlow();
                      },
                      background: ColorVariant.green,
                      kind: ButtonKind.filled,
                      style: Style(
                        $box.padding.horizontal.ref(SpaceVariant.small),
                        $box.padding.vertical.ref(SpaceVariant.medium),
                      ),
                      child: SafeArea(
                        top: false,
                        child: StyledRow(
                          inherit: true,
                          style: Style(
                            $flex.gap.ref(SpaceVariant.small),
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
