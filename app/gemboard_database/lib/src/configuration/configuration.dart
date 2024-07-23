import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class GemboardDatabaseConfiguration {
  static final provider = Provider<GemboardDatabaseConfiguration>((_) => throw UnimplementedError('You must provide a GemboardDatabaseConfiguration implementation in your app module'));
}