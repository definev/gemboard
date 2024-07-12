import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/model/whiteboard.dart';
import '../domain/repository/whiteboard_repository.dart';
import 'get_whiteboard_list.dart';

part 'create_whiteboard.g.dart';

@riverpod
Future<void> createWhiteboard(
  CreateWhiteboardRef ref, {
  required WhiteboardParentId parentId,
  required Whiteboard data,
}) async {
  final repository = ref.watch(whiteboardRepositoryProvider);
  await repository.add(parentId: parentId, data: data);
  ref.invalidate(getWhiteboardListProvider(parentId: parentId));
}
