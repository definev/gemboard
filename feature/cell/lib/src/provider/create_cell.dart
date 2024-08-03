import 'package:cell/cell.dart';
import 'package:cell/src/domain/repository/cell_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_cell.g.dart';

@riverpod
Future<void> createCell(
  CreateCellRef ref, {
  required CellParentId parentId,
  required Cell data,
}) async {
  final repository = ref.read(cellRepositoryProvider);
  await repository.add(parentId: parentId, data: data);
  final controller =
      ref.read(getCellListStreamControllerProvider(parentId: parentId));
  controller.sink.add(await repository.getList(parentId: parentId));
}

@riverpod
Future<void> createCells(
  CreateCellsRef ref, {
  required CellParentId parentId,
  required List<Cell> data,
}) async {
  final repository = ref.read(cellRepositoryProvider);
  for (final cell in data) {
    await repository.add(parentId: parentId, data: cell);
  }
  final controller =
      ref.read(getCellListStreamControllerProvider(parentId: parentId));
  controller.add(await repository.getList(parentId: parentId));
}
