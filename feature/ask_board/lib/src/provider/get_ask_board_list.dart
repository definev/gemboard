import 'package:ask_board/src/domain/repository/ask_board_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/model/ask_board.dart';

part 'get_ask_board_list.g.dart';

@riverpod
Future<List<AskBoard>> getAskBoardList(GetAskBoardListRef ref) async {
  final repository = ref.read(askBoardRepositoryProvider);
  return repository.getList(parentId: const AskBoardParentId());
}
