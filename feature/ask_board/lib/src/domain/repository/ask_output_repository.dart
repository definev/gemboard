import 'package:ask_board/src/domain/model/ask_io_id.dart';
import 'package:ask_board/src/domain/model/ask_output.dart';
import 'package:ask_board/src/domain/repository/crud_dto_repository.dart';

abstract class AskOutputRepository
    extends CrudDTORepository<AskIOParentId, AskIOId, AskOutput> {}
