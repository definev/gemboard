part of 'button.dart';

class ButtonKind extends Variant {
  const ButtonKind(super.name);

  static const flat = ButtonKind('flat');
  static const outline = ButtonKind('outline');
  static const filled = ButtonKind('filled');
}

class ButtonHighlight extends Variant {
  const ButtonHighlight(super.name);

  static const defer = ButtonHighlight('none');
  static const hover = ButtonHighlight('hover');
  static const focus = ButtonHighlight('focus');
  static const pressed = ButtonHighlight('pressed');
}
