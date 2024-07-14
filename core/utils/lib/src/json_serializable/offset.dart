import 'dart:ui';

import 'package:json_annotation/json_annotation.dart';

class OffsetConverter extends JsonConverter<Offset, List<Object?>> {
  const OffsetConverter();
  
  @override
  Offset fromJson(List<Object?> json) {
    return Offset(json[0] as double, json[1] as double);
  }
  
  @override
  List<Object?> toJson(Offset object) {
    return [object.dx, object.dy];
  }
  
}