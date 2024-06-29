import 'package:ask_board/src/domain/model/ask_cell.dart';
import 'package:ask_board/src/domain/repository/crud_dto_repository.dart';
import 'package:ask_board/src/domain/repository/memory/ask_cell_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ask_cell_repository.g.dart';

@Riverpod(keepAlive: true)
AskCellRepository askCellRepository(AskCellRepositoryRef ref) {
  return ref.watch(askCellRepositoryMemoryProvider);
}

abstract class AskCellRepository
    extends CrudDTORepository<AskCellParentId, AskCellId, AskCell> {}
