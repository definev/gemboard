import 'dart:math';

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

  static ColorVariant? tryParse(String color) => switch (color) {
        'red' => ColorVariant.red,
        'green' => ColorVariant.green,
        'blue' => ColorVariant.blue,
        'yellow' => ColorVariant.yellow,
        'purple' => ColorVariant.purple,
        'pink' => ColorVariant.pink,
        'cyan' => ColorVariant.cyan,
        _ => null,
      };
  
  static final rand = Random();
  
  static String randonColor() => switch (rand.nextInt(7)) {
    0 => 'red',
    1 => 'green',
    2 => 'blue',
    3 => 'yellow',
    4 => 'purple',
    5 => 'pink',
    6 => 'cyan',
    _ => 'red',
  };

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
  ColorVariant.outline: Color.fromARGB(255, 166, 166, 166),
  ColorVariant.surface: Color(0xFFFFFFFF),
  ColorVariant.background: Color(0xFFEAE8E5),
  ColorVariant.onSurface: Color(0xFF030637),
  ColorVariant.onBackground: Color(0xFF222831),
  ColorVariant.yellow: Color(0xFFFEC457),
  ColorVariant.onYellow: Color(0xFF191208),
  ColorVariant.red: Color(0xFFEF9A9A),
  ColorVariant.onRed: Color(0xFF000000),
  ColorVariant.green: Color(0xFF81C784),
  ColorVariant.onGreen: Color.fromARGB(255, 255, 255, 255),
  ColorVariant.blue: Color(0xFF4FC3F7),
  ColorVariant.onBlue: Color.fromARGB(255, 255, 255, 255),
  ColorVariant.cyan: Color(0xFF4FC3F7),
  ColorVariant.onCyan: Color.fromARGB(255, 255, 255, 226),
  ColorVariant.purple: Color(0xFFBA68C8),
  ColorVariant.onPurple: Color.fromARGB(255, 240, 239, 253),
  ColorVariant.pink: Color(0xFFF08080),
  ColorVariant.onPink: Color.fromARGB(255, 255, 255, 255),
};
