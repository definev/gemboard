import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:folder/folder.dart';
import 'package:whiteboard/whiteboard.dart';

abstract class ImportExportNavigation {
  static final provider = Provider<ImportExportNavigation>((_) =>
      throw UnimplementedError(
          'You must provide a ImportExportNavigation implementation in your app module'));

  void pushToExportFlow(WhiteboardId id);

  void pushToImportFlow({FolderId? folderId});
}
