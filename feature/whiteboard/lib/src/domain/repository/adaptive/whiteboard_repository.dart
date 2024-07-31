import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';
import 'package:whiteboard/src/domain/data/whiteboard_position.dart';
import 'package:whiteboard/whiteboard.dart';

import '../drift/whiteboard_repository.dart';
import '../memory/whiteboard_repository.dart';

part 'whiteboard_repository.g.dart';

@Riverpod(keepAlive: true)
WhiteboardRepository whiteboardRepositoryAdaptive(
    WhiteboardRepositoryAdaptiveRef ref) {
  final drift = ref.watch(whiteboardRepositoryDriftProvider);
  // final hive = ref.watch(whiteboardRepositoryHiveProvider);
  final memory = ref.watch(whiteboardRepositoryMemoryProvider);

  return WhiteboardRepositoryAdaptive(
    local: drift,
    memory: memory,
  );
}

class WhiteboardRepositoryAdaptive extends WhiteboardRepository
    with
        CrudDtoRepositoryAdaptive<WhiteboardParentId, WhiteboardId,
            Whiteboard> {
  WhiteboardRepositoryAdaptive({required this.local, required this.memory});

  final WhiteboardRepository local;
  final WhiteboardRepository memory;

  @override
  CrudDTORepository<WhiteboardParentId, WhiteboardId, Whiteboard>
      get interactive => memory;

  @override
  CrudDTORepository<WhiteboardParentId, WhiteboardId, Whiteboard> get storage =>
      local;

  @override
  Future<WhiteboardPosition?> getWhiteboardPosition({
    required WhiteboardId id,
  }) async {
    final position = await local.getWhiteboardPosition(id: id);
    return position;
  }

  @override
  Future<void> setWhiteboardPosition({
    required WhiteboardId id,
    required WhiteboardPosition position,
  }) async {
    local.setWhiteboardPosition(id: id, position: position);
    return await memory.setWhiteboardPosition(id: id, position: position);
  }
}
