import 'package:ask_board/src/domain/model/ask_io_id.dart';
import 'package:ask_board/src/domain/model/ask_output.dart';
import 'package:ask_board/src/domain/repository/ask_output_repository.dart';
import 'package:ask_board/src/domain/repository/memory/crud_dto_repository.dart';

class AskOutputRepositoryMemory extends AskOutputRepository
    with CrudDTORepositoryMemory<AskIOParentId, AskIOId, AskOutput> {}
