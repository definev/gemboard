import 'package:cell/cell.dart';
import 'package:cell/src/domain/repository/cell_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_cell.g.dart';

@riverpod
Future<void> updateCell(
  UpdateCellRef ref, {
  required CellId id,
  required Cell data,
}) async {
  final repository = ref.read(cellRepositoryProvider);
  await repository.update(id: id, data: data);
  final controller =
      ref.read(getCellListStreamControllerProvider(parentId: id.parentId));
  controller.sink.add(await repository.getList(parentId: id.parentId));
}
