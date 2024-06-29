import 'package:ask_board/src/domain/model/ask_cell.dart';
import 'package:ask_board/src/domain/repository/ask_cell_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_ask_cell_list.g.dart';

@riverpod
Future<List<AskCell>> getAskCellList(
  GetAskCellListRef ref, {
  required AskCellParentId parentId,
}) async {
  final repository = ref.watch(askCellRepositoryProvider);
  return repository.getList(parentId: parentId);
}
