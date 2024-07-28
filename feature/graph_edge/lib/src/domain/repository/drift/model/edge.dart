import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:graph_edge/graph_edge.dart';
import 'package:graph_edge/src/domain/model/edge_decoration.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edge.g.dart';

class EdgeItem extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get parentWhiteboardId => text()();
  TextColumn get edgeId => text().unique()();

  TextColumn get source => text()();
  TextColumn get target => text()();
  IntColumn get layer => integer()();

  /// Decoration related
  TextColumn get label => text().nullable()();
  TextColumn get color => text().nullable()();
}

@DriftDatabase(
  tables: [EdgeItem],
)
class EdgeDatabase extends _$EdgeDatabase {
  EdgeDatabase() : super(_openConnection());

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'edge',
      web: DriftWebOptions(
        sqlite3Wasm: Uri.parse('sqlite3.wasm'),
        driftWorker: Uri.parse('drift_worker.js'),
        onResult: (result) =>
            print('chosenImplementation: ${result.chosenImplementation}'),
      ),
    );
  }

  @override
  int get schemaVersion => 1;
}

@Riverpod(keepAlive: true)
EdgeDatabase edgeDatabase(EdgeDatabaseRef ref) {
  return EdgeDatabase();
}

extension type EdgeTransformer(Edge value) {
  EdgeItemCompanion get asCompanion {
    return EdgeItemCompanion(
      parentWhiteboardId: Value(value.id.parentId.whiteboardId),
      edgeId: Value(value.id.id),
      source: Value(value.source),
      target: Value(value.target),
      layer: Value(value.layer),
      label: Value(value.decoration.label),
      color: Value(value.decoration.color),
    );
  }
}

extension type EdgeParser(EdgeItemData value) {
  Edge get asEntity {
    return Edge(
      id: EdgeId(
        parentId: EdgeParentId(whiteboardId: value.parentWhiteboardId),
        id: value.edgeId,
      ),
      source: value.source,
      target: value.target,
      layer: value.layer,
      decoration: EdgeDecoration(
        label: value.label,
        color: value.color,
      ),
    );
  }
}
