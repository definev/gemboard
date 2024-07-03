import 'package:flutter/widgets.dart';
import 'package:mix/mix.dart';

abstract base class TextStyleVariant {
  static const title = TextStyleToken('title');
  static const body = TextStyleToken('body');
  static const caption = TextStyleToken('caption');
}

final textStyles = {
  TextStyleVariant.title: TextStyle(
    fontFamily: 'proxima',
    decoration: TextDecoration.none,
    fontSize: 16,
    height: 24 / 16,
  ),
  TextStyleVariant.body: TextStyle(
    fontFamily: 'proxima',
    decoration: TextDecoration.none,
    fontSize: 14,
    height: 20 / 14,
  ),
  TextStyleVariant.caption: TextStyle(
    fontFamily: 'proxima',
    decoration: TextDecoration.none,
    fontSize: 12,
    height: 16 / 12,
  ),
};
