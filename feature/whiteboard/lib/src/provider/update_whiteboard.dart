import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whiteboard/whiteboard.dart';

part 'update_whiteboard.g.dart';

@riverpod
Future<void> updateWhiteboard(
  Ref ref, {
  required WhiteboardId id,
  required Whiteboard data,
}) async {
  final repository = ref.watch(whiteboardRepositoryProvider);
  await repository.update(id: id, data: data);
  ref.invalidate(getWhiteboardListProvider(parentId: id.parentId));
  ref.invalidate(getWhiteboardByIdProvider(id: id));
}
