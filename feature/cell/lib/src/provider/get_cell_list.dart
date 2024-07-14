import 'package:cell/src/domain/repository/cell_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/model/cell.dart';

part 'get_cell_list.g.dart';

@riverpod
Stream<List<Cell>> getCellList(
  GetCellListRef ref, {
  required CellParentId parentId,
}) async* {
  final repository = ref.watch(cellRepositoryProvider);
  yield* repository.watchList(parentId: parentId);
}
