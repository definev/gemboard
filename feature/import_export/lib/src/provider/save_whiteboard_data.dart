import 'package:cell/cell.dart';
import 'package:folder/folder.dart';
import 'package:graph_edge/graph_edge.dart';
import 'package:import_export/src/provider/decompress_whiteboard_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';
import 'package:whiteboard/whiteboard.dart';

part 'save_whiteboard_data.g.dart';

@riverpod
Future<void> saveWhiteboardData(
  SaveWhiteboardDataRef ref, {
  required WhiteboardFileData data,
  required FolderId? folderId,
}) async {
  final newWhiteboard = data.whiteboard.copyWith(
    id: WhiteboardId(
      parentId: WhiteboardParentId(folderId: folderId?.id),
      id: Helper.createId(),
    ),
  );
  final newWhiteboardPosition = data.position.copyWith(
    whiteboardId: newWhiteboard.id.id,
  );
  final cellIdsMap = <String, String>{};
  List<Cell> newCells = [];
  for (final cell in data.cells) {
    final newId = Helper.createId();
    cellIdsMap[cell.id.id] = newId;
    final newCell = cell.copyWith(
      id: CellId(
        parentId: CellParentId(whiteboardId: newWhiteboard.id.id),
        id: newId,
      ),
    );
    newCells.add(newCell);
  }
  List<Edge> newEdges = [];
  for (final edge in data.edges) {
    final newSource = cellIdsMap[edge.source];
    final newTarget = cellIdsMap[edge.target];
    if (newSource == null || newTarget == null) {
      continue;
    }
    final newId = EdgeId.genId(newSource, newTarget);
    final newEdge = edge.copyWith(
      id: EdgeId(
        parentId: EdgeParentId(whiteboardId: newWhiteboard.id.id),
        id: newId,
      ),
      source: newSource,
      target: newTarget,
    );
    newEdges.add(newEdge);
  }

  await ref.read(
    createWhiteboardProvider(
      parentId: newWhiteboard.id.parentId,
      data: newWhiteboard,
    ).future,
  );
  await ref.read(
    setWhiteboardPositionProvider(
      id: newWhiteboard.id,
      position: newWhiteboardPosition,
    ).future,
  );
  await ref.read(
    createCellsProvider(
      parentId: CellParentId(whiteboardId: newWhiteboard.id.id),
      data: newCells,
    ).future,
  );
  await ref.read(
    createEdgesProvider(
      parentId: EdgeParentId(whiteboardId: newWhiteboard.id.id),
      data: newEdges,
    ).future,
  );

  print('Saving whiteboard data');
  return;
}
