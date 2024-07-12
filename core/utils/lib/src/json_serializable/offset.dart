import 'dart:ui';

import 'package:json_annotation/json_annotation.dart';

class OffsetConverter extends JsonConverter<Offset, List<double>> {
  const OffsetConverter();
  
  @override
  Offset fromJson(List<double> json) {
    return Offset(json[0], json[1]);
  }
  
  @override
  List<double> toJson(Offset object) {
    return [object.dx, object.dy];
  }
  
}