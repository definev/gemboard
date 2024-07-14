import 'package:genit_navigator/src/router.dart';
import 'package:whiteboard/whiteboard.dart';

class WhiteboardNavigationImpl implements WhiteboardNavigation {
  @override
  void openWhiteboardEditor(WhiteboardId id, {Whiteboard? whiteboard}) {
    router.push(
      WhiteboardEditorRoute(
        id: id.id,
        folderId: id.parentId.folderId,
      ).location,
    );
  }
}
