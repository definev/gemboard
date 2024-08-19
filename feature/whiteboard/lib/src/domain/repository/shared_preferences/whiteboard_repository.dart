import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';
import 'package:whiteboard/whiteboard.dart';

part 'whiteboard_repository.g.dart';

@Riverpod(keepAlive: true)
WhiteboardRepository whiteboardRepositorySharedPreferences(
    WhiteboardRepositorySharedPreferencesRef ref) {
  return WhiteboardRepositorySharedPreferences();
}

class WhiteboardRepositorySharedPreferences extends WhiteboardRepository
    with
        CrudDtoRepositorySharedPreferences<WhiteboardParentId, WhiteboardId,
            Whiteboard> {
  @override
  String get boxName => 'whiteboard';

  @override
  Whiteboard fromJson(Map<String, dynamic> json) {
    return Whiteboard.fromJson(json);
  }

  String getWhiteboardPositionKey(WhiteboardId id) =>
      'whiteboard_position_${id.id}';

  @override
  Future<void> deleteWhiteboardPosition({required WhiteboardId id}) async {
    await instance.remove(getWhiteboardPositionKey(id));
  }

  @override
  Future<WhiteboardPosition?> getWhiteboardPosition(
      {required WhiteboardId id}) async {
    final raw = await instance.getString(getWhiteboardPositionKey(id));
    if (raw == null) {
      return WhiteboardPosition.defaultWhiteboardPosition(id.id);
    }
    return WhiteboardPosition.fromJson(jsonDecode(raw));
  }

  @override
  Future<void> setWhiteboardPosition(
      {required WhiteboardId id, required WhiteboardPosition position}) async {
    await instance.setString(
      getWhiteboardPositionKey(id),
      jsonEncode(position.toJson()),
    );
  }
}
