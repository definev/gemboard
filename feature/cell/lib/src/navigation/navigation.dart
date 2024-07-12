import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class CellNavigation {
  static final provider = Provider<CellNavigation>((_) => throw UnimplementedError('You must provide a CellNavigation implementation in your app module'));
}