import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whiteboard/src/domain/data/whiteboard_position.dart';
import 'package:whiteboard/whiteboard.dart';

part 'get_whiteboard_position.g.dart';

@riverpod
Future<WhiteboardPosition> getWhiteboardPosition(
  GetWhiteboardPositionRef ref, {
  required WhiteboardId id,
}) async {
  final repository = ref.watch(whiteboardRepositoryProvider);
  return await repository.getWhiteboardPosition(id: id) ??
      WhiteboardPosition.defaultWhiteboardPosition(id.id);
}
