import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whiteboard/src/domain/model/whiteboard.dart';
import 'package:whiteboard/src/domain/repository/whiteboard_repository.dart';

part 'get_whiteboard_by_id.g.dart';

@riverpod
Future<Whiteboard> getWhiteboardById(
  GetWhiteboardByIdRef ref, {
  required WhiteboardId id,
}) async {
  final repository = ref.watch(whiteboardRepositoryProvider);
  var data = await repository.get(id: id);
  if (id == WhiteboardId.defaultValue) {
    if (data == null) {
      await repository.add(
        parentId: id.parentId,
        data: Whiteboard(
          id: id,
          emoji: '🏡',
          title: 'Desktop',
          color: 'yellow',
        ),
      );
      data = await repository.get(id: id);
      if (data == null) {
        throw Exception('Whiteboard not found');
      }
      return data;
    }
  }

  if (data == null) {
    throw Exception('Whiteboard not found');
  }

  return data;
}
