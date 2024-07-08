import 'package:emoji_selector/emoji_selector.dart';
import 'package:flutter/material.dart';

class DSEmojiPicker extends StatelessWidget {
  const DSEmojiPicker({
    super.key,
    required this.onSelected,
    this.emojiTextStyle = const TextStyle(
      fontSize: 20.0,
      fontFamily: 'Apple Color Emoji',
    ),
  });

  final ValueChanged<String> onSelected;
  final TextStyle emojiTextStyle;

  @override
  Widget build(BuildContext context) {
    return EmojiSelector(
      onSelected: (emoji) => onSelected(emoji.char),
      emojiTextStyle: emojiTextStyle,
    );
  }
}
