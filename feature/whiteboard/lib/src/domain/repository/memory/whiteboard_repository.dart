import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';
import 'package:whiteboard/src/domain/data/whiteboard_position.dart';
import 'package:whiteboard/whiteboard.dart';

part 'whiteboard_repository.g.dart';

@Riverpod(keepAlive: true)
WhiteboardRepositoryMemory whiteboardRepositoryMemory(
    WhiteboardRepositoryMemoryRef ref) {
  return WhiteboardRepositoryMemory();
}

class WhiteboardRepositoryMemory extends WhiteboardRepository
    with CrudDTORepositoryMemory<WhiteboardParentId, WhiteboardId, Whiteboard> {
  WhiteboardPosition? _position;

  static const undefined = 'position undefined';

  @override
  Future<WhiteboardPosition?> getWhiteboardPosition({
    required WhiteboardId id,
  }) async {
    if (_position == null) throw undefined;
    return _position!;
  }

  @override
  Future<void> setWhiteboardPosition({
    required WhiteboardId id,
    required WhiteboardPosition position,
  }) async {
    _position = position;
  }
}
