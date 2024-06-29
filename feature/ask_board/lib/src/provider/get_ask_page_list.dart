import 'package:ask_board/src/domain/model/ask_page.dart';
import 'package:ask_board/src/domain/repository/ask_page_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_ask_page_list.g.dart';

@riverpod
Future<List<AskPage>> getAskPageList(
    GetAskPageListRef ref, AskPageParentId parentId) async {
  final repository = ref.watch(askPageRepositoryProvider);
  return repository.getList(parentId: parentId);
}
