import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:utils/utils.dart';
import 'package:whiteboard/whiteboard.dart';

part 'whiteboard_repository.g.dart';

@Riverpod(keepAlive: true)
WhiteboardRepository whiteboardRepositoryHive(WhiteboardRepositoryHiveRef ref) {
  return WhiteboardRepositoryHive();
}

class WhiteboardRepositoryHive extends WhiteboardRepository
    with CrudDTORepositoryHive<WhiteboardParentId, WhiteboardId, Whiteboard> {
  @override
  String get boxName => 'whiteboard';

  @override
  Whiteboard fromJson(Map<String, dynamic> json) {
    return Whiteboard.fromJson(json);
  }

  Future<SharedPreferences> prefs = SharedPreferences.getInstance();

  @override
  Future<WhiteboardPosition?> getWhiteboardPosition({
    required WhiteboardId id,
  }) async {
    final store = await prefs;
    final raw = store.getString('whiteboard_offset_${id.id}');
    if (raw == null) {
      return WhiteboardPosition.defaultWhiteboardPosition(id.id);
    }

    return WhiteboardPosition.fromJson(jsonDecode(raw));
  }

  @override
  Future<void> setWhiteboardPosition({
    required WhiteboardId id,
    required WhiteboardPosition position,
  }) async {
    final store = await prefs;
    await store.setString(
      'whiteboard_offset_${id.id}',
      jsonEncode(position.toJson()),
    );
  }

  @override
  Future<void> deleteWhiteboardPosition({required WhiteboardId id}) {
    return prefs.then((store) => store.remove('whiteboard_offset_${id.id}'));
  }
}
