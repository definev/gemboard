import 'package:mix/mix.dart';

class PressVariant extends Variant {
  const PressVariant(super.name);

  static const PressVariant press = PressVariant('press');
  static const PressVariant unpress = PressVariant('unpress');
}

class FocusVariant extends Variant {
  const FocusVariant(super.name);

  static const FocusVariant focus = FocusVariant('focus');
  static const FocusVariant unfocus = FocusVariant('hover');
}


class HoverVariant extends Variant {
  const HoverVariant(super.name);

  static const HoverVariant hover = HoverVariant('hover');
  static const HoverVariant unhover = HoverVariant('unhover');
}