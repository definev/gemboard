import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

part 'emoji_label.variant.dart';

class EmojiLabel extends StatelessWidget {
  const EmojiLabel({
    super.key,
    this.kind = EmojiLabelKind.emojiWithLabel,
    required this.emoji,
    required this.label,
    this.trailing,
  });

  final EmojiLabelKind kind;

  /// Usually a [StyledText] with emoji
  final Widget emoji;

  /// Usually a [StyledText] with text
  final Widget label;

  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    var emojiWidget = SizedBox.square(
      dimension: 32,
      child: Center(
        child: Mix(
          data: Style(
            $text.style.ref(TextStyleVariant.emoji),
          ).of(context),
          child: emoji,
        ),
      ),
    );
    var labelWidget = Expanded(
      child: label,
    );

    return StyledRow(
      inherit: true,
      style: Style(
        $flex.gap.ref(SpaceVariant.gap),
        $flex.mainAxisAlignment.center(),
      ),
      children: switch (kind) {
        EmojiLabelKind.emojiOnly => [
            emojiWidget,
            if (trailing != null) trailing!,
          ],
        EmojiLabelKind.emojiWithLabel => [
            emojiWidget,
            labelWidget,
            if (trailing != null) trailing!,
          ],
        _ => [],
      },
    );
  }
}
