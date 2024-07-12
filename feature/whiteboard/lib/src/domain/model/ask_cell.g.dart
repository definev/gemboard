// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask_cell.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AskCellIdImpl _$$AskCellIdImplFromJson(Map<String, dynamic> json) =>
    _$AskCellIdImpl(
      parentId:
          AskCellParentId.fromJson(json['parentId'] as Map<String, dynamic>),
      id: json['id'] as String,
    );

Map<String, dynamic> _$$AskCellIdImplToJson(_$AskCellIdImpl instance) =>
    <String, dynamic>{
      'parentId': instance.parentId,
      'id': instance.id,
    };

_$AskCellParentIdImpl _$$AskCellParentIdImplFromJson(
        Map<String, dynamic> json) =>
    _$AskCellParentIdImpl(
      FolderId: json['FolderId'] as String,
      whiteboardId: json['whiteboardId'] as String,
    );

Map<String, dynamic> _$$AskCellParentIdImplToJson(
        _$AskCellParentIdImpl instance) =>
    <String, dynamic>{
      'FolderId': instance.FolderId,
      'whiteboardId': instance.whiteboardId,
    };

_$CellImpl _$$CellImplFromJson(Map<String, dynamic> json) => _$CellImpl(
      id: AskCellId.fromJson(json['id'] as Map<String, dynamic>),
      position:
          const OffsetConverter().fromJson(json['position'] as List<double>),
      size: const SizeConverter().fromJson(json['size'] as List<double>),
      title: json['title'] as String? ?? '',
      inputs: (json['inputs'] as List<dynamic>)
          .map((e) => AskInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CellImplToJson(_$CellImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'position': const OffsetConverter().toJson(instance.position),
      'size': const SizeConverter().toJson(instance.size),
      'title': instance.title,
      'inputs': instance.inputs,
      'runtimeType': instance.$type,
    };

_$CellRefImpl _$$CellRefImplFromJson(Map<String, dynamic> json) =>
    _$CellRefImpl(
      id: AskCellId.fromJson(json['id'] as Map<String, dynamic>),
      position:
          const OffsetConverter().fromJson(json['position'] as List<double>),
      size: const SizeConverter().fromJson(json['size'] as List<double>),
      refId: AskCellId.fromJson(json['refId'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CellRefImplToJson(_$CellRefImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'position': const OffsetConverter().toJson(instance.position),
      'size': const SizeConverter().toJson(instance.size),
      'refId': instance.refId,
      'runtimeType': instance.$type,
    };
