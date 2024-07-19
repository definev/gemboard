import 'package:design_system/design_system.dart';
import 'package:genit_navigator/src/router.dart';
import 'package:whiteboard/whiteboard.dart';

class WhiteboardNavigationImpl implements WhiteboardNavigation {
  @override
  void openWhiteboardEditor(
    WhiteboardId id, {
    Whiteboard? whiteboard,
    required ResizableController? hostController,
  }) {
    router.push(
      WhiteboardEditorRoute(
        id: id.id,
        folderId: id.parentId.folderId,
        $extra: hostController,
      ).location,
    );
  }
}
