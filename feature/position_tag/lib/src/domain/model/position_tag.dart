// ignore_for_file: invalid_annotation_target
import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:utils/utils.dart';

part 'position_tag.freezed.dart';
part 'position_tag.g.dart';

class PositionTagIdConverter
    implements JsonConverter<PositionTagId, Map<String, dynamic>> {
  const PositionTagIdConverter();

  @override
  PositionTagId fromJson(Map<String, dynamic> json) =>
      PositionTagId.fromJson(json);

  @override
  Map<String, dynamic> toJson(PositionTagId object) => object.toJson();
}

class PositionTagParentIdConverter
    implements JsonConverter<PositionTagParentId, Map<String, dynamic>> {
  const PositionTagParentIdConverter();

  @override
  PositionTagParentId fromJson(Map<String, dynamic> json) =>
      PositionTagParentId.fromJson(json);

  @override
  Map<String, dynamic> toJson(PositionTagParentId object) => object.toJson();
}

@freezed
class PositionTagId
    with _$PositionTagId, HasIdentity, HasParentId<PositionTagParentId> {
  const factory PositionTagId({
    @PositionTagParentIdConverter() required PositionTagParentId parentId,
    required String id,
  }) = _PositionTagId;

  factory PositionTagId.fromJson(Map<String, dynamic> json) =>
      _$PositionTagIdFromJson(json);
}

@freezed
class PositionTagParentId with _$PositionTagParentId, HasIdentity {
  const PositionTagParentId._();

  const factory PositionTagParentId({
    required String whiteboardId,
  }) = _PositionTagParentId;

  factory PositionTagParentId.fromJson(Map<String, dynamic> json) =>
      _$PositionTagParentIdFromJson(json);

  @override
  String get id => whiteboardId;
}

@freezed
sealed class PositionTag with _$PositionTag, HasId<PositionTagId> {
  const factory PositionTag({
    @PositionTagIdConverter() required PositionTagId id,
    required String label,
    @RectConverter() required Rect rect,
  }) = _PositionTag;

  factory PositionTag.fromJson(Map<String, dynamic> json) =>
      _$PositionTagFromJson(json);
}
