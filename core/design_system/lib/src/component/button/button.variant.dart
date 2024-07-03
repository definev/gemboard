part of 'button.dart';

class ButtonKind extends Variant {
  const ButtonKind(super.name);
  
  static const primary = ButtonKind('primary');
  static const outlined = ButtonKind('outlined');
}

class ButtonSize extends Variant {
  const ButtonSize(super.name);
  
  static const small = ButtonSize('small');
  static const medium = ButtonSize('medium');
}

class ButtonShape extends Variant {
  const ButtonShape(super.name);
  
  static const pill = ButtonShape('pill');
}

class ButtonOpacity extends Variant {
  const ButtonOpacity(super.name);
  
  static const none = ButtonOpacity('none');
  static const dim = ButtonOpacity('dim');
}