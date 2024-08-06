import 'dart:io' as io;

import 'package:cell/cell.dart';
import 'package:flutter/foundation.dart';
import 'package:graph_edge/graph_edge.dart';
import 'package:path_provider/path_provider.dart';
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

  List<Cell> cells = [];
  for (final e in data['cells'] as List) {
    var cell = Cell.fromJson(e as Map<String, dynamic>);
    if (cell is ImageCell) {
      if (!(kIsWasm || kIsWeb)) {
        if (cell.url.data case final data?) {
          final filetype = data.mimeType.split('/').last;
          final directory = await getApplicationDocumentsDirectory();
          var file = io.File(
              '${directory.path}/whiteboard/${whiteboard.id.id}/${UniqueKey()}.${filetype}');
          file = await file.create(recursive: true);
          final ioSink = file.openWrite();
          try {
            ioSink.add(data.contentAsBytes());
            cell = cell.copyWith(url: file.uri);
          } catch (e) {
          } finally {
            await ioSink.flush();
            await ioSink.close();
          }
        }
      }
    }
    cells.add(cell);
  }
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
