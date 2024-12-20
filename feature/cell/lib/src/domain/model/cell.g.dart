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

_$UnknownCellImpl _$$UnknownCellImplFromJson(Map<String, dynamic> json) =>
    _$UnknownCellImpl(
      layer: (json['layer'] as num?)?.toInt() ?? 10,
      offset: const OffsetConverter().fromJson(json['offset'] as List),
      id: json['id'] == null
          ? const CellId(parentId: CellParentId(whiteboardId: ''), id: '')
          : const CellIdConverter()
              .fromJson(json['id'] as Map<String, dynamic>),
      width: (json['width'] as num?)?.toDouble(),
      preferredWidth: (json['preferredWidth'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      preferredHeight: (json['preferredHeight'] as num?)?.toDouble(),
      decoration: json['decoration'] == null
          ? const CellDecoration(color: '')
          : const CellDecorationConverter()
              .fromJson(json['decoration'] as Map<String, dynamic>),
      selected: json['selected'] as bool? ?? false,
      preContext: json['preContext'] as String?,
      $type: json['cellType'] as String?,
    );

Map<String, dynamic> _$$UnknownCellImplToJson(_$UnknownCellImpl instance) =>
    <String, dynamic>{
      'layer': instance.layer,
      'offset': const OffsetConverter().toJson(instance.offset),
      'id': const CellIdConverter().toJson(instance.id),
      'width': instance.width,
      'preferredWidth': instance.preferredWidth,
      'height': instance.height,
      'preferredHeight': instance.preferredHeight,
      'decoration': const CellDecorationConverter().toJson(instance.decoration),
      'selected': instance.selected,
      'preContext': instance.preContext,
      'cellType': instance.$type,
    };

_$BrainstormingCellImpl _$$BrainstormingCellImplFromJson(
        Map<String, dynamic> json) =>
    _$BrainstormingCellImpl(
      layer: (json['layer'] as num?)?.toInt() ?? 9,
      offset: const OffsetConverter().fromJson(json['offset'] as List),
      id: const CellIdConverter().fromJson(json['id'] as Map<String, dynamic>),
      width: (json['width'] as num?)?.toDouble(),
      preferredWidth: (json['preferredWidth'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      preferredHeight: (json['preferredHeight'] as num?)?.toDouble(),
      decoration: const CellDecorationConverter()
          .fromJson(json['decoration'] as Map<String, dynamic>),
      selected: json['selected'] as bool? ?? false,
      preContext: json['preContext'] as String?,
      question: json['question'] as String?,
      suggestions: (json['suggestions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      $type: json['cellType'] as String?,
    );

Map<String, dynamic> _$$BrainstormingCellImplToJson(
        _$BrainstormingCellImpl instance) =>
    <String, dynamic>{
      'layer': instance.layer,
      'offset': const OffsetConverter().toJson(instance.offset),
      'id': const CellIdConverter().toJson(instance.id),
      'width': instance.width,
      'preferredWidth': instance.preferredWidth,
      'height': instance.height,
      'preferredHeight': instance.preferredHeight,
      'decoration': const CellDecorationConverter().toJson(instance.decoration),
      'selected': instance.selected,
      'preContext': instance.preContext,
      'question': instance.question,
      'suggestions': instance.suggestions,
      'cellType': instance.$type,
    };

_$EditableCellImpl _$$EditableCellImplFromJson(Map<String, dynamic> json) =>
    _$EditableCellImpl(
      layer: (json['layer'] as num?)?.toInt() ?? 10,
      offset: const OffsetConverter().fromJson(json['offset'] as List),
      id: const CellIdConverter().fromJson(json['id'] as Map<String, dynamic>),
      width: (json['width'] as num?)?.toDouble(),
      preferredWidth: (json['preferredWidth'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      preferredHeight: (json['preferredHeight'] as num?)?.toDouble(),
      decoration: const CellDecorationConverter()
          .fromJson(json['decoration'] as Map<String, dynamic>),
      selected: json['selected'] as bool? ?? false,
      preContext: json['preContext'] as String?,
      title: json['title'] as String,
      content: json['content'] as String,
      $type: json['cellType'] as String?,
    );

Map<String, dynamic> _$$EditableCellImplToJson(_$EditableCellImpl instance) =>
    <String, dynamic>{
      'layer': instance.layer,
      'offset': const OffsetConverter().toJson(instance.offset),
      'id': const CellIdConverter().toJson(instance.id),
      'width': instance.width,
      'preferredWidth': instance.preferredWidth,
      'height': instance.height,
      'preferredHeight': instance.preferredHeight,
      'decoration': const CellDecorationConverter().toJson(instance.decoration),
      'selected': instance.selected,
      'preContext': instance.preContext,
      'title': instance.title,
      'content': instance.content,
      'cellType': instance.$type,
    };

_$ImageCellImpl _$$ImageCellImplFromJson(Map<String, dynamic> json) =>
    _$ImageCellImpl(
      layer: (json['layer'] as num?)?.toInt() ?? 10,
      offset: const OffsetConverter().fromJson(json['offset'] as List),
      id: const CellIdConverter().fromJson(json['id'] as Map<String, dynamic>),
      width: (json['width'] as num?)?.toDouble(),
      preferredWidth: (json['preferredWidth'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      preferredHeight: (json['preferredHeight'] as num?)?.toDouble(),
      decoration: const CellDecorationConverter()
          .fromJson(json['decoration'] as Map<String, dynamic>),
      selected: json['selected'] as bool? ?? false,
      preContext: json['preContext'] as String?,
      url: const UriConverter().fromJson(json['url'] as String),
      $type: json['cellType'] as String?,
    );

Map<String, dynamic> _$$ImageCellImplToJson(_$ImageCellImpl instance) =>
    <String, dynamic>{
      'layer': instance.layer,
      'offset': const OffsetConverter().toJson(instance.offset),
      'id': const CellIdConverter().toJson(instance.id),
      'width': instance.width,
      'preferredWidth': instance.preferredWidth,
      'height': instance.height,
      'preferredHeight': instance.preferredHeight,
      'decoration': const CellDecorationConverter().toJson(instance.decoration),
      'selected': instance.selected,
      'preContext': instance.preContext,
      'url': const UriConverter().toJson(instance.url),
      'cellType': instance.$type,
    };

_$ArticleCellImpl _$$ArticleCellImplFromJson(Map<String, dynamic> json) =>
    _$ArticleCellImpl(
      layer: (json['layer'] as num?)?.toInt() ?? 10,
      offset: const OffsetConverter().fromJson(json['offset'] as List),
      id: const CellIdConverter().fromJson(json['id'] as Map<String, dynamic>),
      width: (json['width'] as num?)?.toDouble(),
      preferredWidth: (json['preferredWidth'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      preferredHeight: (json['preferredHeight'] as num?)?.toDouble(),
      decoration: const CellDecorationConverter()
          .fromJson(json['decoration'] as Map<String, dynamic>),
      selected: json['selected'] as bool? ?? false,
      preContext: json['preContext'] as String?,
      title: json['title'] as String,
      content: json['content'] as String,
      $type: json['cellType'] as String?,
    );

Map<String, dynamic> _$$ArticleCellImplToJson(_$ArticleCellImpl instance) =>
    <String, dynamic>{
      'layer': instance.layer,
      'offset': const OffsetConverter().toJson(instance.offset),
      'id': const CellIdConverter().toJson(instance.id),
      'width': instance.width,
      'preferredWidth': instance.preferredWidth,
      'height': instance.height,
      'preferredHeight': instance.preferredHeight,
      'decoration': const CellDecorationConverter().toJson(instance.decoration),
      'selected': instance.selected,
      'preContext': instance.preContext,
      'title': instance.title,
      'content': instance.content,
      'cellType': instance.$type,
    };

_$UrlCellImpl _$$UrlCellImplFromJson(Map<String, dynamic> json) =>
    _$UrlCellImpl(
      layer: (json['layer'] as num?)?.toInt() ?? 10,
      offset: const OffsetConverter().fromJson(json['offset'] as List),
      id: const CellIdConverter().fromJson(json['id'] as Map<String, dynamic>),
      width: (json['width'] as num?)?.toDouble(),
      preferredWidth: (json['preferredWidth'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      preferredHeight: (json['preferredHeight'] as num?)?.toDouble(),
      decoration: const CellDecorationConverter()
          .fromJson(json['decoration'] as Map<String, dynamic>),
      selected: json['selected'] as bool? ?? false,
      preContext: json['preContext'] as String?,
      url: const UriConverter().fromJson(json['url'] as String),
      $type: json['cellType'] as String?,
    );

Map<String, dynamic> _$$UrlCellImplToJson(_$UrlCellImpl instance) =>
    <String, dynamic>{
      'layer': instance.layer,
      'offset': const OffsetConverter().toJson(instance.offset),
      'id': const CellIdConverter().toJson(instance.id),
      'width': instance.width,
      'preferredWidth': instance.preferredWidth,
      'height': instance.height,
      'preferredHeight': instance.preferredHeight,
      'decoration': const CellDecorationConverter().toJson(instance.decoration),
      'selected': instance.selected,
      'preContext': instance.preContext,
      'url': const UriConverter().toJson(instance.url),
      'cellType': instance.$type,
    };

_$HeaderCellImpl _$$HeaderCellImplFromJson(Map<String, dynamic> json) =>
    _$HeaderCellImpl(
      layer: (json['layer'] as num?)?.toInt() ?? 10,
      offset: const OffsetConverter().fromJson(json['offset'] as List),
      id: const CellIdConverter().fromJson(json['id'] as Map<String, dynamic>),
      width: (json['width'] as num?)?.toDouble(),
      preferredWidth: (json['preferredWidth'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      preferredHeight: (json['preferredHeight'] as num?)?.toDouble(),
      decoration: const CellDecorationConverter()
          .fromJson(json['decoration'] as Map<String, dynamic>),
      selected: json['selected'] as bool? ?? false,
      preContext: json['preContext'] as String?,
      title: json['title'] as String,
      $type: json['cellType'] as String?,
    );

Map<String, dynamic> _$$HeaderCellImplToJson(_$HeaderCellImpl instance) =>
    <String, dynamic>{
      'layer': instance.layer,
      'offset': const OffsetConverter().toJson(instance.offset),
      'id': const CellIdConverter().toJson(instance.id),
      'width': instance.width,
      'preferredWidth': instance.preferredWidth,
      'height': instance.height,
      'preferredHeight': instance.preferredHeight,
      'decoration': const CellDecorationConverter().toJson(instance.decoration),
      'selected': instance.selected,
      'preContext': instance.preContext,
      'title': instance.title,
      'cellType': instance.$type,
    };
