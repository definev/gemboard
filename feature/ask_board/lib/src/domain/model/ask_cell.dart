// ignore_for_file: invalid_annotation_target

import 'package:ask_board/src/domain/model/ask_input.dart';
import 'package:ask_board/src/domain/model/mixin/mixin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:osum_serializable/osum_serializable.dart';

part 'ask_cell.freezed.dart';
part 'ask_cell.g.dart';

@freezed
sealed class AskCellId with _$AskCellId, HasParentId<AskCellParentId> {
  const factory AskCellId({
    required AskCellParentId parentId,
    required String id,
  }) = _AskCellId;

  factory AskCellId.fromJson(Map<String, dynamic> json) =>
      _$AskCellIdFromJson(json);
}

@freezed
class AskCellParentId with _$AskCellParentId {
  const factory AskCellParentId({
    required String askBoardId,
    required String askPageId,
  }) = _AskCellParentId;

  factory AskCellParentId.fromJson(Map<String, dynamic> json) =>
      _$AskCellParentIdFromJson(json);

  static Object? readValue(Map map, String _) =>
      AskCellParentId.fromJson(map as Map<String, dynamic>);
}

@freezed
class AskCell with _$AskCell, HasId<AskCellId> {
  const factory AskCell.cell({
    required AskCellId id,
    @OffsetConverter() required Offset position,

    //
    @Default('') String title,
    required List<AskInput> inputs,
  }) = _Cell;

  const factory AskCell.cellRef({
    required AskCellId id,
    @OffsetConverter() required Offset position,

    //
    required AskCellId refId,
  }) = _CellRef;

  factory AskCell.fromJson(Map<String, dynamic> json) =>
      _$AskCellFromJson(json);
}
