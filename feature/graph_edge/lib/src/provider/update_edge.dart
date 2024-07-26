import 'package:graph_edge/graph_edge.dart';
import 'package:graph_edge/src/domain/repository/edge_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_edge.g.dart';

@riverpod
Future<void> updateEdge(
  UpdateEdgeRef ref, {
  required EdgeId id,
  required Edge data,
}) async {
  final repository = ref.read(edgeRepositoryProvider);
  await repository.update(id: id, data: data);
  final controller =
      ref.read(getEdgeListStreamControllerProvider(parentId: id.parentId));
  controller.sink.add(await repository.getList(parentId: id.parentId));
}

@riverpod
Future<void> updateEdges(
  UpdateEdgesRef ref, {
  required EdgeParentId parentId,
  required List<Edge> edges,
}) async {
  final repository = ref.read(edgeRepositoryProvider);
  for (final edge in edges) {
    await repository.update(id: edge.id, data: edge);
  }
  final controller =
      ref.read(getEdgeListStreamControllerProvider(parentId: parentId));
  controller.sink.add(await repository.getList(parentId: parentId));
}
