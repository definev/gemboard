import 'package:cell/cell.dart';
import 'package:cell/src/domain/repository/cell_repository.dart';
import 'package:cell/src/domain/repository/drift/model/cell.dart';
import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'cell_repository.g.dart';

@Riverpod(keepAlive: true)
CellRepository cellRepositoryDrift(CellRepositoryDriftRef ref) {
  return CellRepositoryDrift(
    database: ref.read(cellDatabaseProvider),
  );
}

class CellRepositoryDrift implements CellRepository {
  CellRepositoryDrift({required this.database});

  final CellDatabase database;

  @override
  Future<void> add({required CellParentId parentId, required Cell data}) {
    return data.map(
      unknown: (_) async {},
      brainstorming: (value) => database
          .into(database.brainstormingCellItem)
          .insertOnConflictUpdate(
              BrainstormingCellTransformer(value).asCompanion),
      editable: (value) => database
          .into(database.editableCellItem)
          .insertOnConflictUpdate(EditableCellTransformer(value).asCompanion),
      article: (value) => database
          .into(database.articleCellItem)
          .insertOnConflictUpdate(ArticleCellTransformer(value).asCompanion),
      image: (value) => database
          .into(database.imageCellItem)
          .insertOnConflictUpdate(ImageCellTransformer(value).asCompanion),
    );
  }

  @override
  Future<void> delete({required CellId id}) async {
    var result = await (database.delete(database.brainstormingCellItem)
          ..where((tbl) => tbl.cellId.equals(id.id)))
        .go();
    if (result >= 1) return;
    result = await (database.delete(database.editableCellItem)
          ..where((tbl) => tbl.cellId.equals(id.id)))
        .go();
    if (result >= 1) return;
    result = await (database.delete(database.imageCellItem)
          ..where((tbl) => tbl.cellId.equals(id.id)))
        .go();
    if (result >= 1) return;
    result = await (database.delete(database.articleCellItem)
          ..where((tbl) => tbl.cellId.equals(id.id)))
        .go();
  }

  @override
  FutureOr<Cell?> get({required CellId id}) async {
    dynamic cells = await (database.select(database.brainstormingCellItem)
          ..where((tbl) => tbl.cellId.equals(id.id))
          ..limit(1))
        .get();
    if (cells.isNotEmpty) {
      final cell = cells.first as BrainstormingCellItemData;
      return BrainstormingCellItemDataParser(cell).asCell;
    }

    cells = await (database.select(database.editableCellItem)
          ..where((tbl) => tbl.cellId.equals(id.id))
          ..limit(1))
        .get();
    if (cells.isNotEmpty) {
      final cell = cells.first as EditableCellItemData;
      return EditableCellItemDataParser(cell).asCell;
    }

    cells = await (database.select(database.imageCellItem)
          ..where((tbl) => tbl.cellId.equals(id.id))
          ..limit(1))
        .get();
    if (cells.isNotEmpty) {
      final cell = cells.first as ImageCellItemData;
      return ImageCellItemDataParser(cell).asCell;
    }

    cells = await (database.select(database.articleCellItem)
          ..where((tbl) => tbl.cellId.equals(id.id))
          ..limit(1))
        .get();
    if (cells.isNotEmpty) {
      final cell = cells.first as ArticleCellItemData;
      return ArticleCellItemDataParser(cell).asCell;
    }

    return null;
  }

  @override
  FutureOr<List<Cell>> getList({
    required CellParentId parentId,
    int page = 0,
    int size = 10,
  }) async {
    final cells = <Cell>[];
    final brainstorms = await (database.select(database.brainstormingCellItem)
          ..where((tbl) => tbl.whiteboardId.equals(parentId.whiteboardId)))
        .get();
    cells.addAll(
        brainstorms.map((e) => BrainstormingCellItemDataParser(e).asCell));
    final editables = await (database.select(database.editableCellItem)
          ..where((tbl) => tbl.whiteboardId.equals(parentId.whiteboardId)))
        .get();
    cells.addAll(editables.map((e) => EditableCellItemDataParser(e).asCell));
    final images = await (database.select(database.imageCellItem)
          ..where((tbl) => tbl.whiteboardId.equals(parentId.whiteboardId)))
        .get();
    cells.addAll(images.map((e) => ImageCellItemDataParser(e).asCell));
    final articles = await (database.select(database.articleCellItem)
          ..where((tbl) => tbl.whiteboardId.equals(parentId.whiteboardId)))
        .get();
    cells.addAll(articles.map((e) => ArticleCellItemDataParser(e).asCell));

    return cells;
  }

  @override
  Future<void> update({required CellId id, required Cell data}) {
    return data.map(
      unknown: (_) async {},
      brainstorming: (value) async {
        final oldValue = await (database.select(database.brainstormingCellItem)
              ..where((tbl) => tbl.cellId.equals(id.id)))
            .getSingleOrNull();
        if (oldValue == null) return;
        await database
            .into(database.brainstormingCellItem)
            .insertOnConflictUpdate(BrainstormingCellTransformer(value)
                .asCompanion
                .copyWith(id: Value(oldValue.id)));
      },
      editable: (value) async {
        final oldValue = await (database.select(database.editableCellItem)
              ..where((tbl) => tbl.cellId.equals(id.id)))
            .getSingleOrNull();
        if (oldValue == null) return;
        await database.into(database.editableCellItem).insertOnConflictUpdate(
            EditableCellTransformer(value)
                .asCompanion
                .copyWith(id: Value(oldValue.id)));
      },
      article: (value) async {
        final oldValue = await (database.select(database.articleCellItem)
              ..where((tbl) => tbl.cellId.equals(id.id)))
            .getSingleOrNull();
        if (oldValue == null) return;
        await database.into(database.articleCellItem).insertOnConflictUpdate(
            ArticleCellTransformer(value)
                .asCompanion
                .copyWith(id: Value(oldValue.id)));
      },
      image: (value) async {
        final oldValue = await (database.select(database.imageCellItem)
              ..where((tbl) => tbl.cellId.equals(id.id)))
            .getSingleOrNull();
        if (oldValue == null) return;
        await database.into(database.imageCellItem).insertOnConflictUpdate(
            ImageCellTransformer(value)
                .asCompanion
                .copyWith(id: Value(oldValue.id)));
      },
    );
  }

  @override
  Stream<List<Cell>> watchList({required CellParentId parentId}) async* {
    final stream = CombineLatestStream.combine4(
      database.select(database.brainstormingCellItem).watch().map((event) =>
          event.map((e) => BrainstormingCellItemDataParser(e).asCell).toList()),
      database.select(database.editableCellItem).watch().map((event) =>
          event.map((e) => EditableCellItemDataParser(e).asCell).toList()),
      database.select(database.imageCellItem).watch().map((event) =>
          event.map((e) => ImageCellItemDataParser(e).asCell).toList()),
      database.select(database.articleCellItem).watch().map((event) =>
          event.map((e) => ArticleCellItemDataParser(e).asCell).toList()),
      (a, b, c, d) => [...a, ...b, ...c, ...d],
    );
    yield* stream.asBroadcastStream();
  }
}
