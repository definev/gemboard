// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:utils/utils.dart';

part 'folder.freezed.dart';
part 'folder.g.dart';

@freezed
class FolderId with _$FolderId, HasParentId<FolderParentId> {
  const factory FolderId({
    @JsonKey(readValue: FolderParentId.readValue)
    @Default(const FolderParentId())
    FolderParentId parentId,
    required String id,
  }) = _FolderId;

  factory FolderId.fromJson(Map<String, dynamic> json) =>
      _$FolderIdFromJson(json);

  static Object? readValue(Map map, String _) =>
      FolderId.fromJson(map as Map<String, dynamic>);
}

@freezed
class FolderParentId with _$FolderParentId {
  const factory FolderParentId({
    String? folderId,
  }) = _FolderParentId;

  factory FolderParentId.fromJson(Map<String, dynamic> json) =>
      _$FolderParentIdFromJson(json);

  static Object? readValue(Map map, String _) =>
      FolderParentId.fromJson(map as Map<String, dynamic>);
}

@freezed
sealed class Folder with _$Folder, HasId<FolderId> {
  const factory Folder({
    @JsonKey(readValue: FolderId.readValue) required FolderId id,
    required String emoji,
    required String title,
  }) = _Folder;

  factory Folder.fromJson(Map<String, dynamic> json) => _$FolderFromJson(json);
}