import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whiteboard/whiteboard.dart';

part 'set_whiteboard_position.g.dart';

@riverpod
Future<void> setWhiteboardPosition(
  SetWhiteboardPositionRef ref, {
  required WhiteboardId id,
  required WhiteboardPosition position,
}) {
  final repository = ref.watch(whiteboardRepositoryProvider);
  return repository.setWhiteboardPosition(id: id, position: position);
}
