import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';
import 'package:whiteboard/src/domain/data/whiteboard_position.dart';
import 'package:whiteboard/whiteboard.dart';

import '../hive/whiteboard_repository.dart';
import '../memory/whiteboard_repository.dart';

part 'whiteboard_repository.g.dart';

@Riverpod(keepAlive: true)
WhiteboardRepository whiteboardRepositoryAdaptive(
    WhiteboardRepositoryAdaptiveRef ref) {
  return WhiteboardRepositoryAdaptive(
    hive: ref.watch(whiteboardRepositoryHiveProvider),
    memory: ref.watch(whiteboardRepositoryMemoryProvider),
  );
}

class WhiteboardRepositoryAdaptive extends WhiteboardRepository
    with
        CrudDtoRepositoryAdaptive<WhiteboardParentId, WhiteboardId,
            Whiteboard> {
  WhiteboardRepositoryAdaptive({required this.hive, required this.memory});

  final WhiteboardRepository hive;
  final WhiteboardRepository memory;

  @override
  CrudDTORepository<WhiteboardParentId, WhiteboardId, Whiteboard>
      get interactive => memory;

  @override
  CrudDTORepository<WhiteboardParentId, WhiteboardId, Whiteboard> get storage =>
      hive;

  @override
  Future<WhiteboardPosition?> getWhiteboardPosition({
    required WhiteboardId id,
  }) async {
    try {
      return await memory.getWhiteboardPosition(id: id);
    } on String catch (error) {
      if (error == WhiteboardRepositoryMemory.undefined) {
        final position = await hive.getWhiteboardPosition(id: id);
        if (position != null) {
          await memory.setWhiteboardPosition(id: id, position: position);
        }
        return position;
      } else {
        rethrow;
      }
    }
  }

  @override
  Future<void> setWhiteboardPosition({
    required WhiteboardId id,
    required WhiteboardPosition position,
  }) async {
    hive.setWhiteboardPosition(id: id, position: position);
    return await memory.setWhiteboardPosition(id: id, position: position);
  }
}
