import 'package:graph_edge/graph_edge.dart';
import 'package:graph_edge/src/domain/repository/edge_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';

part 'edge_repository.g.dart';

@Riverpod(keepAlive: true)
EdgeRepository edgeRepositoryMemory(EdgeRepositoryMemoryRef ref) {
  return EdgeRepositoryMemory();
}

class EdgeRepositoryMemory extends EdgeRepository
    with CrudDTORepositoryMemory<EdgeParentId, EdgeId, Edge> {
  @override
  Stream<List<Edge>> watchList({required EdgeParentId parentId}) async* {
    yield await getList(parentId: parentId);
  }
}
