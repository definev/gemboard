// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AskOutputFactImpl _$$AskOutputFactImplFromJson(Map<String, dynamic> json) =>
    _$AskOutputFactImpl(
      json['value'] as String,
      id: AskIOId.fromJson(json['id'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AskOutputFactImplToJson(_$AskOutputFactImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$AskOutputImageImpl _$$AskOutputImageImplFromJson(Map<String, dynamic> json) =>
    _$AskOutputImageImpl(
      Uri.parse(json['uri'] as String),
      id: AskIOId.fromJson(json['id'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AskOutputImageImplToJson(
        _$AskOutputImageImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri.toString(),
      'id': instance.id,
      'runtimeType': instance.$type,
    };
