import 'package:cell/cell.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graph_edge/graph_edge.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whiteboard/src/domain/repository/memory/whiteboard_object_stack.dart';

part 'whiteboard_object_stack.freezed.dart';
part 'whiteboard_object_stack.g.dart';

@freezed
class WhiteboardObject with _$WhiteboardObject {
  const factory WhiteboardObject({
    required bool isDeleted,
    required List<Cell> cells,
    required List<Edge> edges,
  }) = _WhiteboardObject;
}

@riverpod
WhiteboardObjectStack whiteboardObjectStack(
  WhiteboardObjectStackRef ref, {
  required String whiteboardId,
}) {
  return ref
      .watch(whiteboardObjectStackMemoryProvider(whiteboardId: whiteboardId));
}

abstract class WhiteboardObjectStack {
  WhiteboardObject? pop();

  void push(WhiteboardObject object);
}
