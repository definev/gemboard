// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:utils/utils.dart';

part 'whiteboard.freezed.dart';
part 'whiteboard.g.dart';

class WhiteboardIdConverter
    implements JsonConverter<WhiteboardId, Map<String, dynamic>> {
  const WhiteboardIdConverter();

  @override
  WhiteboardId fromJson(Map<String, dynamic> json) =>
      WhiteboardId.fromJson(json);

  @override
  Map<String, dynamic> toJson(WhiteboardId object) => object.toJson();
}

class WhiteboardParentIdConverter
    implements JsonConverter<WhiteboardParentId, Map<String, dynamic>> {
  const WhiteboardParentIdConverter();

  @override
  WhiteboardParentId fromJson(Map<String, dynamic> json) =>
      WhiteboardParentId.fromJson(json);

  @override
  Map<String, dynamic> toJson(WhiteboardParentId object) => object.toJson();
}

@freezed
class WhiteboardId
    with _$WhiteboardId, HasIdentity, HasParentId<WhiteboardParentId> {
  const factory WhiteboardId({
    @WhiteboardParentIdConverter() required WhiteboardParentId parentId,
    required String id,
  }) = _WhiteboardId;

  factory WhiteboardId.fromJson(Map<String, dynamic> json) =>
      _$WhiteboardIdFromJson(json);

  static const defaultValue = const WhiteboardId(
    parentId: WhiteboardParentId(),
    id: 'default',
  );
}

@freezed
class WhiteboardParentId with _$WhiteboardParentId, HasIdentity {
  const WhiteboardParentId._();

  const factory WhiteboardParentId({
    String? folderId,
  }) = _WhiteboardParentId;

  factory WhiteboardParentId.fromJson(Map<String, dynamic> json) =>
      _$WhiteboardParentIdFromJson(json);

  @override
  String get id => folderId ?? '';
}

@freezed
sealed class Whiteboard with _$Whiteboard, HasId<WhiteboardId> {
  const factory Whiteboard({
    @WhiteboardIdConverter() required WhiteboardId id,
    required String emoji,
    required String title,
  }) = _Whiteboard;

  factory Whiteboard.fromJson(Map<String, dynamic> json) =>
      _$WhiteboardFromJson(json);
}
