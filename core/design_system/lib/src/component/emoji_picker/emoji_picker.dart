import 'package:emoji_selector/emoji_selector.dart';
import 'package:flutter/material.dart';

class DSEmojiPicker extends StatelessWidget {
  const DSEmojiPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return EmojiSelector(
      onSelected: (emoji) {},
    );
  }
}
