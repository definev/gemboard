import 'dart:async';

import 'package:cell/src/domain/repository/cell_repository.dart';
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
      print('Listening to cell list stream');
    },
    onCancel: () {
      print('Cancel listening to cell list stream');
    },
  );
  final repository = ref.watch(cellRepositoryProvider);
  controller.sink.addStream(repository.watchList(parentId: parentId));

  final subscription = controller.stream.listen((cells) {
    print('Cell list stream: $cells');
  });

  ref.onDispose(() {
    controller.close();
    subscription.cancel();
    print('Disposed cell list stream');
  });
  return controller;
}

@riverpod
Stream<List<Cell>> getCellList(
  GetCellListRef ref, {
  required CellParentId parentId,
}) async* {
  yield* ref
      .watch(getCellListStreamControllerProvider(parentId: parentId))
      .stream;
}
