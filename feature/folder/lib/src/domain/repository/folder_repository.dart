import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';

import '../model/folder.dart';
import 'memory/folder_repository.dart';

part 'folder_repository.g.dart';

@riverpod
FolderRepository folderRepository(FolderRepositoryRef ref) {
  return ref.read(folderRepositoryMemoryProvider);
}

abstract class FolderRepository
    extends CrudDTORepository<FolderParentId, FolderId, Folder> {}
