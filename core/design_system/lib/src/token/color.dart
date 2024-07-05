import 'package:flutter/widgets.dart';
import 'package:mix/mix.dart';

class ColorVariant extends ColorToken {
  const ColorVariant(super.name);

  static const outline = ColorVariant('outline');
  static const surface = ColorVariant('surface');
  static const background = ColorVariant('background');
  static const onSurface = ColorVariant('onSurface');
  static const onBackground = ColorVariant('onBackground');

  static const yellow = ColorVariant('yellow');
  static const onYellow = ColorVariant('onYellow');
  static const red = ColorVariant('red');
  static const onRed = ColorVariant('onRed');
  static const green = ColorVariant('green');
  static const onGreen = ColorVariant('onGreen');
  static const blue = ColorVariant('blue');
  static const onBlue = ColorVariant('onBlue');
  static const cyan = ColorVariant('cyan');
  static const onCyan = ColorVariant('onCyan');
  static const purple = ColorVariant('purple');
  static const onPurple = ColorVariant('onPurple');
  static const pink = ColorVariant('pink');
  static const onPink = ColorVariant('onPink');

  static ColorVariant resolveOnBackground(
    ColorVariant background,
    ColorVariant fallback,
  ) {
    switch (background) {
      case ColorVariant.yellow:
        return ColorVariant.onYellow;
      case ColorVariant.red:
        return ColorVariant.onRed;
      case ColorVariant.green:
        return ColorVariant.onGreen;
      case ColorVariant.blue:
        return ColorVariant.onBlue;
      case ColorVariant.cyan:
        return ColorVariant.onCyan;
      case ColorVariant.purple:
        return ColorVariant.onPurple;
      case ColorVariant.pink:
        return ColorVariant.onPink;
      default:
        return fallback;
    }
  }
}

final colors = {
  ColorVariant.outline: Color(0xFFC3ACD0),
  ColorVariant.surface: Color(0xFFFFFFFF),
  ColorVariant.background: Color(0xFFEAE8E5),
  ColorVariant.onSurface: Color(0xFF030637),
  ColorVariant.onBackground: Color(0xFF222831),
  ColorVariant.yellow: Color(0xFFFEC457),
  ColorVariant.onYellow: Color(0xFF181818),
  ColorVariant.red: Color(0xFFEF9A9A),
  ColorVariant.onRed: Color(0xFF000000),
  ColorVariant.green: Color(0xFF81C784),
  ColorVariant.onGreen: Color(0xFF000000),
  ColorVariant.blue: Color(0xFF4FC3F7),
  ColorVariant.onBlue: Color(0xFF000000),
  ColorVariant.cyan: Color(0xFF4FC3F7),
  ColorVariant.onCyan: Color(0xFF000000),
  ColorVariant.purple: Color(0xFFBA68C8),
  ColorVariant.onPurple: Color(0xFF000000),
  ColorVariant.pink: Color(0xFFF08080),
  ColorVariant.onPink: Color(0xFF000000),
};
