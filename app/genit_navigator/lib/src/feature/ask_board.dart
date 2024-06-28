import 'package:ask_board/ask_board.dart';
import 'package:genit_navigator/src/router.dart';

class AskBoardNavigationImpl implements AskBoardNavigation {
  @override
  void openAskBoard(String id, {AskBoard? board}) {
    router.push(
      AskBoardRoute(id: id).location,
      extra: board,
    );
  }
}
