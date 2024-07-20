import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class GraphEdgeNavigation {
  static final provider = Provider<GraphEdgeNavigation>((_) => throw UnimplementedError('You must provide a GraphEdgeNavigation implementation in your app module'));
}