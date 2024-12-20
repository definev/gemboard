import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whiteboard/whiteboard.dart';

part 'delete_whiteboard.g.dart';

@riverpod
Future<void> deleteWhiteboard(
  DeleteWhiteboardRef ref, {
  required WhiteboardId id,
}) async {
  final repository = ref.watch(whiteboardRepositoryProvider);
  await repository.delete(id: id);
  await repository.deleteWhiteboardPosition(id: id);
  ref.invalidate(getWhiteboardListProvider);
  ref.invalidate(getWhiteboardByIdProvider(id: id));
}
