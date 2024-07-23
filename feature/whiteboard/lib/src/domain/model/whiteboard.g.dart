// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'whiteboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WhiteboardIdImpl _$$WhiteboardIdImplFromJson(Map<String, dynamic> json) =>
    _$WhiteboardIdImpl(
      parentId: const WhiteboardParentIdConverter()
          .fromJson(json['parentId'] as Map<String, dynamic>),
      id: json['id'] as String,
    );

Map<String, dynamic> _$$WhiteboardIdImplToJson(_$WhiteboardIdImpl instance) =>
    <String, dynamic>{
      'parentId': const WhiteboardParentIdConverter().toJson(instance.parentId),
      'id': instance.id,
    };

_$WhiteboardParentIdImpl _$$WhiteboardParentIdImplFromJson(
        Map<String, dynamic> json) =>
    _$WhiteboardParentIdImpl(
      folderId: json['folderId'] as String?,
    );

Map<String, dynamic> _$$WhiteboardParentIdImplToJson(
        _$WhiteboardParentIdImpl instance) =>
    <String, dynamic>{
      'folderId': instance.folderId,
    };

_$WhiteboardImpl _$$WhiteboardImplFromJson(Map<String, dynamic> json) =>
    _$WhiteboardImpl(
      id: const WhiteboardIdConverter()
          .fromJson(json['id'] as Map<String, dynamic>),
      emoji: json['emoji'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$WhiteboardImplToJson(_$WhiteboardImpl instance) =>
    <String, dynamic>{
      'id': const WhiteboardIdConverter().toJson(instance.id),
      'emoji': instance.emoji,
      'title': instance.title,
    };
