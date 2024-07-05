import 'package:flutter/widgets.dart';
import 'package:mix/mix.dart';

abstract base class RadiusVariant {
  static const small = RadiusToken('small');
  static const medium = RadiusToken('medium');
  static const large = RadiusToken('large');
}

final radii = {
  RadiusVariant.small: Radius.circular(0),
  RadiusVariant.medium: Radius.circular(8),
  RadiusVariant.large: Radius.circular(12),
};
