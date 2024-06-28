import 'package:ask_board/src/domain/model/ask_board.dart';
import 'package:ask_board/src/domain/repository/ask_board_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_ask_board_by_id.g.dart';

@riverpod
Future<AskBoard> getAskBoardById(GetAskBoardByIdRef ref, String id) async{
  final repository = ref.read(askBoardRepositoryProvider);
  return repository.get(id: AskBoardId(id: id));
}