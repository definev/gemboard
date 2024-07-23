import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';

import '../model/whiteboard.dart';
import 'adaptive/whiteboard_repository.dart';

part 'whiteboard_repository.g.dart';

@Riverpod(keepAlive: true)
WhiteboardRepository whiteboardRepository(WhiteboardRepositoryRef ref) {
  return ref.watch(whiteboardRepositoryAdaptiveProvider);
}

abstract class WhiteboardRepository
    extends CrudDTORepository<WhiteboardParentId, WhiteboardId, Whiteboard> {}
