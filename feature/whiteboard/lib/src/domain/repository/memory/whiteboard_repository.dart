import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';
import 'package:whiteboard/whiteboard.dart';

part 'whiteboard_repository.g.dart';

@Riverpod(keepAlive: true)
WhiteboardRepositoryMemory whiteboardRepositoryMemory(
    WhiteboardRepositoryMemoryRef ref) {
  return WhiteboardRepositoryMemory();
}

class WhiteboardRepositoryMemory extends WhiteboardRepository
    with CrudDTORepositoryMemory<WhiteboardParentId, WhiteboardId, Whiteboard> {
  Map<String, WhiteboardPosition> _positions = {};

  static const undefined = 'position undefined';

  @override
  Future<WhiteboardPosition?> getWhiteboardPosition({
    required WhiteboardId id,
  }) async {
    if (_positions[id.id] == null) throw undefined;
    return _positions[id.id]!;
  }

  @override
  Future<void> setWhiteboardPosition({
    required WhiteboardId id,
    required WhiteboardPosition position,
  }) async {
    _positions[id.id] = position;
  }

  @override
  Future<void> deleteWhiteboardPosition({required WhiteboardId id}) async {
    _positions.remove(id.id);
  }
}
