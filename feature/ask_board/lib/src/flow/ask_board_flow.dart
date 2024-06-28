import 'package:ask_board/src/domain/model/ask_board.dart';
import 'package:ask_board/src/provider/get_ask_board_by_id.dart';
import 'package:ask_board/src/view/ask_board_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AskBoardFlow extends HookConsumerWidget {
  const AskBoardFlow({
    super.key,
    required this.id,
    this.board,
  });

  final String id;
  final AskBoard? board;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final boardAsyncValue = ref
        .watch(getAskBoardByIdProvider(id))
        .copyWithPrevious(switch (board != null) {
          true => AsyncValue.data(board!),
          false => AsyncValue.loading(),
        });

    return boardAsyncValue.map(
      data: (value) => AskBoardView(board: value.value),
      error: (error) => Text('Error: ${error.error}'),
      loading: (loading) => const Center(child: CircularProgressIndicator()),
    );
  }
}
