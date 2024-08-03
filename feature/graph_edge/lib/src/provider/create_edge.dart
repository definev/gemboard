import 'package:graph_edge/graph_edge.dart';
import 'package:graph_edge/src/domain/repository/edge_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_edge.g.dart';

@riverpod
Future<void> createEdge(
  CreateEdgeRef ref, {
  required EdgeParentId parentId,
  required Edge data,
}) async {
  final repository = ref.read(edgeRepositoryProvider);
  await repository.add(parentId: parentId, data: data);
  final controller =
      ref.read(getEdgeListStreamControllerProvider(parentId: parentId));
  controller.sink.add(await repository.getList(parentId: parentId));
}

@riverpod
Future<void> createEdges(
  CreateEdgesRef ref, {
  required EdgeParentId parentId,
  required List<Edge> data,
}) async {
  final repository = ref.read(edgeRepositoryProvider);
  for (final edge in data) {
    await repository.add(parentId: parentId, data: edge);
  }

  final controller =
      ref.read(getEdgeListStreamControllerProvider(parentId: parentId));
  controller.sink.add(await repository.getList(parentId: parentId));
}
