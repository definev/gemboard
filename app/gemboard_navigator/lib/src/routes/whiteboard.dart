part of '../router.dart';

class WhiteboardEditorRoute extends GoRouteData {
  const WhiteboardEditorRoute({
    required this.id,
    this.folderId,
    required this.$extra,
  });

  static const location = '/whiteboard/:id';
  static const subLocation = 'whiteboard/:id';

  static final $parentNavigatorKey = HomeShell.$navigatorKey;

  final String id;
  final String? folderId;
  final ResizableController? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return WhiteboardEditorFlow(
      id: WhiteboardId(
        parentId: WhiteboardParentId(folderId: folderId),
        id: id,
      ),
      resizableController: $extra,
    );
  }

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return MaterialPage<void>(
      key: state.pageKey,
      child: build(context, state),
    );
  }
}
