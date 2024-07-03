import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class HomeConfiguration {
  static final provider = Provider<HomeConfiguration>((_) => throw UnimplementedError('You must provide a HomeConfiguration implementation in your app module'));
}