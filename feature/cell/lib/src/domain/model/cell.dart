// ignore_for_file: invalid_annotation_target

import 'package:cell/src/domain/model/decoration.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:utils/utils.dart';

part 'cell.freezed.dart';
part 'cell.g.dart';

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
    @JsonKey(readValue: CellParentId.readValue) required CellParentId parentId,
    required String id,
  }) = _CellId;

  factory CellId.fromJson(Map<String, dynamic> json) => _$CellIdFromJson(json);

  static Object? readValue(Map map, String _) =>
      CellId.fromJson(map as Map<String, dynamic>);
}

@freezed
class Cell with _$Cell, HasId<CellId> {
  const factory Cell.text({
    @JsonKey(readValue: CellId.readValue) required CellId id,
    required CellDecoration decoration,
    required String text,
  }) = _TextCell;

  const factory Cell.image({
    @JsonKey(readValue: CellId.readValue) required CellId id,
    required CellDecoration decoration,
    String? url,
    String? filePath,
  }) = _ImageCell;

  const factory Cell.article({
    @JsonKey(readValue: CellId.readValue) required CellId id,
    required CellDecoration decoration,
    required String title,
    required String content,
    required bool editable,
  }) = _ArticleCell;

  const factory Cell.url({
    @JsonKey(readValue: CellId.readValue) required CellId id,
    required CellDecoration decoration,
    required String url,
  }) = _UrlCell;

  factory Cell.fromJson(Map<String, dynamic> json) => _$CellFromJson(json);
}
