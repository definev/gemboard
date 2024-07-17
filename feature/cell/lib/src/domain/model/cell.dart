// ignore_for_file: invalid_annotation_target

import 'package:cell/src/domain/model/decoration.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:utils/utils.dart';

part 'cell.freezed.dart';
part 'cell.g.dart';

class CellParentIdConverter
    implements JsonConverter<CellParentId, Map<String, dynamic>> {
  const CellParentIdConverter();

  @override
  CellParentId fromJson(Map<String, dynamic> json) {
    return CellParentId.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(CellParentId object) {
    return object.toJson();
  }
}

class CellIdConverter implements JsonConverter<CellId, Map<String, dynamic>> {
  const CellIdConverter();

  @override
  CellId fromJson(Map<String, dynamic> json) {
    return CellId.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(CellId object) {
    return object.toJson();
  }
}

@freezed
class CellParentId with _$CellParentId {
  const factory CellParentId({
    required String whiteboardId,
  }) = _CellParentId;

  factory CellParentId.fromJson(Map<String, dynamic> json) =>
      _$CellParentIdFromJson(json);

  static Object? readValue(Map map, String _) =>
      CellParentId.fromJson(map as Map<String, dynamic>);
}

@freezed
class CellId with _$CellId, HasParentId<CellParentId> {
  const factory CellId({
    @CellParentIdConverter() required CellParentId parentId,
    required String id,
  }) = _CellId;

  factory CellId.fromJson(Map<String, dynamic> json) => _$CellIdFromJson(json);

  static Object? readValue(Map map, String _) =>
      CellId.fromJson(map as Map<String, dynamic>);
}

@Freezed(unionKey: 'cellType')
class Cell with _$Cell, HasId<CellId> {
  const factory Cell.unknown({
    @Default(10) int layer,
    @OffsetConverter() required Offset offset,
    @Default(CellId(parentId: CellParentId(whiteboardId: ''), id: ''))
    @CellIdConverter()
    CellId id,
    @Default(100) double width,
    double? height,
    @Default(CellDecoration(color: ''))
    @CellDecorationConverter()
    CellDecoration decoration,
    @Default(false) bool selected,
  }) = UnknownCell;

  const factory Cell.text({
    @Default(10) int layer,
    @OffsetConverter() required Offset offset,
    @CellIdConverter() required CellId id,
    required double width,
    double? height,
    @CellDecorationConverter() required CellDecoration decoration,
    @Default(false) bool selected,
    required String text,
  }) = TextCell;

  const factory Cell.image({
    @Default(10) int layer,
    @OffsetConverter() required Offset offset,
    @CellIdConverter() required CellId id,
    required double width,
    double? height,
    @CellDecorationConverter() required CellDecoration decoration,
    @Default(false) bool selected,
    String? url,
    String? filePath,
  }) = ImageCell;

  const factory Cell.article({
    @Default(10) int layer,
    @OffsetConverter() required Offset offset,
    @CellIdConverter() required CellId id,
    required double width,
    double? height,
    @CellDecorationConverter() required CellDecoration decoration,
    @Default(false) bool selected,
    required String title,
    required String content,
    required bool editable,
  }) = ArticleCell;

  const factory Cell.url({
    @Default(10) int layer,
    @OffsetConverter() required Offset offset,
    @CellIdConverter() required CellId id,
    required double width,
    double? height,
    @CellDecorationConverter() required CellDecoration decoration,
    @Default(false) bool selected,
    required String url,
  }) = UrlCell;

  factory Cell.fromJson(Map<String, dynamic> json) => _$CellFromJson(json);
}
