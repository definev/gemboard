import 'package:graph_edge/graph_edge.dart';
import 'package:graph_edge/src/domain/repository/edge_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'delete_edge.g.dart';

@riverpod
Future<void> deleteEdge(
  DeleteEdgeRef ref, {
  required EdgeId id,
}) {
  final repository = ref.read(edgeRepositoryProvider);
  return repository.delete(id: id);
}

@riverpod
Future<void> deleteEdges(
  DeleteEdgesRef ref, {
  required List<EdgeId> ids,
}) async {
  if (ids.isEmpty) return;

  final repository = ref.read(edgeRepositoryProvider);
  final controller = ref
      .read(getEdgeListStreamControllerProvider(parentId: ids.first.parentId));

  for (final id in ids) {
    await ref.read(deleteEdgeProvider(id: id).future);
  }

  controller.sink.add(await repository.getList(parentId: ids.first.parentId));
}

@riverpod
Future<void> deleteCellEdge(
  DeleteCellEdgeRef ref, {
  required EdgeParentId parentId,
  required String cellId,
}) async {
  final edges = await ref.read(getEdgeListProvider(parentId: parentId).future);
  final relatedEdges = edges
      .where((edge) => edge.source == cellId || edge.target == cellId)
      .toList();

  await ref.read(
    deleteEdgesProvider(ids: relatedEdges.map((e) => e.id).toList()).future,
  );
}
