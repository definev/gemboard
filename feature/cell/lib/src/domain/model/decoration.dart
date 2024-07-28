import 'package:design_system/design_system.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:utils/utils.dart';

part 'decoration.freezed.dart';
part 'decoration.g.dart';

class CellDecorationConverter
    implements JsonConverter<CellDecoration, Map<String, dynamic>> {
  const CellDecorationConverter();

  @override
  CellDecoration fromJson(Map<String, dynamic> json) {
    return CellDecoration.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(CellDecoration object) {
    return object.toJson();
  }
}

enum CellCardKind {
  flat,
  elevated,
  outlined;

  DSCardKind get kindVarant => switch (this) {
        CellCardKind.flat => DSCardKind.flat,
        CellCardKind.elevated => DSCardKind.elevated,
        CellCardKind.outlined => DSCardKind.outlined,
      };
}

@freezed
class CellDecoration with _$CellDecoration {
  const factory CellDecoration({
    required String color,
    @Default(CellCardKind.elevated) CellCardKind cardKind,
    @Default(false) bool constraints,
  }) = _CellDecoration;

  factory CellDecoration.fromJson(Map<String, dynamic> json) =>
      _$CellDecorationFromJson(json);
}

extension type CellDecorationExtension(CellDecoration decoration) {
  ColorVariant? get colorVariant => ColorVariant.tryParse(decoration.color);

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
