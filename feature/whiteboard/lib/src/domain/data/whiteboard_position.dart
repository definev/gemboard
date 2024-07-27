import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:utils/utils.dart';

part 'whiteboard_position.freezed.dart';
part 'whiteboard_position.g.dart';

@freezed
sealed class WhiteboardPosition with _$WhiteboardPosition {
  const factory WhiteboardPosition({
    required String whiteboardId,
    required double scale,
    @OffsetConverter() required Offset offset,
  }) = _WhiteboardPosition;

  factory WhiteboardPosition.fromJson(Map<String, dynamic> json) =>
      _$WhiteboardPositionFromJson(json);
}
