part of '../router.dart';

class WhiteboardExportRoute extends GoRouteData {
  const WhiteboardExportRoute({
    required this.id,
    this.folderId,
  });

  static const location = '/whiteboard/q/:id/export';
  static const subLocation = 'export';
  static final $parentNavigatorKey = RootShell.$navigatorKey;

  final String id;
  final String? folderId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ExportFlow(
      whiteboardId: WhiteboardId(
        parentId: WhiteboardParentId(folderId: folderId),
        id: id,
      ),
    );
  }

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return DialogPage(
      builder: (context) => build(context, state),
    );
  }
}
