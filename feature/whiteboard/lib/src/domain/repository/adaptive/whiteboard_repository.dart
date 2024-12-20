import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';
import 'package:whiteboard/src/domain/repository/shared_preferences/whiteboard_repository.dart';
import 'package:whiteboard/whiteboard.dart';

import '../drift/whiteboard_repository.dart';
import '../memory/whiteboard_repository.dart';

part 'whiteboard_repository.g.dart';

@Riverpod(keepAlive: true)
WhiteboardRepository whiteboardRepositoryAdaptive(
    WhiteboardRepositoryAdaptiveRef ref) {
  final memory = ref.watch(whiteboardRepositoryMemoryProvider);
  if (kIsWasm) {
    final sharedPreferences =
        ref.watch(whiteboardRepositorySharedPreferencesProvider);
    return WhiteboardRepositoryAdaptive(
      local: sharedPreferences,
      memory: memory,
    );
  }
  final drift = ref.watch(whiteboardRepositoryDriftProvider);

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
    return position ?? await memory.getWhiteboardPosition(id: id);
  }

  @override
  Future<void> setWhiteboardPosition({
    required WhiteboardId id,
    required WhiteboardPosition position,
  }) async {
    local.setWhiteboardPosition(id: id, position: position);
    return await memory.setWhiteboardPosition(id: id, position: position);
  }

  @override
  Future<void> deleteWhiteboardPosition({required WhiteboardId id}) {
    local.deleteWhiteboardPosition(id: id);
    return memory.deleteWhiteboardPosition(id: id);
  }
}
