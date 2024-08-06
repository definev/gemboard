import 'package:cell/cell.dart';
import 'package:graph_edge/graph_edge.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whiteboard/whiteboard.dart';

part 'decompress_whiteboard_data.g.dart';

class WhiteboardFileData {
  WhiteboardFileData({
    required this.whiteboard,
    required this.position,
    required this.cells,
    required this.edges,
  });

  final Whiteboard whiteboard;
  final WhiteboardPosition position;
  final List<Cell> cells;
  final List<Edge> edges;
}

@riverpod
Future<WhiteboardFileData> decompressWhiteboardData(
  DecompressWhiteboardDataRef ref, {
  required Map<String, dynamic> data,
}) async {
  final whiteboard =
      Whiteboard.fromJson(data['whiteboard'] as Map<String, dynamic>);
  final position = switch (data['position'] == null) {
    true => WhiteboardPosition.defaultWhiteboardPosition(whiteboard.id.id),
    false =>
      WhiteboardPosition.fromJson(data['position'] as Map<String, dynamic>),
  };
  final cells = (data['cells'] as List)
      .map((e) => Cell.fromJson(e as Map<String, dynamic>))
      .toList();
  final edges = (data['edges'] as List)
      .map((e) => Edge.fromJson(e as Map<String, dynamic>))
      .toList();

  return WhiteboardFileData(
    whiteboard: whiteboard,
    position: position,
    cells: cells,
    edges: edges,
  );
}
