// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask_io_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AskIOIdImpl _$$AskIOIdImplFromJson(Map<String, dynamic> json) =>
    _$AskIOIdImpl(
      parentId:
          AskIOParentId.fromJson(json['parentId'] as Map<String, dynamic>),
      id: json['id'] as String,
    );

Map<String, dynamic> _$$AskIOIdImplToJson(_$AskIOIdImpl instance) =>
    <String, dynamic>{
      'parentId': instance.parentId,
      'id': instance.id,
    };

_$AskIOParentIdImpl _$$AskIOParentIdImplFromJson(Map<String, dynamic> json) =>
    _$AskIOParentIdImpl(
      FolderId: json['FolderId'] as String,
      whiteboardId: json['whiteboardId'] as String,
      askCellId: json['askCellId'] as String,
    );

Map<String, dynamic> _$$AskIOParentIdImplToJson(_$AskIOParentIdImpl instance) =>
    <String, dynamic>{
      'FolderId': instance.FolderId,
      'whiteboardId': instance.whiteboardId,
      'askCellId': instance.askCellId,
    };
