import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class LlmConfiguration {
  static final provider = Provider<LlmConfiguration>((_) => throw UnimplementedError('You must provide a LlmConfiguration implementation in your app module'));

  String get geminiApiKey;
}