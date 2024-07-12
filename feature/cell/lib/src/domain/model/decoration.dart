import 'package:design_system/design_system.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:utils/utils.dart';

part 'decoration.freezed.dart';
part 'decoration.g.dart';

@freezed
class CellDecoration with _$CellDecoration {
  const factory CellDecoration({
    required String color,
  }) = _CellDecoration;

  factory CellDecoration.fromJson(Map<String, dynamic> json) =>
      _$CellDecorationFromJson(json);
}

extension type CellDecorationExtension(CellDecoration decoration) {
  ColorVariant? get colorVariant => switch (decoration.color) {
        'red' => ColorVariant.red,
        'green' => ColorVariant.green,
        'blue' => ColorVariant.blue,
        'yellow' => ColorVariant.yellow,
        'purple' => ColorVariant.purple,
        'pink' => ColorVariant.pink,
        'cyan' => ColorVariant.cyan,
        _ => null,
      };

  Color colorValue(BuildContext context) {
    final variant = colorVariant;
    if (variant != null) {
      return variant.resolve(context);
    }
    return HexColor(decoration.color).toColor();
  }

  Color onColorValue(BuildContext context) {
    return ColorVariant.resolveOnBackground(
      colorVariant ?? ColorVariant.surface,
      ColorVariant.onSurface,
    ).resolve(context);
  }
}
