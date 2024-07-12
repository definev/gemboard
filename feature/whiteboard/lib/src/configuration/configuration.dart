import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class FolderConfiguration {
  static final provider = Provider<FolderConfiguration>((_) => throw UnimplementedError('You must provide a FolderConfiguration implementation in your app module'));
}