part of 'button.dart';

class ButtonKind extends Variant {
  const ButtonKind(super.name);

  static const flat = ButtonKind('flat');
  static const outline = ButtonKind('outline');
  static const filled = ButtonKind('filled');
}
