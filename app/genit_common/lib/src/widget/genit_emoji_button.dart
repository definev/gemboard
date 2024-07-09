import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

class GenitEmojiButton extends StatelessWidget {
  const GenitEmojiButton({
    super.key,
    required this.background,
    required this.emoji,
    required this.label,
  });

  final ColorVariant background;
  final String emoji;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Button(
      kind: ButtonKind.flat,
      background: background,
      onPressed: () {},
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