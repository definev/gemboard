import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:gemboard_common/gemboard_common.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:mix/mix.dart';
import 'package:whiteboard/whiteboard.dart';

class WhiteboardEditorButton extends ConsumerWidget {
  const WhiteboardEditorButton({
    super.key,
    required this.onWhiteboardPressed,
    required this.whiteboard,
    required this.background,
  });

  final Whiteboard whiteboard;
  final void Function(Whiteboard whiteboard) onWhiteboardPressed;
  final ColorVariant background;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Button(
      background: background,
      style: Style(
        $box.padding.right.ref(SpaceVariant.small),
      ),
      onPressed: () => onWhiteboardPressed(whiteboard),
      child: Row(
        children: [
          Expanded(
            child: EmojiLabelEditor(
              autofocus: whiteboard.title.isEmpty,
              emoji: whiteboard.emoji,
              label: whiteboard.title,
              onEmojiSelected: (value) => ref.read(
                updateWhiteboardProvider(
                  id: whiteboard.id,
                  data: whiteboard.copyWith(emoji: value),
                ).future,
              ),
              onLabelChanged: (value) => ref.read(
                updateWhiteboardProvider(
                  id: whiteboard.id,
                  data: whiteboard.copyWith(title: value),
                ).future,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => onWhiteboardPressed(whiteboard),
            child: StyledIcon(IconlyLight.arrow_right_square),
          ),
        ],
      ),
    );
  }
}
