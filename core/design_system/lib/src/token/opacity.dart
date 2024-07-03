import 'package:design_system/src/theme/design_system_theme.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

class OpacityValue {
  const OpacityValue(this.value);

  static const opaque = OpacityValue(0);
  static const full = OpacityValue(1);

  final double value;
}

class OpacityValueToken extends MixToken<OpacityValue> {
  const OpacityValueToken(super.name);

  /// Calls the [ColorToken] to create a [ColorRef] instance.
  @override
  OpacityValueRef call() => OpacityValueRef(this);

  /// Resolves the color value based on the current [BuildContext].
  ///
  /// If the color value is not defined in the theme, an assertion error is thrown.
  /// If the color value is a [OpacityValueResolver], it is resolved dynamically using the [BuildContext].
  /// If the color value is null, [1.0] is returned.
  @override
  OpacityValue resolve(BuildContext context) {
    final themeValue = DesignSystemTheme.of(context).opacities[this];
    assert(
      themeValue != null,
      'OpacityValueToken $name is not defined in the theme',
    );

    return themeValue is OpacityValueResolver
        ? themeValue.resolve(context)
        : themeValue ?? OpacityValue(1.0);
  }
}

/// A color resolver that allows dynamic resolution of a color value.
///
/// This is useful when the color value is dependent on the current [BuildContext],
/// and cannot be resolved statically.
class OpacityValueResolver extends OpacityValue
    with WithTokenResolver<OpacityValue> {
  /// The function used to resolve the color value dynamically.
  @override
  final BuildContextResolver<OpacityValue> resolve;

  const OpacityValueResolver(this.resolve) : super(0.0);
}

/// A reference to a color token.
///
/// This is used to reference a color token in a theme, and is used to resolve the color value.
/// Allows pass a [ColorToken] as a [Color] value.
class OpacityValueRef extends OpacityValue
    with TokenRef<OpacityValueToken, OpacityValue> {
  const OpacityValueRef(this.token) : super(0.0);

  /// The token associated with the color reference.
  @override
  final OpacityValueToken token;

  @override
  operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ColorRef && other.token == token;
  }

  @override
  int get hashCode => token.hashCode;
}

abstract base class OpacityVariant {
  static const opaque = OpacityValueToken('opaque');
  static const disabled = OpacityValueToken('disabled');
  static const dim = OpacityValueToken('dim');
  static const highlight = OpacityValueToken('highlight');
  static const full = OpacityValueToken('full');
}

final opacities = {
  OpacityVariant.opaque: OpacityValue(0.0),
  OpacityVariant.highlight: OpacityValue(0.12),
  OpacityVariant.disabled: OpacityValue(0.38),
  OpacityVariant.dim: OpacityValue(0.54),
  OpacityVariant.full: OpacityValue(1.0),
};
