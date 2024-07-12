// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:utils/utils.dart';

part 'whiteboard.freezed.dart';
part 'whiteboard.g.dart';

@freezed
class WhiteboardId with _$WhiteboardId, HasParentId<WhiteboardParentId> {
  const factory WhiteboardId({
    @JsonKey(readValue: WhiteboardParentId.readValue)
    required WhiteboardParentId parentId,
    required String id,
  }) = _WhiteboardId;

  factory WhiteboardId.fromJson(Map<String, dynamic> json) =>
      _$WhiteboardIdFromJson(json);

  static Object? readValue(Map map, String _) =>
      WhiteboardId.fromJson(map as Map<String, dynamic>);
}

@freezed
class WhiteboardParentId with _$WhiteboardParentId {
  const factory WhiteboardParentId({
    required String FolderId,
  }) = _WhiteboardParentId;

  factory WhiteboardParentId.fromJson(Map<String, dynamic> json) =>
      _$WhiteboardParentIdFromJson(json);

  static Object? readValue(Map map, String _) =>
      WhiteboardParentId.fromJson(map as Map<String, dynamic>);
}

@freezed
sealed class Whiteboard with _$Whiteboard, HasId<WhiteboardId> {
  const factory Whiteboard({
    @JsonKey(readValue: WhiteboardId.readValue) required WhiteboardId id,
    required String emoji,
    required String title,
  }) = _Whiteboard;

  factory Whiteboard.fromJson(Map<String, dynamic> json) =>
      _$WhiteboardFromJson(json);
}
