import 'dart:async';

import 'package:flutter/foundation.dart';
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
      debugPrint('Listening to edge list stream');
    },
    onCancel: () {
      debugPrint('Cancel listening to edge list stream');
    },
  );

  ref.onDispose(() {
    controller.close();
    debugPrint('Disposed edge list stream');
  });

  return controller;
}

@riverpod
Stream<List<Edge>> getEdgeList(
  GetEdgeListRef ref, {
  required EdgeParentId parentId,
}) async* {
  final repository = ref.watch(edgeRepositoryProvider);
  yield (await repository.getList(parentId: parentId));
  final controller =
      ref.watch(getEdgeListStreamControllerProvider(parentId: parentId));
  yield* controller.stream;
}
