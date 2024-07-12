import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';

import '../../model/folder.dart';
import '../folder_repository.dart';

part 'folder_repository.g.dart';

@Riverpod(keepAlive: true)
FolderRepositoryMemory folderRepositoryMemory(FolderRepositoryMemoryRef ref) {
  return FolderRepositoryMemory();
}

class FolderRepositoryMemory extends FolderRepository
    with CrudDTORepositoryMemory<FolderParentId, FolderId, Folder> {
  Map<FolderParentId, List<Folder>> map = {
    const FolderParentId(): [
      Folder(
        id: FolderId(id: '1'),
        emoji: '👉',
        title: 'Default',
      ),
    ],
  };
}
