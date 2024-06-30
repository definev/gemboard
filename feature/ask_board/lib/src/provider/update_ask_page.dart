import 'package:ask_board/src/domain/model/ask_page.dart';
import 'package:ask_board/src/domain/repository/ask_page_repository.dart';
import 'package:ask_board/src/provider/get_ask_page_list.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_ask_page.g.dart';

@riverpod
Future<void> updateAskPage(
  UpdateAskPageRef ref, {
  required AskPageId id,
  required AskPage data,
}) async {
  final repository = ref.watch(askPageRepositoryProvider);
  await repository.update(id: id, data: data);
  ref.invalidate(getAskPageListProvider(parentId: id.parentId));
}
