import 'dart:ui';

import 'package:cell/cell.dart';
import 'package:graph_edge/graph_edge.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';
import 'package:whiteboard/src/domain/data/whiteboard_position.dart';
import 'package:whiteboard/src/provider/set_whiteboard_position.dart';
import 'package:whiteboard/whiteboard.dart';

part 'move_cells_and_edges_to_another_whiteboard.g.dart';

@riverpod
Future<void> moveCellsAndEdgesToAnotherWhiteboard(
  MoveCellsAndEdgesToAnotherWhiteboardRef ref, {
  required List<Cell> cells,
  required List<Edge> edges,
  required Whiteboard targetWhiteboard,
  required Offset viewportTopLeft,
  required double scaleFactor,
}) async {
  Map<String, String> cellIdMap = {};

  final newCells = cells.map(
    (oldCell) {
      final newId = Helper.createId();
      cellIdMap[oldCell.id.id] = newId;
      return oldCell.copyWith(
        id: CellId(
          parentId: CellParentId(whiteboardId: targetWhiteboard.id.id),
          id: newId,
        ),
        selected: false,
      );
    },
  );
  final newEdges = edges.map(
    (oldEdge) {
      final source = cellIdMap[oldEdge.source];
      final target = cellIdMap[oldEdge.target];
      if (source == null || target == null) {
        throw Exception('Source or target not found');
      }

      final newId = EdgeId.genId(source, target);

      return oldEdge.copyWith(
        id: EdgeId(
          parentId: EdgeParentId(whiteboardId: targetWhiteboard.id.id),
          id: newId,
        ),
        source: source,
        target: target,
      );
    },
  );

  await ref.read(
    deleteCellsProvider(ids: cells.map((cell) => cell.id).toList()).future,
  );
  await ref.read(
    deleteEdgesProvider(ids: edges.map((edge) => edge.id).toList()).future,
  );
  for (final cell in cells) {
    await ref.read(
      deleteCellEdgeProvider(
        parentId:
            EdgeParentId(whiteboardId: cells.first.id.parentId.whiteboardId),
        cellId: cell.id.id,
      ).future,
    );
  }

  await ref.read(
    createCellsProvider(
      parentId: newCells.first.id.parentId,
      data: newCells.toList(),
    ).future,
  );
  await ref.read(
    createEdgesProvider(
      parentId: newEdges.first.id.parentId,
      data: newEdges.toList(),
    ).future,
  );

  await ref.read(
    setWhiteboardPositionProvider(
      id: targetWhiteboard.id,
      position: WhiteboardPosition(
        offset: viewportTopLeft,
        scale: scaleFactor,
        whiteboardId: targetWhiteboard.id.id,
      ),
    ).future,
  );
}
