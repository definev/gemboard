import 'package:flutter/widgets.dart';
import 'package:mix/mix.dart';

abstract base class ColorVariant {
  static const border = ColorToken('border');

  static const success = ColorToken('success');

  static const error = ColorToken('error');

  static const onDisable = ColorToken('onDisable');

  static const disable = ColorToken('disable');

  static const onBackgroundDim = ColorToken('onBackgroundDim');

  static const onBackground = ColorToken('onBackground');

  static const background = ColorToken('background');

  static const onPrimary = ColorToken('onPrimary');

  static const primary = ColorToken('primary');
}

final colors = {
  ColorVariant.primary: Color(0xFFFF0000),
  ColorVariant.onPrimary: Color(0xFFFFFFFF),
  ColorVariant.background: Color(0xFFFFFFFF),
  ColorVariant.onBackground: Color(0xFF1F1F1F),
  ColorVariant.onBackgroundDim: Color(0xFF757575),
  ColorVariant.disable: Color(0xFFE2E2E2),
  ColorVariant.onDisable: Color(0xFFAFAFAF),
//
  ColorVariant.error: Color(0xFFE60A32),
  ColorVariant.success: Color(0xFF00BC3C),
  ColorVariant.border: Color(0xFFCBCBCB),
};
