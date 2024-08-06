import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whiteboard/src/domain/data/whiteboard_position.dart';
import 'package:whiteboard/src/domain/model/whiteboard.dart';
import 'package:whiteboard/src/domain/repository/drift/model/whiteboard.dart';
import 'package:whiteboard/src/domain/repository/whiteboard_repository.dart';

part 'whiteboard_repository.g.dart';

@Riverpod(keepAlive: true)
WhiteboardRepository whiteboardRepositoryDrift(
    WhiteboardRepositoryDriftRef ref) {
  return WhiteboardRepositoryDrift(
    database: ref.read(whiteboardDatabaseProvider),
  );
}

class WhiteboardRepositoryDrift implements WhiteboardRepository {
  WhiteboardRepositoryDrift({required this.database});

  final WhiteboardDatabase database;

  @override
  Future<void> add(
      {required WhiteboardParentId parentId, required Whiteboard data}) {
    return database
        .into(database.whiteboardItem)
        .insertOnConflictUpdate(WhiteboardTransformer(data).asCompanion);
  }

  @override
  Future<void> delete({required WhiteboardId id}) {
    return (database.delete(database.whiteboardItem)
          ..where((tbl) => tbl.whiteboardId.equals(id.id)))
        .go();
  }

  @override
  FutureOr<Whiteboard?> get({required WhiteboardId id}) async {
    return (database.select(database.whiteboardItem)
          ..where((tbl) => tbl.whiteboardId.equals(id.id)))
        .getSingleOrNull()
        .then((value) => switch (value) {
              null => null,
              final value => WhiteboardParser(value).asEntity,
            });
  }

  @override
  FutureOr<List<Whiteboard>> getList({
    required WhiteboardParentId parentId,
    int page = 0,
    int size = 10,
  }) {
    return (database.select(database.whiteboardItem)
          ..where(
              (tbl) => tbl.parentFolderId.equalsNullable(parentId.folderId)))
        .get()
        .then(
            (value) => value.map((e) => WhiteboardParser(e).asEntity).toList());
  }

  @override
  Future<void> update(
      {required WhiteboardId id, required Whiteboard data}) async {
    final oldValue = await (database.select(database.whiteboardItem)
          ..where((tbl) => tbl.whiteboardId.equals(data.id.id)))
        .getSingleOrNull();
    if (oldValue == null) return;
    await (database.update(database.whiteboardItem)
          ..where((tbl) => tbl.whiteboardId.equals(id.id)))
        .write(WhiteboardTransformer(data)
            .asCompanion
            .copyWith(id: Value(oldValue.id)));
  }

  @override
  Future<WhiteboardPosition?> getWhiteboardPosition(
      {required WhiteboardId id}) {
    return (database.select(database.whiteboardPositionItem)
          ..where((tbl) => tbl.whiteboardId.equals(id.id)))
        .getSingleOrNull()
        .then((value) => switch (value) {
              null => null,
              final value => WhiteboardPositionParser(value).asEntity,
            });
  }

  @override
  Future<void> setWhiteboardPosition({
    required WhiteboardId id,
    required WhiteboardPosition position,
  }) async {
    if (position.offset.isInfinite) return;
    final oldValues = await (database.select(database.whiteboardPositionItem)
          ..where((tbl) => tbl.whiteboardId.equals(id.id)))
        .get();
    final oldValue = oldValues.firstOrNull;
    if (oldValue == null) {
      await database
          .into(database.whiteboardPositionItem)
          .insert(WhiteboardPositionTransformer(position).asCompanion);
      return;
    }
    await (database.update(database.whiteboardPositionItem)
          ..where((tbl) => tbl.whiteboardId.equals(id.id)))
        .write(WhiteboardPositionTransformer(position)
            .asCompanion
            .copyWith(id: Value(oldValue.id)));
  }

  @override
  Future<void> deleteWhiteboardPosition({required WhiteboardId id}) {
    return (database.delete(database.whiteboardPositionItem)
          ..where((tbl) => tbl.whiteboardId.equals(id.id)))
        .go();
  }
}
