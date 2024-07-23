import 'package:riverpod_annotation/riverpod_annotation.dart';
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
}
