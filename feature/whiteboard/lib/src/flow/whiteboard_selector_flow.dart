import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:folder/folder.dart';
import 'package:gemboard_common/gemboard_common.dart';
import 'package:mix/mix.dart';

class WhiteboardSelectorFlow extends ConsumerWidget {
  const WhiteboardSelectorFlow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final folders = ref.watch(getFolderListProvider);

    return Scaffold(
      body: Portal(
        child: Column(
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
                      if (folders.isEmpty)
                        SliverFillRemaining(
                          child: Center(
                            child: Text('No folders found'),
                          ),
                        )
                      else
                        FolderListView(
                          folders: folders,
                          gemboardEmojiLabelKind: EmojiLabelKind.emojiWithLabel,
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
        ),
      ),
    );
  }
}
