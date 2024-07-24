import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';

import '../../model/folder.dart';
import '../folder_repository.dart';

part 'folder_repository.g.dart';

@Riverpod(keepAlive: true)
FolderRepository folderRepositoryHive(FolderRepositoryHiveRef ref) {
  return FolderRepositoryHive();
}

class FolderRepositoryHive extends FolderRepository
    with CrudDTORepositoryHive<FolderParentId, FolderId, Folder> {
  @override
  String get boxName => 'folder';

  @override
  Folder fromJson(Map<String, dynamic> json) => Folder.fromJson(json);
}
