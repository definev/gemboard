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

  @override
  OpacityValueRef call() => OpacityValueRef(this);

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

  static const hightlight = OpacityValueToken('hightlight');
  static const blend = OpacityValueToken('blend');

  static const full = OpacityValueToken('full');
}

final opacities = {
  OpacityVariant.opaque: OpacityValue(0.0),
  OpacityVariant.hightlight: OpacityValue(0.12),
  OpacityVariant.blend: OpacityValue(0.72),
  OpacityVariant.full: OpacityValue(1.0),
};
