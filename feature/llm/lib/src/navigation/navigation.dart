import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class LlmNavigation {
  static final provider = Provider<LlmNavigation>((_) => throw UnimplementedError('You must provide a LlmNavigation implementation in your app module'));
}