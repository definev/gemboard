import 'package:design_system/src/theme/design_system_theme.dart';
import 'package:design_system/src/token/opacity.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

import '../token/breakpont.dart';
import '../token/color.dart';
import '../token/radii.dart';
import '../token/spaces.dart';
import '../token/text_styles.dart';

MixThemeData mixTheme = MixThemeData(
  colors: colors,
  textStyles: textStyles,
  spaces: spaces,
  breakpoints: breakpoints,
  radii: radii,
);

DesignSystemThemeData designSystemTheme = DesignSystemThemeData(
  opacities: opacities,
);

ThemeData dsTheme = ThemeData(
  scaffoldBackgroundColor: colors[ColorVariant.background],
);
