import 'dart:ui';

import 'package:json_annotation/json_annotation.dart';

class SizeConverter extends JsonConverter<Size, List<Object?>> {
  const SizeConverter();
  
  @override
  Size fromJson(List<Object?> json) {
    return Size(json[0] as double, json[1] as double);
  }
  
  @override
  List<Object?> toJson(Size object) {
    return [object.width, object.height];
  }
  
}