import 'dart:ui';

import 'package:json_annotation/json_annotation.dart';

class SizeConverter extends JsonConverter<Size, List<double>> {
  const SizeConverter();
  
  @override
  Size fromJson(List<double> json) {
    return Size(json[0], json[1]);
  }
  
  @override
  List<double> toJson(Size object) {
    return [object.width, object.height];
  }
  
}