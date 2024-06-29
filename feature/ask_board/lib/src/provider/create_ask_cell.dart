import 'package:ask_board/src/domain/model/ask_cell.dart';
import 'package:ask_board/src/domain/repository/ask_cell_repository.dart';
import 'package:ask_board/src/provider/get_ask_cell_list.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_ask_cell.g.dart';

@riverpod
Future<void> createAskCell(
  CreateAskCellRef ref, {
  required AskCellParentId parentId,
  required AskCell data,
}) async {
  final repository = ref.watch(askCellRepositoryProvider);
  await repository.add(parentId: parentId, data: data);
  ref.invalidate(getAskCellListProvider(parentId: parentId));
}
