import 'package:ask_board/src/domain/model/ask_board.dart';
import 'package:flutter/material.dart';

class AskBoardView extends StatelessWidget {
  const AskBoardView({
    super.key,
    required this.board,
  });

  final AskBoard board;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(board.title),
      ),
      body: Center(
        child: Text('Hello, ask_board!'),
      ),
    );
  }
}
