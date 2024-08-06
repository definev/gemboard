import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:folder/folder.dart';
import 'package:folder/src/view/folder_builder.dart';
import 'package:gemboard_common/gemboard_common.dart';
import 'package:iconly/iconly.dart';
import 'package:mix/mix.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:utils/utils.dart';
import 'package:whiteboard/whiteboard.dart';

class FolderListView extends StatelessWidget {
  const FolderListView({
    super.key,
    required this.folders,
    required this.gemboardEmojiLabelKind,

    ///
    required this.onCreateGemboard,
    required this.onWhiteboardPressed,
    this.onDeleteFolder,
    this.onChangeEmojiLabel,
    this.anchor,
  });

  final List<Folder> folders;
  final EmojiLabelKind gemboardEmojiLabelKind;
  final Anchor? anchor;

  final void Function(Whiteboard data) onCreateGemboard;
  final void Function(Whiteboard whiteboard) onWhiteboardPressed;
  final void Function(String emoji, String label)? onChangeEmojiLabel;
  final void Function(FolderId id)? onDeleteFolder;

  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      children: [
        for (final folder in folders)
          Consumer(
            builder: (context, ref, child) {
              final parentId = WhiteboardParentId(
                folderId: folder.id.id,
              );
              final whiteboardLitAsyncValue = ref.watch(
                getWhiteboardListProvider(parentId: parentId),
              );
              return FolderBuilder(
                background: ColorVariant.purple,
                gemboardEmojiLabelKind: gemboardEmojiLabelKind,
                emoji: folder.emoji,
                label: folder.title,
                anchor: anchor,
                onChangeEmojiLabel: onChangeEmojiLabel ??
                    (emoji, label) => ref.read(
                          updateFolderProvider(
                            id: folder.id,
                            data: folder.copyWith(
                              emoji: emoji,
                              title: label,
                            ),
                          ).future,
                        ),
                onDeleteFolder: switch (onDeleteFolder) {
                  null => () =>
                      ref.read(deleteFolderProvider(id: folder.id).future),
                  final onDeleteFolder => () => onDeleteFolder(folder.id),
                },
                onCreateGemboard: () async {
                  final data = Whiteboard(
                    id: WhiteboardId(
                      parentId: parentId,
                      id: Helper.createId(),
                    ),
                    emoji: StringUtils.randomEmoji(),
                    title: 'Untitled',
                  );
                  await ref.read(
                    createWhiteboardProvider(
                      parentId: parentId,
                      data: data,
                    ).future,
                  );

                  onCreateGemboard.call(data);
                },
                children: switch (whiteboardLitAsyncValue) {
                  AsyncLoading() => [],
                  AsyncError() => [],
                  AsyncData(:final value) => [
                      for (final whiteboard in value)
                        WhiteboardEditorButton(
                          onWhiteboardPressed: onWhiteboardPressed,
                          whiteboard: whiteboard,
                          background: ColorVariant.purple,
                        ),
                    ],
                  _ => [],
                },
              );
            },
          ),
      ],
    );
  }
}

