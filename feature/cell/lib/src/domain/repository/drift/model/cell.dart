import 'dart:convert';
import 'dart:ui';

import 'package:cell/cell.dart';
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cell.g.dart';

class BaseCellItem extends Table {
  IntColumn get id => integer().autoIncrement()();

  /// Identity related
  TextColumn get whiteboardId => text()();
  TextColumn get cellId => text()();

  /// Position related
  RealColumn get offsetDx => real()();
  RealColumn get offsetDy => real()();
  RealColumn get width => real()();
  RealColumn get height => real().nullable()();
  RealColumn get preferredHeight => real().nullable()();

  /// Decoration related
  IntColumn get layer => integer()();
  BoolColumn get selected => boolean()();
  TextColumn get color => text()();
  TextColumn get cardKind => text()();
  BoolColumn get constraints => boolean()();
}

class BrainstormingCellItem extends BaseCellItem {
  TextColumn get question => text().nullable()();
  TextColumn get suggestions => text().nullable()();
}

class EditableCellItem extends BaseCellItem {
  TextColumn get title => text()();
  TextColumn get content => text()();
}

class ImageCellItem extends BaseCellItem {
  TextColumn get url => text()();
}

class ArticleCellItem extends BaseCellItem {
  TextColumn get title => text()();
  TextColumn get content => text()();
}

@DriftDatabase(
  tables: [
    BrainstormingCellItem,
    EditableCellItem,
    ImageCellItem,
    ArticleCellItem,
  ],
)
class CellDatabase extends _$CellDatabase {
  CellDatabase() : super(_openConnection());

  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'cell',
      web: DriftWebOptions(
        sqlite3Wasm: Uri.parse('sqlite3.wasm'),
        driftWorker: Uri.parse('drift_worker.js'),
        onResult: (result) =>
            print('chosenImplementation: ${result.chosenImplementation}'),
      ),
    );
  }
}

@Riverpod(keepAlive: true)
CellDatabase cellDatabase(CellDatabaseRef ref) {
  return CellDatabase();
}

extension type BrainstormingCellItemDataParser(BrainstormingCellItemData cell) {
  Cell get asCell {
    return Cell.brainstorming(
      offset: Offset(cell.offsetDx, cell.offsetDy),
      id: CellId(
        id: cell.cellId,
        parentId: CellParentId(whiteboardId: cell.whiteboardId),
      ),
      width: cell.width,
      height: cell.height,
      preferredHeight: cell.preferredHeight,
      layer: cell.layer,
      selected: cell.selected,
      decoration: CellDecoration(
        color: cell.color,
        cardKind: CellCardKind.values.asNameMap()[cell.cardKind]!,
        constraints: cell.constraints,
      ),
      question: cell.question,
      suggestions: switch (cell.suggestions) {
        null => [],
        final suggestions => (jsonDecode(suggestions) as List).cast<String>(),
      },
    );
  }
}

extension type EditableCellItemDataParser(EditableCellItemData cell) {
  Cell get asCell {
    return Cell.editable(
      offset: Offset(cell.offsetDx, cell.offsetDy),
      id: CellId(
        id: cell.cellId,
        parentId: CellParentId(whiteboardId: cell.whiteboardId),
      ),
      width: cell.width,
      height: cell.height,
      preferredHeight: cell.preferredHeight,
      layer: cell.layer,
      selected: cell.selected,
      decoration: CellDecoration(
        color: cell.color,
        cardKind: CellCardKind.values.asNameMap()[cell.cardKind]!,
        constraints: cell.constraints,
      ),
      title: cell.title,
      content: cell.content,
    );
  }
}

extension type ImageCellItemDataParser(ImageCellItemData cell) {
  Cell get asCell {
    return Cell.image(
      offset: Offset(cell.offsetDx, cell.offsetDy),
      id: CellId(
        id: cell.cellId,
        parentId: CellParentId(whiteboardId: cell.whiteboardId),
      ),
      width: cell.width,
      height: cell.height,
      preferredHeight: cell.preferredHeight,
      layer: cell.layer,
      selected: cell.selected,
      decoration: CellDecoration(
        color: cell.color,
        cardKind: CellCardKind.values.asNameMap()[cell.cardKind]!,
        constraints: cell.constraints,
      ),
      url: Uri.parse(cell.url),
    );
  }
}

extension type ArticleCellItemDataParser(ArticleCellItemData cell) {
  Cell get asCell {
    return Cell.article(
      offset: Offset(cell.offsetDx, cell.offsetDy),
      id: CellId(
        id: cell.cellId,
        parentId: CellParentId(whiteboardId: cell.whiteboardId),
      ),
      width: cell.width,
      height: cell.height,
      preferredHeight: cell.preferredHeight,
      layer: cell.layer,
      selected: cell.selected,
      decoration: CellDecoration(
        color: cell.color,
        cardKind: CellCardKind.values.asNameMap()[cell.cardKind]!,
        constraints: cell.constraints,
      ),
      title: cell.title,
      content: cell.content,
    );
  }
}

extension type BrainstormingCellTransformer(BrainstormingCell value) {
  BrainstormingCellItemCompanion get asCompanion {
    return BrainstormingCellItemCompanion.insert(
      /// Identity related
      whiteboardId: value.id.parentId.whiteboardId,
      cellId: value.id.id,

      /// Position related
      offsetDx: value.offset.dx,
      offsetDy: value.offset.dy,
      width: value.width,
      height: Value(value.height),
      preferredHeight: Value(value.preferredHeight),

      /// Decoration related
      layer: value.layer,
      selected: value.selected,
      color: value.decoration.color,
      cardKind: value.decoration.cardKind.name,
      constraints: value.decoration.constraints,

      /// Brainstorming related
      question: Value(value.question),
      suggestions: Value(jsonEncode(value.suggestions)),
    );
  }
}

extension type EditableCellTransformer(EditableCell value) {
  EditableCellItemCompanion get asCompanion {
    return EditableCellItemCompanion.insert(
      /// Identity related
      whiteboardId: value.id.parentId.whiteboardId,
      cellId: value.id.id,

      /// Position related
      offsetDx: value.offset.dx,
      offsetDy: value.offset.dy,
      width: value.width,
      height: Value(value.height),
      preferredHeight: Value(value.preferredHeight),

      /// Decoration related
      layer: value.layer,
      selected: value.selected,
      color: value.decoration.color,
      cardKind: value.decoration.cardKind.name,
      constraints: value.decoration.constraints,

      /// Editable related
      title: value.title,
      content: value.content,
    );
  }
}

extension type ImageCellTransformer(ImageCell value) {
  ImageCellItemCompanion get asCompanion {
    return ImageCellItemCompanion.insert(
      /// Identity related
      whiteboardId: value.id.parentId.whiteboardId,
      cellId: value.id.id,

      /// Position related
      offsetDx: value.offset.dx,
      offsetDy: value.offset.dy,
      width: value.width,
      height: Value(value.height),
      preferredHeight: Value(value.preferredHeight),

      /// Decoration related
      layer: value.layer,
      selected: value.selected,
      color: value.decoration.color,
      cardKind: value.decoration.cardKind.name,
      constraints: value.decoration.constraints,

      /// Image related
      url: value.url.toString(),
    );
  }
}

extension type ArticleCellTransformer(ArticleCell value) {
  ArticleCellItemCompanion get asCompanion {
    return ArticleCellItemCompanion.insert(
      /// Identity related
      whiteboardId: value.id.parentId.whiteboardId,
      cellId: value.id.id,

      /// Position related
      offsetDx: value.offset.dx,
      offsetDy: value.offset.dy,
      width: value.width,
      height: Value(value.height),
      preferredHeight: Value(value.preferredHeight),

      /// Decoration related
      layer: value.layer,
      selected: value.selected,
      color: value.decoration.color,
      cardKind: value.decoration.cardKind.name,
      constraints: value.decoration.constraints,

      /// Article related
      title: value.title,
      content: value.content,
    );
  }
}