part of '../router.dart';

class WhiteboardImportRoute extends GoRouteData {
  const WhiteboardImportRoute({
    required this.folderId,
    required this.parentFolderId,
  });

  static const location = '/whiteboard/import';
  static final $parentNavigatorKey = RootShell.$navigatorKey;

  final String? folderId;
  final String? parentFolderId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ImportFlow(
      folderId: switch (folderId) {
        null => null,
        final folderId => FolderId(
            id: folderId,
            parentId: FolderParentId(folderId: parentFolderId),
          ),
      },
    );
  }

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return DialogPage(
      builder: (context) => build(context, state),
    );
  }
}
