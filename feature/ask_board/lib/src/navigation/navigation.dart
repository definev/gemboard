import 'package:ask_board/src/domain/model/ask_board.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class AskBoardNavigation {
  static final provider = Provider<AskBoardNavigation>(
    (_) => throw UnimplementedError(
        'You must provide a AskBoardNavigation implementation in your app module'),
  );

  void openAskBoard(
    String id, {
    AskBoard? board,
  });
}
