import 'package:cell/cell.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'select_cell.g.dart';

@riverpod
Future<void> selectAllCell(
  SelectAllCellRef ref, {
  required CellParentId parentId,
}) async {
  final cellList =
      await ref.read(getCellListProvider(parentId: parentId).future);

  await ref.read(
    updateCellsProvider(
      parentId: parentId,
      cells: cellList.map((cell) => cell.copyWith(selected: true)).toList(),
    ).future,
  );
}

@riverpod
Future<void> selectCell(
  SelectCellRef ref, {
  required CellParentId parentId,
  required Rect selection,
}) async {
  var cellList = await ref.read(getCellListProvider(parentId: parentId).future);

  for (final cell in cellList) {
    final cellRect = cell.offset &
        Size(
          cell.width ?? cell.preferredWidth ?? 100,
          cell.height ?? cell.preferredHeight ?? 100,
        );
    final selected = cell.selected || selection.overlaps(cellRect);
    await ref.read(
      updateCellProvider(
        id: cell.id,
        data: cell.copyWith(selected: selected),
      ),
    );
  }
}
