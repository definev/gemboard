import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';

import '../../model/edge.dart';
import '../edge_repository.dart';

part 'edge_repository.g.dart';

@Riverpod(keepAlive: true)
EdgeRepository edgeRepositoryHive(EdgeRepositoryHiveRef ref) {
  return EdgeRepositoryHive();
}

class EdgeRepositoryHive extends EdgeRepository
    with CrudDTORepositoryHive<EdgeParentId, EdgeId, Edge> {
  @override
  String get boxName => 'Edge';

  @override
  Edge fromJson(Map<String, dynamic> json) {
    return Edge.fromJson(json);
  }

  @override
  Stream<List<Edge>> watchList({required EdgeParentId parentId}) async* {
    yield await getList(parentId: parentId);
  }
}
