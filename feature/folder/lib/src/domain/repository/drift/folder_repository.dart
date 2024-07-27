import 'package:drift/drift.dart';
import 'package:folder/src/domain/model/folder.dart';
import 'package:folder/src/domain/repository/drift/model/folder.dart';
import 'package:folder/src/domain/repository/folder_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'folder_repository.g.dart';

@riverpod
FolderRepository folderRepositoryDrift(FolderRepositoryDriftRef ref) {
  return FolderRepositoryDrift(
    database: ref.read(folderDatabaseProvider),
  );
}

class FolderRepositoryDrift implements FolderRepository {
  FolderRepositoryDrift({required this.database});

  final FolderDatabase database;

  @override
  Future<void> add({required FolderParentId parentId, required Folder data}) {
    return database
        .into(database.folderItem)
        .insertOnConflictUpdate(FolderTransformer(data).asCompanion);
  }

  @override
  Future<void> delete({required FolderId id}) {
    return (database.delete(database.folderItem)
          ..where((tbl) => tbl.folderId.equals(id.id)))
        .go();
  }

  @override
  FutureOr<Folder?> get({required FolderId id}) async {
    return (database.select(database.folderItem)
          ..where((tbl) => tbl.folderId.equals(id.id)))
        .getSingleOrNull()
        .then((value) => switch (value) {
              null => null,
              final value => FolderParser(value).asEntity,
            });
  }

  @override
  FutureOr<List<Folder>> getList({
    required FolderParentId parentId,
    int page = 0,
    int size = 10,
  }) {
    return (database.select(database.folderItem)
          ..where((tbl) => tbl.parentFolderId.equalsNullable(parentId.folderId)))
        .get()
        .then((value) => value.map((e) => FolderParser(e).asEntity).toList());
  }

  @override
  Future<void> update({required FolderId id, required Folder data}) async {
    final oldValue = await (database.select(database.folderItem)
          ..where((tbl) => tbl.folderId.equals(data.id.id)))
        .getSingleOrNull();
    if (oldValue == null) return;
    await (database.update(database.folderItem)
          ..where((tbl) => tbl.folderId.equals(id.id)))
        .write(FolderTransformer(data)
            .asCompanion
            .copyWith(id: Value(oldValue.id)));
  }
}
