import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class AskBoardConfiguration {
  static final provider = Provider<AskBoardConfiguration>((_) => throw UnimplementedError('You must provide a AskBoardConfiguration implementation in your app module'));
}