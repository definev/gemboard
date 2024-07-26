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
  ref
      .read(getEdgeListStreamControllerProvider(parentId: parentId))
      .sink
      .add(await repository.getList(parentId: parentId));
}
