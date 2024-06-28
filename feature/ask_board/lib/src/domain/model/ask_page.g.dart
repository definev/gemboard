// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AskPageIdImpl _$$AskPageIdImplFromJson(Map<String, dynamic> json) =>
    _$AskPageIdImpl(
      parentId: AskPageParentId.fromJson(
          AskPageParentId.readValue(json, 'parent_id') as Map<String, dynamic>),
      id: json['id'] as String,
    );

Map<String, dynamic> _$$AskPageIdImplToJson(_$AskPageIdImpl instance) =>
    <String, dynamic>{
      'parent_id': instance.parentId,
      'id': instance.id,
    };

_$AskPageParentIdImpl _$$AskPageParentIdImplFromJson(
        Map<String, dynamic> json) =>
    _$AskPageParentIdImpl(
      askBoardId: json['ask_board_id'] as String,
    );

Map<String, dynamic> _$$AskPageParentIdImplToJson(
        _$AskPageParentIdImpl instance) =>
    <String, dynamic>{
      'ask_board_id': instance.askBoardId,
    };

_$AskPageImpl _$$AskPageImplFromJson(Map<String, dynamic> json) =>
    _$AskPageImpl(
      id: AskPageId.fromJson(
          AskPageId.readValue(json, 'id') as Map<String, dynamic>),
      title: json['title'] as String,
    );

Map<String, dynamic> _$$AskPageImplToJson(_$AskPageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };
