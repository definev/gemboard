import 'dart:math';

const List<String> emojis = [
  '📅',
  '🗂',
  '🗒️',
  '📈',
  '📊',
  '📋',
  '💼',
  '📌',
  '📝',
  '✅',
  '🥗',
  '🥦',
  '🍎',
  '🍊',
  '🥑',
  '🍇',
  '🚴‍♂️',
  '🏃‍♀️',
  '🧘‍♂️',
  '🛌',
  '🎨',
  '🎭',
  '🎤',
  '🎧',
  '🎬',
  '📷',
  '✏️',
  '🖌️',
  '📝',
  '🎸'
];
final random = Random();

class StringUtils {
  static String randomEmoji() {
    return emojis[random.nextInt(emojis.length)];
  }
}
