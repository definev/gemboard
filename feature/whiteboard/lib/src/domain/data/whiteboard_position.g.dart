// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'whiteboard_position.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WhiteboardPositionImpl _$$WhiteboardPositionImplFromJson(
        Map<String, dynamic> json) =>
    _$WhiteboardPositionImpl(
      whiteboardId: json['whiteboardId'] as String,
      scale: (json['scale'] as num).toDouble(),
      offset: const OffsetConverter().fromJson(json['offset'] as List),
    );

Map<String, dynamic> _$$WhiteboardPositionImplToJson(
        _$WhiteboardPositionImpl instance) =>
    <String, dynamic>{
      'whiteboardId': instance.whiteboardId,
      'scale': instance.scale,
      'offset': const OffsetConverter().toJson(instance.offset),
    };
