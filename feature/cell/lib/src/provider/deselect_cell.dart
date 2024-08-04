import 'dart:ui';

import 'package:cell/cell.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'deselect_cell.g.dart';

@riverpod
Future<void> deselectAllCell(
  DeselectAllCellRef ref, {
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

@riverpod
Future<void> deselectCell(
  DeselectCellRef ref, {
  required CellParentId parentId,
  required Rect selection,
}) async {
  var cellList = await ref.read(getCellListProvider(parentId: parentId).future);

  for (final cell in cellList) {
    final cellRect = cell.offset &
        Size(
          cell.width,
          cell.height ?? cell.preferredHeight ?? 100,
        );
    final selected = selection.overlaps(cellRect);
    if (selected == false) continue;
    await ref.read(
      updateCellProvider(
        id: cell.id,
        data: cell.copyWith(selected: false),
      ),
    );
  }
}
