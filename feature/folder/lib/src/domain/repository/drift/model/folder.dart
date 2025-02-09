import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:folder/src/domain/model/folder.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'folder.g.dart';

class FolderItem extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get parentFolderId => text().nullable()();
  TextColumn get folderId => text().unique()();

  TextColumn get title => text()();
  TextColumn get emoji => text()();
}

@DriftDatabase(
  tables: [
    FolderItem,
  ],
)
class FolderDatabase extends _$FolderDatabase {
  FolderDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'folder',
      web: DriftWebOptions(
        sqlite3Wasm: Uri.parse('sqlite3.wasm'),
        driftWorker: Uri.parse('drift_worker.js'),
        onResult: (result) {
          if (result.missingFeatures.isNotEmpty) {
            debugPrint(
                'Using ${result.chosenImplementation} due to unsupported '
                'browser features: ${result.missingFeatures}');
          }
          debugPrint('chosenImplementation: ${result.chosenImplementation}');
        },
      ),
    );
  }
}

@Riverpod(keepAlive: true)
FolderDatabase folderDatabase(Ref ref) {
  return FolderDatabase();
}

extension type FolderTransformer(Folder value) {
  FolderItemCompanion get asCompanion {
    return FolderItemCompanion(
      parentFolderId: Value(value.id.parentId.folderId),
      folderId: Value(value.id.id),
      title: Value(value.title),
      emoji: Value(value.emoji),
    );
  }
}

extension type FolderParser(FolderItemData value) {
  Folder get asEntity {
    return Folder(
      id: FolderId(
        parentId: FolderParentId(folderId: value.parentFolderId),
        id: value.folderId,
      ),
      title: value.title,
      emoji: value.emoji,
    );
  }
}
