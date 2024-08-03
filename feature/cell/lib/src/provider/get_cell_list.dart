import 'dart:async';

import 'package:cell/src/domain/repository/cell_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/model/cell.dart';

part 'get_cell_list.g.dart';

@riverpod
StreamController<List<Cell>> getCellListStreamController(
  GetCellListStreamControllerRef ref, {
  required CellParentId parentId,
}) {
  final controller = StreamController<List<Cell>>.broadcast(
    onListen: () {
      debugPrint('Listening to cell list stream');
    },
    onCancel: () {
      debugPrint('Cancel listening to cell list stream');
    },
  );

  ref.onDispose(() {
    controller.close();
    debugPrint('Disposed cell list stream');
  });

  return controller;
}

@riverpod
Stream<List<Cell>> getCellList(
  GetCellListRef ref, {
  required CellParentId parentId,
}) async* {
  final repository = ref.watch(cellRepositoryProvider);
  yield (await repository.getList(parentId: parentId));
  yield* ref
      .watch(getCellListStreamControllerProvider(parentId: parentId))
      .stream;
}
