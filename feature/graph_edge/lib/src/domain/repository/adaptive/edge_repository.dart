import 'package:flutter/foundation.dart';
import 'package:graph_edge/graph_edge.dart';
import 'package:graph_edge/src/domain/repository/edge_repository.dart';
import 'package:graph_edge/src/domain/repository/shared_preferences/edge_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';

import '../drift/edge_repository.dart';
import '../memory/edge_repository.dart';

part 'edge_repository.g.dart';

@Riverpod(keepAlive: true)
EdgeRepository edgeRepositoryAdaptive(EdgeRepositoryAdaptiveRef ref) {
  final memory = ref.watch(edgeRepositoryMemoryProvider);
  if (kIsWasm) {
    final sharedPrefereneces = ref.read(
      edgeRepositorySharedPreferenecesProvider,
    );
    return EdgeRepositoryAdaptive(
      local: sharedPrefereneces,
      memory: memory,
    );
  }

  final drift = ref.read(edgeRepositoryDriftProvider);
  return EdgeRepositoryAdaptive(
    local: drift,
    memory: memory,
  );
}

class EdgeRepositoryAdaptive extends EdgeRepository
    with CrudDtoRepositoryAdaptive<EdgeParentId, EdgeId, Edge> {
  EdgeRepositoryAdaptive({required this.local, required this.memory});

  final EdgeRepository local;
  final EdgeRepository memory;

  @override
  CrudDTORepository<EdgeParentId, EdgeId, Edge> get interactive => memory;

  @override
  CrudDTORepository<EdgeParentId, EdgeId, Edge> get storage => local;

  @override
  Stream<List<Edge>> watchList({required EdgeParentId parentId}) async* {
    yield await getList(parentId: parentId);
  }
}
