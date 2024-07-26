// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EdgeParentIdImpl _$$EdgeParentIdImplFromJson(Map<String, dynamic> json) =>
    _$EdgeParentIdImpl(
      whiteboardId: json['whiteboardId'] as String,
    );

Map<String, dynamic> _$$EdgeParentIdImplToJson(_$EdgeParentIdImpl instance) =>
    <String, dynamic>{
      'whiteboardId': instance.whiteboardId,
    };

_$EdgeIdImpl _$$EdgeIdImplFromJson(Map<String, dynamic> json) => _$EdgeIdImpl(
      parentId: EdgeParentId.fromJson(json['parentId'] as Map<String, dynamic>),
      id: json['id'] as String,
    );

Map<String, dynamic> _$$EdgeIdImplToJson(_$EdgeIdImpl instance) =>
    <String, dynamic>{
      'parentId': instance.parentId,
      'id': instance.id,
    };

_$EdgeImpl _$$EdgeImplFromJson(Map<String, dynamic> json) => _$EdgeImpl(
      id: EdgeId.fromJson(json['id'] as Map<String, dynamic>),
      source: json['source'] as String,
      target: json['target'] as String,
      layer: (json['layer'] as num?)?.toInt() ?? 9,
      label: json['label'] as String?,
    );

Map<String, dynamic> _$$EdgeImplToJson(_$EdgeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'source': instance.source,
      'target': instance.target,
      'layer': instance.layer,
      'label': instance.label,
    };
