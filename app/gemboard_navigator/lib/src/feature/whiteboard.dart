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
    required ResizableController? resiableController,
  }) {
    HomeShell.$navigatorKey.currentState!.push(
      MaterialPageRoute(
        builder: (context) => WhiteboardEditorFlow(
          id: id,
          resizableController: resiableController,
        ),
      ),
    );

    // context.push(
    //   '/whiteboard/${id.id}',
    //   // WhiteboardEditorRoute(
    //   //   id: id.id,
    //   //   folderId: id.parentId.folderId,
    //   //   $extra: resiableController,
    //   // ).location,
    //   extra: resiableController,
    // );
  }
}
