import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whiteboard/src/domain/model/whiteboard.dart';
import 'package:whiteboard/src/domain/repository/whiteboard_repository.dart';

part 'get_whiteboard_by_id.g.dart';

@riverpod
Stream<Whiteboard> getWhiteboardById(
  GetWhiteboardByIdRef ref, {
  required WhiteboardId id,
}) async* {
  final repository = ref.watch(whiteboardRepositoryProvider);
  yield await repository.get(id: id);
}