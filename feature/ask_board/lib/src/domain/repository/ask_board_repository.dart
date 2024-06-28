import 'package:ask_board/src/domain/model/ask_board.dart';
import 'package:ask_board/src/domain/repository/crud_dto_repository.dart';
import 'package:ask_board/src/domain/repository/memory/ask_board_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ask_board_repository.g.dart';

@riverpod
AskBoardRepository askBoardRepository(AskBoardRepositoryRef ref) {
  return ref.read(askBoardRepositoryMemoryProvider);
}

abstract class AskBoardRepository
    extends CrudDTORepository<AskBoardParentId, AskBoardId, AskBoard> {}
