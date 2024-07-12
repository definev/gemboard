import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class CellConfiguration {
  static final provider = Provider<CellConfiguration>((_) => throw UnimplementedError('You must provide a CellConfiguration implementation in your app module'));
}