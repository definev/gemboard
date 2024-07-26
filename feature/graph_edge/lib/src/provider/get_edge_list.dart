import 'dart:async';

import 'package:graph_edge/src/domain/repository/edge_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/model/edge.dart';

part 'get_edge_list.g.dart';

@riverpod
StreamController<List<Edge>> getEdgeListStreamController(
  GetEdgeListStreamControllerRef ref, {
  required EdgeParentId parentId,
}) {
  final controller = StreamController<List<Edge>>.broadcast(
    onListen: () {
      print('Listening to edge list stream');
    },
    onCancel: () {
      print('Cancel listening to edge list stream');
    },
  );
  final repository = ref.watch(edgeRepositoryProvider);
  controller.sink.addStream(repository.watchList(parentId: parentId));

  ref.onDispose(() {
    controller.close();
    print('Disposed edge list stream');
  });
  return controller;
}

@riverpod
Stream<List<Edge>> getEdgeList(
  GetEdgeListRef ref, {
  required EdgeParentId parentId,
}) async* {
  yield* ref
      .watch(getEdgeListStreamControllerProvider(parentId: parentId))
      .stream;
}
