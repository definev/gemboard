import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

class GenitEmojiButton extends StatelessWidget {
  const GenitEmojiButton({
    super.key,
    required this.background,
    required this.emoji,
    required this.label,
    required this.onPressed,
    this.kind = ButtonKind.flat,
    this.highlight = ButtonHighlight.defer,
    this.style,
  });

  final ColorVariant background;
  final ButtonHighlight highlight;
  final ButtonKind kind;
  final Style? style;

  final String emoji;
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Button(
      style: style,
      kind: kind,
      highlight: highlight,
      background: background,
      onPressed: onPressed,
      child: StyledRow(
        inherit: true,
        style: Style(
          $flex.gap.ref(SpaceVariant.gap),
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
          StyledText(label),
        ],
      ),
    );
  }
}
