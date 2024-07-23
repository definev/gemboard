import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class SettingsNavigation {
  static final provider = Provider<SettingsNavigation>((_) => throw UnimplementedError('You must provide a SettingsNavigation implementation in your app module'));

  void pushSettingsFlow();
}