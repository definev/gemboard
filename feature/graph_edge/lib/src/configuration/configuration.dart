import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class GraphEdgeConfiguration {
  static final provider = Provider<GraphEdgeConfiguration>((_) => throw UnimplementedError('You must provide a GraphEdgeConfiguration implementation in your app module'));
}