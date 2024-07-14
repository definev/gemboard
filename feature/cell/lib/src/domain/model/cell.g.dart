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
      parentId: const CellParentIdConverter()
          .fromJson(json['parentId'] as Map<String, dynamic>),
      id: json['id'] as String,
    );

Map<String, dynamic> _$$CellIdImplToJson(_$CellIdImpl instance) =>
    <String, dynamic>{
      'parentId': const CellParentIdConverter().toJson(instance.parentId),
      'id': instance.id,
    };

_$TextCellImpl _$$TextCellImplFromJson(Map<String, dynamic> json) =>
    _$TextCellImpl(
      layer: (json['layer'] as num?)?.toInt() ?? 10,
      offset: const OffsetConverter().fromJson(json['offset'] as List),
      id: const CellIdConverter().fromJson(json['id'] as Map<String, dynamic>),
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      decoration: const CellDecorationConverter()
          .fromJson(json['decoration'] as Map<String, dynamic>),
      text: json['text'] as String,
      $type: json['cellType'] as String?,
    );

Map<String, dynamic> _$$TextCellImplToJson(_$TextCellImpl instance) =>
    <String, dynamic>{
      'layer': instance.layer,
      'offset': const OffsetConverter().toJson(instance.offset),
      'id': const CellIdConverter().toJson(instance.id),
      'width': instance.width,
      'height': instance.height,
      'decoration': const CellDecorationConverter().toJson(instance.decoration),
      'text': instance.text,
      'cellType': instance.$type,
    };

_$ImageCellImpl _$$ImageCellImplFromJson(Map<String, dynamic> json) =>
    _$ImageCellImpl(
      layer: (json['layer'] as num?)?.toInt() ?? 10,
      offset: const OffsetConverter().fromJson(json['offset'] as List),
      id: const CellIdConverter().fromJson(json['id'] as Map<String, dynamic>),
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      decoration: const CellDecorationConverter()
          .fromJson(json['decoration'] as Map<String, dynamic>),
      url: json['url'] as String?,
      filePath: json['filePath'] as String?,
      $type: json['cellType'] as String?,
    );

Map<String, dynamic> _$$ImageCellImplToJson(_$ImageCellImpl instance) =>
    <String, dynamic>{
      'layer': instance.layer,
      'offset': const OffsetConverter().toJson(instance.offset),
      'id': const CellIdConverter().toJson(instance.id),
      'width': instance.width,
      'height': instance.height,
      'decoration': const CellDecorationConverter().toJson(instance.decoration),
      'url': instance.url,
      'filePath': instance.filePath,
      'cellType': instance.$type,
    };

_$ArticleCellImpl _$$ArticleCellImplFromJson(Map<String, dynamic> json) =>
    _$ArticleCellImpl(
      layer: (json['layer'] as num?)?.toInt() ?? 10,
      offset: const OffsetConverter().fromJson(json['offset'] as List),
      id: const CellIdConverter().fromJson(json['id'] as Map<String, dynamic>),
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      decoration: const CellDecorationConverter()
          .fromJson(json['decoration'] as Map<String, dynamic>),
      title: json['title'] as String,
      content: json['content'] as String,
      editable: json['editable'] as bool,
      $type: json['cellType'] as String?,
    );

Map<String, dynamic> _$$ArticleCellImplToJson(_$ArticleCellImpl instance) =>
    <String, dynamic>{
      'layer': instance.layer,
      'offset': const OffsetConverter().toJson(instance.offset),
      'id': const CellIdConverter().toJson(instance.id),
      'width': instance.width,
      'height': instance.height,
      'decoration': const CellDecorationConverter().toJson(instance.decoration),
      'title': instance.title,
      'content': instance.content,
      'editable': instance.editable,
      'cellType': instance.$type,
    };

_$UrlCellImpl _$$UrlCellImplFromJson(Map<String, dynamic> json) =>
    _$UrlCellImpl(
      layer: (json['layer'] as num?)?.toInt() ?? 10,
      offset: const OffsetConverter().fromJson(json['offset'] as List),
      id: const CellIdConverter().fromJson(json['id'] as Map<String, dynamic>),
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      decoration: const CellDecorationConverter()
          .fromJson(json['decoration'] as Map<String, dynamic>),
      url: json['url'] as String,
      $type: json['cellType'] as String?,
    );

Map<String, dynamic> _$$UrlCellImplToJson(_$UrlCellImpl instance) =>
    <String, dynamic>{
      'layer': instance.layer,
      'offset': const OffsetConverter().toJson(instance.offset),
      'id': const CellIdConverter().toJson(instance.id),
      'width': instance.width,
      'height': instance.height,
      'decoration': const CellDecorationConverter().toJson(instance.decoration),
      'url': instance.url,
      'cellType': instance.$type,
    };
