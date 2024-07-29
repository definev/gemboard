import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whiteboard/src/domain/repository/whiteboard_object_stack.dart';

part 'whiteboard_object_stack.g.dart';

@riverpod
WhiteboardObjectStackMemory whiteboardObjectStackMemory(
  WhiteboardObjectStackMemoryRef ref, {
  required String whiteboardId,
}) {
  return WhiteboardObjectStackMemory();
}

class WhiteboardObjectStackMemory implements WhiteboardObjectStack {
  WhiteboardObject? _object;

  WhiteboardObject? pop() {
    final oldObject = _object;
    _object = null;
    return oldObject;
  }

  void push(WhiteboardObject object) {
    _object = object;
  }
}
