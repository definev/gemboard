import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:gemboard_navigator/src/router.dart';
import 'package:whiteboard/whiteboard.dart';

class WhiteboardNavigationImpl implements WhiteboardNavigation {
  @override
  void openWhiteboardEditor(
    BuildContext context, {
    required WhiteboardId id,
    Whiteboard? whiteboard,
    required ResizableController? resizableController,
  }) {
    resizableController?.hide();
    router.go(
      WhiteboardEditorRoute(
        id: id.id,
        folderId: id.parentId.folderId,
      ).location,
      extra: resizableController,
    );
  }

  @override
  Future<Whiteboard?> pushWhiteboardSelector() {
    return router.push(WhiteboardSelectorRoute().location);
  }
}
