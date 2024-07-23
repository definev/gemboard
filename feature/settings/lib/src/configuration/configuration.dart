import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class SettingsConfiguration {
  static final provider = Provider<SettingsConfiguration>((_) => throw UnimplementedError('You must provide a SettingsConfiguration implementation in your app module'));
}