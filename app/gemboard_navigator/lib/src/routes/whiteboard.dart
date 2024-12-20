part of '../router.dart';

class WhiteboardEditorRoute extends GoRouteData {
  const WhiteboardEditorRoute({
    required this.id,
    this.folderId,
  });

  static const location = '/whiteboard/q/:id';
  static const subLocation = 'q/:id';

  static final $parentNavigatorKey = HomeShell.$navigatorKey;

  final String id;
  final String? folderId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return WhiteboardEditorFlow(
      key: ValueKey('WhiteboardEditorFlow-$id'),
      id: WhiteboardId(
        parentId: WhiteboardParentId(folderId: folderId),
        id: id,
      ),
      resizableController: HomeShell.resizableController,
    );
  }
}
