import 'package:cell/cell.dart';
import 'package:cell/src/domain/repository/cell_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'delete_cell.g.dart';

@riverpod
Future<void> deleteCell(
  DeleteCellRef ref, {
  required CellId id,
}) {
  final repository = ref.read(cellRepositoryProvider);
  return repository.delete(id: id);
}

@riverpod
Future<void> deleteCells(
  DeleteCellsRef ref, {
  required List<CellId> ids,
}) async {
  if (ids.isEmpty) return;

  final repository = ref.read(cellRepositoryProvider);
  final controller = await ref
      .read(getCellListStreamControllerProvider(parentId: ids.first.parentId));

  for (final id in ids) {
    await ref.read(deleteCellProvider(id: id).future);
  }

  controller.sink.add(await repository.getList(parentId: ids.first.parentId));
}

@riverpod
Future<void> deleteSelectedCell(
  DeleteSelectedCellRef ref, {
  required CellParentId parentId,
}) async {
  final cellList =
      await ref.read(getCellListProvider(parentId: parentId).future);
  final selectedCells = cellList.where((cell) => cell.selected).toList();

  if (selectedCells.isEmpty) return;
  await ref.read(
    deleteCellsProvider(ids: selectedCells.map((cell) => cell.id).toList())
        .future,
  );
}
