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

  static WhiteboardPosition defaultWhiteboardPosition(String whiteboardId) =>
      WhiteboardPosition(
        whiteboardId: whiteboardId,
        scale: WhiteboardPosition.defaultScaleFactor,
        offset: Offset.zero,
      );

  /// A canvas scale is used to scale the base size to the "logical" size of the canvas.
  static const canvasScale = 2.3;

  /// The initial scale factor for the whiteboard.
  static const defaultScaleFactor = 1 / canvasScale;
}
