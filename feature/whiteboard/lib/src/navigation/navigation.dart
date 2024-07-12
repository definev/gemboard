import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class FolderNavigation {
  static final provider = Provider<FolderNavigation>((_) => throw UnimplementedError('You must provide a FolderNavigation implementation in your app module'));
}