import 'package:drift/drift.dart';
import 'package:graph_edge/graph_edge.dart';
import 'package:graph_edge/src/domain/repository/drift/model/edge.dart';
import 'package:graph_edge/src/domain/repository/edge_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edge_repository.g.dart';

@riverpod
EdgeRepository edgeRepositoryDrift(EdgeRepositoryDriftRef ref) {
  return EdgeRepositoryDrift(
    database: ref.read(edgeDatabaseProvider),
  );
}

class EdgeRepositoryDrift implements EdgeRepository {
  EdgeRepositoryDrift({required this.database});

  final EdgeDatabase database;

  @override
  Future<void> add({required EdgeParentId parentId, required Edge data}) {
    return database
        .into(database.edgeItem)
        .insertOnConflictUpdate(EdgeTransformer(data).asCompanion);
  }

  @override
  Future<void> delete({required EdgeId id}) {
    return (database.delete(database.edgeItem)
          ..where((tbl) => tbl.edgeId.equals(id.id)))
        .go();
  }

  @override
  FutureOr<Edge?> get({required EdgeId id}) async {
    return (database.select(database.edgeItem)
          ..where((tbl) => tbl.edgeId.equals(id.id)))
        .getSingleOrNull()
        .then((value) => switch (value) {
              null => null,
              final value => EdgeParser(value).asEntity,
            });
  }

  @override
  FutureOr<List<Edge>> getList({
    required EdgeParentId parentId,
    int page = 0,
    int size = 10,
  }) {
    return (database.select(database.edgeItem)
          ..where((tbl) =>
              tbl.parentWhiteboardId.equalsNullable(parentId.whiteboardId)))
        .get()
        .then((value) => value.map((e) => EdgeParser(e).asEntity).toList());
  }

  @override
  Future<void> update({required EdgeId id, required Edge data}) async {
    final oldValue = await (database.select(database.edgeItem)
          ..where((tbl) => tbl.edgeId.equals(data.id.id)))
        .getSingleOrNull();
    if (oldValue == null) return;
    await (database.update(database.edgeItem)
          ..where((tbl) => tbl.edgeId.equals(id.id)))
        .write(
            EdgeTransformer(data).asCompanion.copyWith(id: Value(oldValue.id)));
  }

  @override
  Stream<List<Edge>> watchList({required EdgeParentId parentId}) {
    return database
        .select(database.edgeItem)
        .watch()
        .map((event) => event.map((e) => EdgeParser(e).asEntity).toList());
  }
}
