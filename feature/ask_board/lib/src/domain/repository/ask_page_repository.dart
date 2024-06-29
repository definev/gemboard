import 'package:ask_board/src/domain/model/ask_page.dart';
import 'package:ask_board/src/domain/repository/crud_dto_repository.dart';
import 'package:ask_board/src/domain/repository/memory/ask_page_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ask_page_repository.g.dart';

@Riverpod(keepAlive: true)
AskPageRepository askPageRepository(AskPageRepositoryRef ref) {
  return ref.watch(askPageRepositoryMemoryProvider);
}

abstract class AskPageRepository
    extends CrudDTORepository<AskPageParentId, AskPageId, AskPage> {}
