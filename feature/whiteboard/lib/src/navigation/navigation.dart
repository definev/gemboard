import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whiteboard/whiteboard.dart';

abstract class WhiteboardNavigation {
  static final provider = Provider<WhiteboardNavigation>((_) =>
      throw UnimplementedError(
          'You must provide a WhiteboardNavigation implementation in your app module'));

  void openWhiteboardEditor(
    BuildContext context, {
    required WhiteboardId id,
    Whiteboard? whiteboard,
    required ResizableController? resizableController,
  });

  Future<Whiteboard?> pushWhiteboardSelector();
}
