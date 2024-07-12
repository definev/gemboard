// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cell.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CellParentIdImpl _$$CellParentIdImplFromJson(Map<String, dynamic> json) =>
    _$CellParentIdImpl(
      whiteboardId: json['whiteboardId'] as String,
    );

Map<String, dynamic> _$$CellParentIdImplToJson(_$CellParentIdImpl instance) =>
    <String, dynamic>{
      'whiteboardId': instance.whiteboardId,
    };

_$CellIdImpl _$$CellIdImplFromJson(Map<String, dynamic> json) => _$CellIdImpl(
      parentId: CellParentId.fromJson(
          CellParentId.readValue(json, 'parentId') as Map<String, dynamic>),
      id: json['id'] as String,
    );

Map<String, dynamic> _$$CellIdImplToJson(_$CellIdImpl instance) =>
    <String, dynamic>{
      'parentId': instance.parentId,
      'id': instance.id,
    };

_$TextCellImpl _$$TextCellImplFromJson(Map<String, dynamic> json) =>
    _$TextCellImpl(
      id: CellId.fromJson(CellId.readValue(json, 'id') as Map<String, dynamic>),
      decoration:
          CellDecoration.fromJson(json['decoration'] as Map<String, dynamic>),
      text: json['text'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TextCellImplToJson(_$TextCellImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'decoration': instance.decoration,
      'text': instance.text,
      'runtimeType': instance.$type,
    };

_$ImageCellImpl _$$ImageCellImplFromJson(Map<String, dynamic> json) =>
    _$ImageCellImpl(
      id: CellId.fromJson(CellId.readValue(json, 'id') as Map<String, dynamic>),
      decoration:
          CellDecoration.fromJson(json['decoration'] as Map<String, dynamic>),
      url: json['url'] as String?,
      filePath: json['filePath'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ImageCellImplToJson(_$ImageCellImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'decoration': instance.decoration,
      'url': instance.url,
      'filePath': instance.filePath,
      'runtimeType': instance.$type,
    };

_$ArticleCellImpl _$$ArticleCellImplFromJson(Map<String, dynamic> json) =>
    _$ArticleCellImpl(
      id: CellId.fromJson(CellId.readValue(json, 'id') as Map<String, dynamic>),
      decoration:
          CellDecoration.fromJson(json['decoration'] as Map<String, dynamic>),
      title: json['title'] as String,
      content: json['content'] as String,
      editable: json['editable'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ArticleCellImplToJson(_$ArticleCellImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'decoration': instance.decoration,
      'title': instance.title,
      'content': instance.content,
      'editable': instance.editable,
      'runtimeType': instance.$type,
    };

_$UrlCellImpl _$$UrlCellImplFromJson(Map<String, dynamic> json) =>
    _$UrlCellImpl(
      id: CellId.fromJson(CellId.readValue(json, 'id') as Map<String, dynamic>),
      decoration:
          CellDecoration.fromJson(json['decoration'] as Map<String, dynamic>),
      url: json['url'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UrlCellImplToJson(_$UrlCellImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'decoration': instance.decoration,
      'url': instance.url,
      'runtimeType': instance.$type,
    };
