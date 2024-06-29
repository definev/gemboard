import 'package:ask_board/src/domain/model/ask_page.dart';
import 'package:ask_board/src/domain/repository/ask_page_repository.dart';
import 'package:ask_board/src/domain/repository/memory/crud_dto_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ask_page_repository.g.dart';

@Riverpod(keepAlive: true)
AskPageRepositoryMemory askPageRepositoryMemory(
    AskPageRepositoryMemoryRef ref) {
  return AskPageRepositoryMemory();
}

class AskPageRepositoryMemory extends AskPageRepository
    with CrudDTORepositoryMemory<AskPageParentId, AskPageId, AskPage> {}
