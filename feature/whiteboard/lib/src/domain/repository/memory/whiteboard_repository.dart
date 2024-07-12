import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';

import '../../model/whiteboard.dart';
import '../whiteboard_repository.dart';

part 'whiteboard_repository.g.dart';

@Riverpod(keepAlive: true)
WhiteboardRepositoryMemory whiteboardRepositoryMemory(
    WhiteboardRepositoryMemoryRef ref) {
  return WhiteboardRepositoryMemory();
}

class WhiteboardRepositoryMemory extends WhiteboardRepository
    with CrudDTORepositoryMemory<WhiteboardParentId, WhiteboardId, Whiteboard> {}
