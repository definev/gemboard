import 'package:mix/mix.dart';

abstract base class SpaceVariant {
  static const small = SpaceToken('small');
  static const medium = SpaceToken('medium');
  static const mediumLarge = SpaceToken('mediumLarge');
  static const large = SpaceToken('large');
}

final spaces = {
  SpaceVariant.small: 8.0,
  SpaceVariant.medium: 12.0,
  SpaceVariant.mediumLarge: 16.0,
  SpaceVariant.large: 20.0,
};
