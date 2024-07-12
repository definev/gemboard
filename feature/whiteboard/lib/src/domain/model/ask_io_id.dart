// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:utils/utils.dart';

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
    required String FolderId,
    required String whiteboardId,
    required String askCellId,
  }) = _AskIOParentId;

  factory AskIOParentId.fromJson(Map<String, dynamic> json) =>
      _$AskIOParentIdFromJson(json);

  static Object? readValue(Map map, String _) =>
      AskIOParentId.fromJson(map as Map<String, dynamic>);
}
