import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';
import 'package:whiteboard/src/domain/data/whiteboard_position.dart';

import '../model/whiteboard.dart';
import 'adaptive/whiteboard_repository.dart';

part 'whiteboard_repository.g.dart';

@Riverpod(keepAlive: true)
WhiteboardRepository whiteboardRepository(WhiteboardRepositoryRef ref) {
  // if (kIsWasm) return ref.watch(whiteboardRepositoryMemoryProvider);
  return ref.watch(whiteboardRepositoryAdaptiveProvider);
}

abstract class WhiteboardRepository
    extends CrudDTORepository<WhiteboardParentId, WhiteboardId, Whiteboard> {
  Future<WhiteboardPosition?> getWhiteboardPosition({required WhiteboardId id});

  Future<void> setWhiteboardPosition({
    required WhiteboardId id,
    required WhiteboardPosition position,
  });

  Future<void> deleteWhiteboardPosition({required WhiteboardId id});
}
