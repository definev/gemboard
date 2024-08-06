import 'package:folder/folder.dart';
import 'package:gemboard_navigator/src/router.dart';
import 'package:import_export/import_export.dart';
import 'package:whiteboard/whiteboard.dart';

class ImportExportNavigationImpl implements ImportExportNavigation {
  @override
  void pushToExportFlow(WhiteboardId id) {
    router.push(WhiteboardExportRoute(
      id: id.id,
      folderId: id.parentId.folderId,
    ).location);
  }

  void pushToImportFlow({FolderId? folderId}) {
    router.push(WhiteboardImportRoute(
      parentFolderId: folderId?.parentId.id,
      folderId: folderId?.id,
    ).location);
  }
}
