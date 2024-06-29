import 'package:ask_board/src/domain/model/ask_page.dart';
import 'package:ask_board/src/domain/repository/ask_page_repository.dart';
import 'package:ask_board/src/provider/get_ask_page_list.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_ask_page.g.dart';

@riverpod
Future<void> createAskPage(
  CreateAskPageRef ref, {
  required AskPageParentId parentId,
  required AskPage data,
}) async {
  final repository = ref.watch(askPageRepositoryProvider);
  await repository.add(parentId: parentId, data: data);
  ref.invalidate(getAskPageListProvider(parentId));
}
