import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class HomeNavigation {
  static final provider = Provider<HomeNavigation>((_) => throw UnimplementedError('You must provide a HomeNavigation implementation in your app module'));
}