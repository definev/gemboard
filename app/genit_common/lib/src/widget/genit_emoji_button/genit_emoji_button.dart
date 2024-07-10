import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

part 'genit_emoji_button.style.dart';
part 'genit_emoji_button.variant.dart';

class GenitEmojiButton extends StyledWidget {
  const GenitEmojiButton({
    super.key,
    required this.background,
    required this.emoji,
    required this.label,
    required this.onPressed,
    this.buttonKind = ButtonKind.flat,
    this.highlight = ButtonHighlight.defer,
    this.kind = GenitEmojiButtonKind.emojiWithLabel,
    super.style,
    super.orderOfModifiers = const [],
    super.inherit,
  });

  final ColorVariant background;
  final ButtonHighlight highlight;
  final GenitEmojiButtonKind kind;
  final ButtonKind buttonKind;

  final String emoji;
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return withMix(
      context,
      (context) => Button(
        style: style,
        kind: buttonKind,
        highlight: highlight,
        background: background,
        onPressed: onPressed,
        child: StyledRow(
          inherit: true,
          style: Style(
            $flex.gap.ref(SpaceVariant.gap),
            $flex.mainAxisAlignment.center(),
          ),
          children: [
            SizedBox.square(
              dimension: 32,
              child: Center(
                child: StyledText(
                  emoji,
                  style: Style(
                    $text.style.ref(TextStyleVariant.emoji),
                  ),
                ),
              ),
            ),
            if (kind == GenitEmojiButtonKind.emojiWithLabel)
              StyledText(
                label,
                style: Style(
                  $with.expanded(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
