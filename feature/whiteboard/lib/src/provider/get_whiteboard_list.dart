import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/model/whiteboard.dart';
import '../domain/repository/whiteboard_repository.dart';

part 'get_whiteboard_list.g.dart';

@riverpod
Future<List<Whiteboard>> getWhiteboardList(
  GetWhiteboardListRef ref, {
  required WhiteboardParentId parentId,
}) async {
  final repository = ref.watch(whiteboardRepositoryProvider);
  return repository.getList(parentId: parentId);
}
