import 'package:graph_edge/graph_edge.dart';
import 'package:graph_edge/src/domain/repository/edge_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';

import '../hive/edge_repository.dart';
import '../memory/edge_repository.dart';

part 'edge_repository.g.dart';

@Riverpod(keepAlive: true)
EdgeRepository edgeRepositoryAdaptive(EdgeRepositoryAdaptiveRef ref) {
  final hive = ref.watch(edgeRepositoryHiveProvider);
  final memory = ref.watch(edgeRepositoryMemoryProvider);

  return EdgeRepositoryAdaptive(
    hive: hive,
    memory: memory,
  );
}

class EdgeRepositoryAdaptive extends EdgeRepository
    with CrudDtoRepositoryAdaptive<EdgeParentId, EdgeId, Edge> {
  EdgeRepositoryAdaptive({required this.hive, required this.memory});

  final EdgeRepository hive;
  final EdgeRepository memory;

  @override
  CrudDTORepository<EdgeParentId, EdgeId, Edge> get interactive => memory;

  @override
  CrudDTORepository<EdgeParentId, EdgeId, Edge> get storage => hive;

  @override
  Stream<List<Edge>> watchList({required EdgeParentId parentId}) async* {
    yield await getList(parentId: parentId);
  }
}
