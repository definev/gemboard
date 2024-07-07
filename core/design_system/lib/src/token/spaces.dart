import 'package:mix/mix.dart';

class SpaceVariant extends SpaceToken {
  const SpaceVariant(super.name);

  static const gap = SpaceVariant('gap');
  static const small = SpaceVariant('small');
  static const medium = SpaceVariant('medium');
  static const mediumLarge = SpaceVariant('mediumLarge');
  static const large = SpaceVariant('large');
}

final spaces = {
  SpaceVariant.gap: 4.0,
  SpaceVariant.small: 8.0,
  SpaceVariant.medium: 12.0,
  SpaceVariant.mediumLarge: 16.0,
  SpaceVariant.large: 20.0,
};
