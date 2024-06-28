import 'package:ask_board/ask_board.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BoardsView extends ConsumerWidget {
  const BoardsView({
    super.key,
    required this.boards,
  });

  final List<AskBoard> boards;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final askBoardNavigation = ref.watch(AskBoardNavigation.provider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Boards'),
      ),
      body: ListView.builder(
        itemCount: boards.length,
        itemBuilder: (context, index) {
          final board = boards[index];
          return ListTile(
            title: Text(board.title),
            onTap: () =>
                askBoardNavigation.openAskBoard(board.id.id, board: board),
          );
        },
      ),
    );
  }
}
