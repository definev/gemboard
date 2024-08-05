import 'dart:convert';
import 'dart:io';

import 'package:cell/cell.dart';
import 'package:graph_edge/graph_edge.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whiteboard/whiteboard.dart';

part 'compress_whiteboard_to_file.g.dart';

@riverpod
Future<Map<String, dynamic>> compressWhiteboardToJson(
  CompressWhiteboardToJsonRef ref, {
  required WhiteboardId whiteboardId,
}) async {
  final whiteboard = await ref.read(
    getWhiteboardByIdProvider(id: whiteboardId).future,
  );

  Map<String, dynamic> fileContent = {
    'whiteboard': whiteboard.toJson(),
    'cells': [],
    'edges': [],
  };

  final cells = await ref.read(
    getCellListProvider(parentId: CellParentId(whiteboardId: whiteboardId.id))
        .future,
  );
  final edges = await ref.read(
    getEdgeListProvider(parentId: EdgeParentId(whiteboardId: whiteboardId.id))
        .future,
  );

  List<Cell> newCells = [];
  for (final cell in cells) {
    if (cell is ImageCell) {
      if (cell.url.isScheme('file')) {
        try {
          final file = File(cell.url.toFilePath());
          String base64Image = base64Encode(await file.readAsBytes());
          newCells.add(
            cell.copyWith(
              url: Uri.dataFromString(
                base64Image,
                mimeType: 'image/*',
              ),
            ),
          );
        } catch (_) {
          newCells.add(cell.copyWith(
              url: Uri.parse(
                  'https://static.vecteezy.com/system/resources/previews/008/326/235/original/not-found-404-error-page-concept-illustration-flat-design-eps10-modern-graphic-element-for-landing-page-empty-state-ui-infographic-icon-vector.jpg')));
        }
        continue;
      } else {
        newCells.add(cell);
      }
    } else {
      newCells.add(cell);
    }
  }

  fileContent['cells'] = newCells.map((e) => e.toJson()).toList();
  fileContent['edges'] = edges.map((e) => e.toJson()).toList();

  return fileContent;
}

@riverpod
Future<File> compressWhiteboardToFile(
  CompressWhiteboardToFileRef ref, {
  required String path,
  required String fileName,
  required WhiteboardId whiteboardId,
}) async {
  final fileContent = await ref.read(
    compressWhiteboardToJsonProvider(whiteboardId: whiteboardId).future,
  );

  final whiteboard = Whiteboard.fromJson(fileContent['whiteboard']);

  if (fileName.trim().isEmpty) {
    fileName = whiteboard.title;
  }

  final file = File('$path/$fileName.json');
  await file.writeAsString(jsonEncode(fileContent));
  return file;
}
