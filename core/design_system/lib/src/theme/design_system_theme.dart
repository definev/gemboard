import 'package:design_system/design_system.dart';
import 'package:design_system/src/token/font/font.variant.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

class DesignSystemTheme extends InheritedWidget {
  const DesignSystemTheme({
    required super.child,
    required this.data,
    super.key,
  });

  static DesignSystemThemeData of(BuildContext context) {
    final themeData =
        context.dependOnInheritedWidgetOfExactType<DesignSystemTheme>()?.data;

    assert(themeData != null, 'No DesignSystemTheme found in context');

    return themeData!;
  }

  static DesignSystemThemeData? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<DesignSystemTheme>()
        ?.data;
  }

  final DesignSystemThemeData data;

  @override
  bool updateShouldNotify(DesignSystemTheme oldWidget) =>
      data != oldWidget.data;
}

@immutable
class DesignSystemThemeData with EquatableMixin {
  final StyledTokens<OpacityValueToken, OpacityValue> opacities;
  final StyledTokens<TextStyleVariant, TextStyle> textStyles;
  final FontVariant font;

  const DesignSystemThemeData.raw({
    required this.opacities,
    required this.textStyles,
    required this.font,
  });

  factory DesignSystemThemeData({
    Map<OpacityValueToken, OpacityValue>? opacities,
    Map<TextStyleVariant, TextStyle>? textStyles,
    FontVariant? font,
  }) {
    return DesignSystemThemeData.raw(
      opacities: StyledTokens(opacities ?? {}),
      textStyles: StyledTokens(textStyles ?? {}),
      font: font ?? FontVariant.garamond,
    );
  }

  @override
  get props => [opacities];
}
