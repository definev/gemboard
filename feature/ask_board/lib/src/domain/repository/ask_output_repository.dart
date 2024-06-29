import 'package:ask_board/src/domain/model/ask_io_id.dart';
import 'package:ask_board/src/domain/model/ask_output.dart';
import 'package:ask_board/src/domain/repository/crud_dto_repository.dart';
import 'package:ask_board/src/domain/repository/memory/ask_output_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ask_output_repository.g.dart';

@Riverpod(keepAlive: true)
AskOutputRepository askOutputRepository(AskOutputRepositoryRef ref) {
  return ref.watch(askOutputRepositoryMemoryProvider);
}

abstract class AskOutputRepository
    extends CrudDTORepository<AskIOParentId, AskIOId, AskOutput> {}
