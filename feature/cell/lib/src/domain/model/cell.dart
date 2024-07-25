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
class CellParentId with _$CellParentId, HasIdentity {
  const CellParentId._();

  const factory CellParentId({
    required String whiteboardId,
  }) = _CellParentId;

  factory CellParentId.fromJson(Map<String, dynamic> json) =>
      _$CellParentIdFromJson(json);

  @override
  String get id => whiteboardId;
}

@freezed
class CellId with _$CellId, HasIdentity, HasParentId<CellParentId> {
  const factory CellId({
    @CellParentIdConverter() required CellParentId parentId,
    required String id,
  }) = _CellId;

  factory CellId.fromJson(Map<String, dynamic> json) => _$CellIdFromJson(json);
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

    /// A lazy height that will be calculated when the cell is rendered.
    double? preferredHeight,
    @Default(CellDecoration(color: ''))
    @CellDecorationConverter()
    CellDecoration decoration,
    @Default(false) bool selected,
  }) = UnknownCell;

  const factory Cell.brainstorming({
    @Default(9) int layer,
    @OffsetConverter() required Offset offset,
    @CellIdConverter() required CellId id,
    required double width,
    double? height,

    /// A lazy height that will be calculated when the cell is rendered.
    double? preferredHeight,
    @CellDecorationConverter() required CellDecoration decoration,
    @Default(false) bool selected,

    ///
    required String? question,
    required List<String> suggestions,
  }) = BrainstormingCell;

  const factory Cell.editable({
    @Default(10) int layer,
    @OffsetConverter() required Offset offset,
    @CellIdConverter() required CellId id,
    required double width,
    double? height,

    /// A lazy height that will be calculated when the cell is rendered.
    double? preferredHeight,
    @CellDecorationConverter() required CellDecoration decoration,
    @Default(false) bool selected,
    required String title,
    required String content,
  }) = TextCell;

  const factory Cell.image({
    @Default(10) int layer,
    @OffsetConverter() required Offset offset,
    @CellIdConverter() required CellId id,
    required double width,
    double? height,

    /// A lazy height that will be calculated when the cell is rendered.
    double? preferredHeight,
    @CellDecorationConverter() required CellDecoration decoration,
    @Default(false) bool selected,
    String? url,
  }) = ImageCell;

  const factory Cell.article({
    @Default(10) int layer,
    @OffsetConverter() required Offset offset,
    @CellIdConverter() required CellId id,
    required double width,
    double? height,

    /// A lazy height that will be calculated when the cell is rendered.
    double? preferredHeight,
    @CellDecorationConverter() required CellDecoration decoration,
    @Default(false) bool selected,
    required String title,
    required String content,
  }) = ArticleCell;

  const factory Cell.url({
    @Default(10) int layer,
    @OffsetConverter() required Offset offset,
    @CellIdConverter() required CellId id,
    required double width,
    double? height,

    /// A lazy height that will be calculated when the cell is rendered.
    double? preferredHeight,
    @CellDecorationConverter() required CellDecoration decoration,
    @Default(false) bool selected,
    required String url,
  }) = UrlCell;

  factory Cell.fromJson(Map<String, dynamic> json) => _$CellFromJson(json);
}

extension type CellAppearance(Cell cell) {
  Rect get rect => Rect.fromLTWH(
        cell.offset.dx,
        cell.offset.dy,
        cell.width,
        cell.height ?? cell.preferredHeight ?? 0,
      );
}
