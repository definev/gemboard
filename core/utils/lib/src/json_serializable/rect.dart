import 'dart:ui';

import 'package:json_annotation/json_annotation.dart';

class RectConverter extends JsonConverter<Rect, Map<String, dynamic>> {
  const RectConverter();

  @override
  Rect fromJson(Map<String, dynamic> json) {
    return Rect.fromLTRB(
      json['left'] as double,
      json['top'] as double,
      json['right'] as double,
      json['bottom'] as double,
    );
  }

  @override
  Map<String, dynamic> toJson(Rect object) {
    return {
      'left': object.left,
      'top': object.top,
      'right': object.right,
      'bottom': object.bottom,
    };
  }
}
