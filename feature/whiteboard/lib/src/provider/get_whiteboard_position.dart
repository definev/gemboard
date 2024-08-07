import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whiteboard/whiteboard.dart';

part 'get_whiteboard_position.g.dart';

@riverpod
Future<WhiteboardPosition> getWhiteboardPosition(
  GetWhiteboardPositionRef ref, {
  required WhiteboardId id,
}) async {
  try {
    final repository = ref.watch(whiteboardRepositoryProvider);
    return await repository.getWhiteboardPosition(id: id) ??
        WhiteboardPosition.defaultWhiteboardPosition(id.id);
  } catch (_) {
    return WhiteboardPosition.defaultWhiteboardPosition(id.id);
  }
}
