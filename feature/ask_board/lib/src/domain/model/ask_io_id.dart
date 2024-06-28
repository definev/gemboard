// ignore_for_file: invalid_annotation_target

import 'package:ask_board/src/domain/model/mixin/mixin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ask_io_id.freezed.dart';
part 'ask_io_id.g.dart';

@freezed
class AskIOId with _$AskIOId, HasParentId<AskIOParentId> {
  const factory AskIOId({
    required AskIOParentId parentId,
    required String id,
  }) = _AskIOId;

  factory AskIOId.fromJson(Map<String, dynamic> json) =>
      _$AskIOIdFromJson(json);

  static Object? readValue(Map map, String _) =>
      AskIOId.fromJson(map as Map<String, dynamic>);
}

@freezed
class AskIOParentId with _$AskIOParentId {
  const factory AskIOParentId({
    required String askBoardId,
    required String askPageId,
    required String askCellId,
  }) = _AskIOParentId;

  factory AskIOParentId.fromJson(Map<String, dynamic> json) =>
      _$AskIOParentIdFromJson(json);

  static Object? readValue(Map map, String _) =>
      AskIOParentId.fromJson(map as Map<String, dynamic>);
}
