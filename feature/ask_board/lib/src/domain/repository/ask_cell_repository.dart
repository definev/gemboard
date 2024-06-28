import 'package:ask_board/src/domain/model/ask_cell.dart';
import 'package:ask_board/src/domain/repository/crud_dto_repository.dart';

abstract class AskCellRepository extends CrudDTORepository<AskCellParentId, AskCellId, AskCell> {}
