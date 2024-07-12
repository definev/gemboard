part of 'emoji_label.dart';

class EmojiLabelKind extends Variant {
  const EmojiLabelKind(super.name);

  static const emojiOnly = EmojiLabelKind('emojiOnly');
  static const emojiWithLabel = EmojiLabelKind('emojiWithLabel');
}
