// ignore_for_file: invalid_annotation_target

import 'package:ask_board/src/domain/model/mixin/mixin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ask_board.freezed.dart';
part 'ask_board.g.dart';

@freezed
class AskBoardId with _$AskBoardId, HasParentId<AskBoardParentId> {
  static Map<String, dynamic> toJsonValue(AskBoardId id) => id.toJson();

  const factory AskBoardId({
    @JsonKey(
      fromJson: AskBoardParentId.fromJson,
      toJson: AskBoardParentId.toJsonValue,
    )
    @Default(const AskBoardParentId())
    AskBoardParentId parentId,
    required String id,
  }) = _AskBoardId;

  factory AskBoardId.fromJson(Map<String, dynamic> json) =>
      _$AskBoardIdFromJson(json);

  static Object? readValue(Map map, String _) =>
      AskBoardId.fromJson(map as Map<String, dynamic>);
}

@freezed
class AskBoardParentId with _$AskBoardParentId {
  static Map<String, dynamic> toJsonValue(AskBoardParentId id) => id.toJson();

  const factory AskBoardParentId() = _AskBoardParentId;

  factory AskBoardParentId.fromJson(Map<String, dynamic> json) =>
      _$AskBoardParentIdFromJson(json);

  static Object? readValue(Map map, String _) => map;
}

@freezed
class AskBoard with _$AskBoard, HasId<AskBoardId> {
  const factory AskBoard({
    @JsonKey(
      fromJson: AskBoardId.fromJson,
      toJson: AskBoardId.toJsonValue,
    )
    required AskBoardId id,
    required String title,
  }) = _AskBoard;

  factory AskBoard.fromJson(Map<String, dynamic> json) =>
      _$AskBoardFromJson(json);
}
