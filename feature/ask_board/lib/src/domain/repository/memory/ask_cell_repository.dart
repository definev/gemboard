import 'package:ask_board/src/domain/model/ask_cell.dart';
import 'package:ask_board/src/domain/repository/ask_cell_repository.dart';
import 'package:ask_board/src/domain/repository/memory/crud_dto_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ask_cell_repository.g.dart';

@Riverpod(keepAlive: true)
AskCellRepositoryMemory askCellRepositoryMemory(
    AskCellRepositoryMemoryRef ref) {
  return AskCellRepositoryMemory();
}

class AskCellRepositoryMemory extends AskCellRepository
    with CrudDTORepositoryMemory<AskCellParentId, AskCellId, AskCell> {}
