import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:folder/folder.dart';
import 'package:gemboard_common/gemboard_common.dart';
import 'package:mix/mix.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:utils/utils.dart';

class WhiteboardSelectorFlow extends ConsumerWidget {
  const WhiteboardSelectorFlow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final folders = ref.watch(getFolderListProvider);

    return Scaffold(
      body: Portal(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final panelSize = constraints.biggest.width;
            return Column(
              children: [
                DSAppbar(
                  leading: DSBackButton(),
                  title: StyledText('Select a gemboard'),
                ),
                Expanded(
                  child: switch (folders) {
                    AsyncLoading() =>
                      Center(child: const CircularProgressIndicator()),
                    AsyncData(value: final folders) => CustomScrollView(
                        slivers: [
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
                                    kind: ButtonKind.flat,
                                    onPressed: () => showCreateForm.value =
                                        !showCreateForm.value,
                                    child: EmojiLabel(
                                      emoji: StyledText('🗂️'),
                                      label: StyledText('Create folder'),
                                    ),
                                  ),
                                  pickerSize: panelSize,
                                );
                              },
                            ),
                          ),
                          if (folders.isEmpty)
                            SliverFillRemaining(
                              child: EmptyFolderView(),
                            )
                          else
                            FolderListView(
                              folders: folders,
                              gemboardEmojiLabelKind:
                                  EmojiLabelKind.emojiWithLabel,
                              anchor: Aligned(
                                target: Alignment.bottomRight,
                                follower: Alignment.topRight,
                              ),
                              onCreateGemboard: (data) {},
                              onWhiteboardPressed: (whiteboard) =>
                                  Navigator.pop(context, whiteboard),
                            ),
                        ],
                      ),
                    _ => SizedBox(),
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
