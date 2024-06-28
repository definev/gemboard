import 'package:ask_board/src/domain/model/ask_board.dart';
import 'package:ask_board/src/domain/repository/ask_board_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'crud_dto_repository.dart';

part 'ask_board_repository.g.dart';

@Riverpod(keepAlive: true)
AskBoardRepositoryMemory askBoardRepositoryMemory(
    AskBoardRepositoryMemoryRef ref) {
  return AskBoardRepositoryMemory();
}

class AskBoardRepositoryMemory extends AskBoardRepository
    with CrudDTORepositoryMemory<AskBoardParentId, AskBoardId, AskBoard> {
  Map<AskBoardParentId, List<AskBoard>> map = {
    const AskBoardParentId(): [
      AskBoard(
        id: AskBoardId(id: '1'),
        title: 'Untitled',
      ),
    ],
  };
}
