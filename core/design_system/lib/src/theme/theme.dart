import 'package:design_system/src/theme/design_system_theme.dart';
import 'package:design_system/src/token/font/font.variant.dart';
import 'package:design_system/src/token/opacity.dart';
import 'package:design_system/src/token/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

import '../token/breakpont.dart';
import '../token/color.dart';
import '../token/radii.dart';
import '../token/spaces.dart';

MixThemeData mixTheme = MixThemeData(
  colors: colors,
  spaces: spaces,
  breakpoints: breakpoints,
  radii: radii,
);

DesignSystemThemeData designSystemThemeData = DesignSystemThemeData(
  opacities: opacities,
  textStyles: notoSansTextStyles,
  font: FontVariant.beVietnamPro,
);

ThemeData dsTheme = ThemeData(
  scaffoldBackgroundColor: colors[ColorVariant.background],
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: colors[ColorVariant.onSurface],
    selectionColor: colors[ColorVariant.onSurface]!.withOpacity(0.15),
    selectionHandleColor: colors[ColorVariant.onSurface],
  ),
);
