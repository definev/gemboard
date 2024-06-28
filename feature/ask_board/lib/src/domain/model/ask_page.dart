// ignore_for_file: invalid_annotation_target

import 'package:ask_board/src/domain/model/mixin/mixin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ask_page.freezed.dart';
part 'ask_page.g.dart';

@freezed
class AskPageId with _$AskPageId, HasParentId<AskPageParentId> {
  const factory AskPageId({
    @JsonKey(readValue: AskPageParentId.readValue)
    required AskPageParentId parentId,
    required String id,
  }) = _AskPageId;

  factory AskPageId.fromJson(Map<String, dynamic> json) =>
      _$AskPageIdFromJson(json);

  static Object? readValue(Map map, String _) =>
      AskPageId.fromJson(map as Map<String, dynamic>);
}

@freezed
class AskPageParentId with _$AskPageParentId {
  const factory AskPageParentId({
    required String askBoardId,
  }) = _AskPageParentId;

  factory AskPageParentId.fromJson(Map<String, dynamic> json) =>
      _$AskPageParentIdFromJson(json);

  static Object? readValue(Map map, String _) =>
      AskPageParentId.fromJson(map as Map<String, dynamic>);
}

@freezed
sealed class AskPage with _$AskPage, HasId<AskPageId> {
  const factory AskPage({
    @JsonKey(readValue: AskPageId.readValue) required AskPageId id,
    required String title,
  }) = _AskPage;

  factory AskPage.fromJson(Map<String, dynamic> json) =>
      _$AskPageFromJson(json);
}
