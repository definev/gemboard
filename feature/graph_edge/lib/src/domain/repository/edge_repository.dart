import 'package:graph_edge/graph_edge.dart';
import 'package:graph_edge/src/domain/repository/adaptive/edge_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';

part 'edge_repository.g.dart';

@Riverpod(keepAlive: true)
EdgeRepository edgeRepository(EdgeRepositoryRef ref) {
  // if (kIsWasm) return ref.watch(edgeRepositoryMemoryProvider);
  return ref.watch(edgeRepositoryAdaptiveProvider);
}

abstract class EdgeRepository
    extends CrudDTORepository<EdgeParentId, EdgeId, Edge> {
  Stream<List<Edge>> watchList({required EdgeParentId parentId});
}
