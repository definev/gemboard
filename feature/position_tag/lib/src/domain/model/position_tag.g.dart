// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PositionTagIdImpl _$$PositionTagIdImplFromJson(Map<String, dynamic> json) =>
    _$PositionTagIdImpl(
      parentId: const PositionTagParentIdConverter()
          .fromJson(json['parentId'] as Map<String, dynamic>),
      id: json['id'] as String,
    );

Map<String, dynamic> _$$PositionTagIdImplToJson(_$PositionTagIdImpl instance) =>
    <String, dynamic>{
      'parentId':
          const PositionTagParentIdConverter().toJson(instance.parentId),
      'id': instance.id,
    };

_$PositionTagParentIdImpl _$$PositionTagParentIdImplFromJson(
        Map<String, dynamic> json) =>
    _$PositionTagParentIdImpl(
      whiteboardId: json['whiteboardId'] as String,
    );

Map<String, dynamic> _$$PositionTagParentIdImplToJson(
        _$PositionTagParentIdImpl instance) =>
    <String, dynamic>{
      'whiteboardId': instance.whiteboardId,
    };

_$PositionTagImpl _$$PositionTagImplFromJson(Map<String, dynamic> json) =>
    _$PositionTagImpl(
      id: const PositionTagIdConverter()
          .fromJson(json['id'] as Map<String, dynamic>),
      label: json['label'] as String,
      rect:
          const RectConverter().fromJson(json['rect'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PositionTagImplToJson(_$PositionTagImpl instance) =>
    <String, dynamic>{
      'id': const PositionTagIdConverter().toJson(instance.id),
      'label': instance.label,
      'rect': const RectConverter().toJson(instance.rect),
    };
