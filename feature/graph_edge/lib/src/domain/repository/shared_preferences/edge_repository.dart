import 'package:graph_edge/graph_edge.dart';
import 'package:graph_edge/src/domain/repository/edge_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';

part 'edge_repository.g.dart';

@Riverpod(keepAlive: true)
EdgeRepository edgeRepositorySharedPrefereneces(
    EdgeRepositorySharedPreferenecesRef ref) {
  return EdgeRepositorySharedPrefereneces();
}

class EdgeRepositorySharedPrefereneces extends EdgeRepository
    with CrudDtoRepositorySharedPreferences<EdgeParentId, EdgeId, Edge> {
  @override
  String get boxName => 'edge';

  @override
  Edge fromJson(Map<String, dynamic> json) {
    return Edge.fromJson(json);
  }

  @override
  Stream<List<Edge>> watchList({required EdgeParentId parentId}) async* {
    yield await getList(parentId: parentId);
  }
}
