import 'package:design_system/src/token/opacity.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

class DesignSystemTheme extends InheritedWidget {
  const DesignSystemTheme(
      {required super.child, required this.data, super.key});

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

  const DesignSystemThemeData.raw({required this.opacities});

  factory DesignSystemThemeData({
    Map<OpacityValueToken, OpacityValue>? opacities,
  }) {
    return DesignSystemThemeData.raw(
      opacities: StyledTokens(opacities ?? {}),
    );
  }

  @override
  get props => [opacities];
}
