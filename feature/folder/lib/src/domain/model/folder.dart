// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:utils/utils.dart';

part 'folder.freezed.dart';
part 'folder.g.dart';

class FolderIdConverter
    implements JsonConverter<FolderId, Map<String, dynamic>> {
  const FolderIdConverter();

  @override
  FolderId fromJson(Map<String, dynamic> json) => FolderId.fromJson(json);

  @override
  Map<String, dynamic> toJson(FolderId object) => object.toJson();
}

class FolderParentIdConverter
    implements JsonConverter<FolderParentId, Map<String, dynamic>> {
  const FolderParentIdConverter();

  @override
  FolderParentId fromJson(Map<String, dynamic> json) =>
      FolderParentId.fromJson(json);

  @override
  Map<String, dynamic> toJson(FolderParentId object) => object.toJson();
}

@freezed
class FolderId with _$FolderId, HasIdentity, HasParentId<FolderParentId> {
  const factory FolderId({
    @Default(const FolderParentId())
    @FolderParentIdConverter()
    FolderParentId parentId,
    required String id,
  }) = _FolderId;

  factory FolderId.fromJson(Map<String, dynamic> json) =>
      _$FolderIdFromJson(json);
}

@freezed
class FolderParentId with _$FolderParentId, HasIdentity {
  const FolderParentId._();

  const factory FolderParentId({
    String? folderId,
  }) = _FolderParentId;

  factory FolderParentId.fromJson(Map<String, dynamic> json) =>
      _$FolderParentIdFromJson(json);

  @override
  String get id => folderId ?? '';
}

@freezed
sealed class Folder with _$Folder, HasId<FolderId> {
  const factory Folder({
    @FolderIdConverter() required FolderId id,
    required String emoji,
    required String title,
  }) = _Folder;

  factory Folder.fromJson(Map<String, dynamic> json) => _$FolderFromJson(json);
}
