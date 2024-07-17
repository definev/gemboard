import 'package:cell/cell.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'deselect_cell.g.dart';

@riverpod
Future<void> deselectCell(
  DeselectCellRef ref, {
  required CellParentId parentId,
}) async {
  final cellLists =
      await ref.read(getCellListProvider(parentId: parentId).future);
  await ref.read(
    updateCellsProvider(
      parentId: parentId,
      cells: cellLists.map((cell) => cell.copyWith(selected: false)).toList(),
    ).future,
  );
}
