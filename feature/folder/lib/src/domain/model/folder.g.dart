// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FolderIdImpl _$$FolderIdImplFromJson(Map<String, dynamic> json) =>
    _$FolderIdImpl(
      parentId: json['parentId'] == null
          ? const FolderParentId()
          : const FolderParentIdConverter()
              .fromJson(json['parentId'] as Map<String, dynamic>),
      id: json['id'] as String,
    );

Map<String, dynamic> _$$FolderIdImplToJson(_$FolderIdImpl instance) =>
    <String, dynamic>{
      'parentId': const FolderParentIdConverter().toJson(instance.parentId),
      'id': instance.id,
    };

_$FolderParentIdImpl _$$FolderParentIdImplFromJson(Map<String, dynamic> json) =>
    _$FolderParentIdImpl(
      folderId: json['folderId'] as String?,
    );

Map<String, dynamic> _$$FolderParentIdImplToJson(
        _$FolderParentIdImpl instance) =>
    <String, dynamic>{
      'folderId': instance.folderId,
    };

_$FolderImpl _$$FolderImplFromJson(Map<String, dynamic> json) => _$FolderImpl(
      id: const FolderIdConverter()
          .fromJson(json['id'] as Map<String, dynamic>),
      emoji: json['emoji'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$FolderImplToJson(_$FolderImpl instance) =>
    <String, dynamic>{
      'id': const FolderIdConverter().toJson(instance.id),
      'emoji': instance.emoji,
      'title': instance.title,
    };
