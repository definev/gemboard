import 'package:flutter/widgets.dart';
import 'package:mix/mix.dart';

abstract base class RadiusVariant {
  static const small = RadiusToken('small');
  static const medium = RadiusToken('medium');
  static const large = RadiusToken('large');
}

final radii = {
  RadiusVariant.small: Radius.circular(8),
  RadiusVariant.medium: Radius.circular(12),
  RadiusVariant.large: Radius.circular(20),
};
