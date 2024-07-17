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
  ref
      .read(getCellListStreamControllerProvider(parentId: parentId))
      .sink
      .add(await repository.getList(parentId: parentId));
}
