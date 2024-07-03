part of 'textbox.dart';

sealed class TextboxStateVariant extends Variant {
  const TextboxStateVariant(super.name);

  const factory TextboxStateVariant.inherit() = InheritTextboxVariant;
  const factory TextboxStateVariant.unfocus() = UnfocusTextboxVariant;
  const factory TextboxStateVariant.focus() = FocusTextboxVariant;
  const factory TextboxStateVariant.error() = ErrorTextboxVariant;
}

class InheritTextboxVariant extends TextboxStateVariant {
  const InheritTextboxVariant() : super('inherit');
}

class UnfocusTextboxVariant extends TextboxStateVariant {
  const UnfocusTextboxVariant() : super('label');
}

class FocusTextboxVariant extends TextboxStateVariant {
  const FocusTextboxVariant() : super('error');
}

class ErrorTextboxVariant extends TextboxStateVariant {
  const ErrorTextboxVariant() : super('error');
}

sealed class TextboxTypeVariant extends Variant {
  const TextboxTypeVariant(super.name);

  
  const factory TextboxTypeVariant.label() = LabelTextboxVariant;
  const factory TextboxTypeVariant.unlabel() = UnlabelTextboxVariant;
}

class LabelTextboxVariant extends TextboxTypeVariant {
  const LabelTextboxVariant() : super('label');
}

class UnlabelTextboxVariant extends TextboxTypeVariant {
  const UnlabelTextboxVariant() : super('unlabel');
}
