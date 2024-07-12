import 'package:flutter/widgets.dart';

extension type HexColor(String color) {
  Color toColor() {
    final hex = color.replaceAll('#', '');
    if (hex.length == 6) {
      return Color(int.parse('FF$hex', radix: 16));
    } else {
      return Color(int.parse(hex, radix: 16));
    }
  }
}