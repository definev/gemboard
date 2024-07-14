import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whiteboard/whiteboard.dart';

abstract class WhiteboardNavigation {
  static final provider = Provider<WhiteboardNavigation>((_) =>
      throw UnimplementedError(
          'You must provide a WhiteboardNavigation implementation in your app module'));

  void openWhiteboardEditor(
    WhiteboardId id, {
    Whiteboard? whiteboard,
  });
}
