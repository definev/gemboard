import 'package:ask_board/ask_board.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:genit_navigator/src/feature/ask_board.dart';


List<Override> initializeOverrides() {
  return [
    AskBoardNavigation.provider.overrideWithValue(AskBoardNavigationImpl()),
  ];
}
