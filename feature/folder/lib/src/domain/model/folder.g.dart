// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FolderIdImpl _$$FolderIdImplFromJson(Map<String, dynamic> json) =>
    _$FolderIdImpl(
      parentId: FolderParentId.readValue(json, 'parentId') == null
          ? const FolderParentId()
          : FolderParentId.fromJson(FolderParentId.readValue(json, 'parentId')
              as Map<String, dynamic>),
      id: json['id'] as String,
    );

Map<String, dynamic> _$$FolderIdImplToJson(_$FolderIdImpl instance) =>
    <String, dynamic>{
      'parentId': instance.parentId,
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
      id: FolderId.fromJson(
          FolderId.readValue(json, 'id') as Map<String, dynamic>),
      emoji: json['emoji'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$FolderImplToJson(_$FolderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'emoji': instance.emoji,
      'title': instance.title,
    };
