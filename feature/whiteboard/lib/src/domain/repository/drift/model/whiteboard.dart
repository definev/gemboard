import 'dart:ui';

import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whiteboard/src/domain/data/whiteboard_position.dart';
import 'package:whiteboard/src/domain/model/whiteboard.dart';

part 'whiteboard.g.dart';

class WhiteboardItem extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get parentFolderId => text().nullable()();
  TextColumn get whiteboardId => text().unique()();

  TextColumn get title => text()();
  TextColumn get emoji => text()();
}

class WhiteboardPositionItem extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get whiteboardId => text()();

  RealColumn get offsetDx => real().withDefault(Constant(0.0))();
  RealColumn get offsetDy => real().withDefault(Constant(0.0))();
  RealColumn get scale => real().withDefault(Constant(WhiteboardPosition.defaultScaleFactor))();
}

@DriftDatabase(
  tables: [
    WhiteboardItem,
    WhiteboardPositionItem,
  ],
)
class WhiteboardDatabase extends _$WhiteboardDatabase {
  WhiteboardDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'whiteboard',
      web: DriftWebOptions(
        sqlite3Wasm: Uri.parse('sqlite3.wasm'),
        driftWorker: Uri.parse('drift_worker.js'),
        onResult: (result) =>
            debugPrint('chosenImplementation: ${result.chosenImplementation}'),
      ),
    );
  }
}

@Riverpod(keepAlive: true)
WhiteboardDatabase whiteboardDatabase(Ref ref) {
  return WhiteboardDatabase();
}

extension type WhiteboardPositionTransformer(WhiteboardPosition value) {
  WhiteboardPositionItemCompanion get asCompanion {
    return WhiteboardPositionItemCompanion(
      whiteboardId: Value(value.whiteboardId),
      offsetDx: Value(value.offset.dx),
      offsetDy: Value(value.offset.dy),
      scale: Value(value.scale),
    );
  }
}

extension type WhiteboardPositionParser(WhiteboardPositionItemData value) {
  WhiteboardPosition get asEntity {
    return WhiteboardPosition(
      whiteboardId: value.whiteboardId,
      offset: Offset(value.offsetDx, value.offsetDy),
      scale: value.scale,
    );
  }
}

extension type WhiteboardTransformer(Whiteboard value) {
  WhiteboardItemCompanion get asCompanion {
    return WhiteboardItemCompanion(
      parentFolderId: Value(value.id.parentId.folderId),
      whiteboardId: Value(value.id.id),
      title: Value(value.title),
      emoji: Value(value.emoji),
    );
  }
}

extension type WhiteboardParser(WhiteboardItemData value) {
  Whiteboard get asEntity {
    return Whiteboard(
      id: WhiteboardId(
        parentId: WhiteboardParentId(folderId: value.parentFolderId),
        id: value.whiteboardId,
      ),
      title: value.title,
      emoji: value.emoji,
    );
  }
}
