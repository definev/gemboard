import 'package:ask_board/src/provider/get_ask_board_list.dart';
import 'package:ask_board/src/view/boards_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BoardsFlow extends ConsumerWidget {
  const BoardsFlow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final boardsAsyncValue = ref.watch(getAskBoardListProvider);

    return boardsAsyncValue.map(
      data: (value) => BoardsView(boards: value.value),
      error: (error) => Text('Error: ${error.error}'),
      loading: (loading) => const Center(child: CircularProgressIndicator()),
    );
  }
}
