import 'package:flutter/foundation.dart';
import 'package:folder/src/domain/repository/adaptive/folder_repository.dart';
import 'package:folder/src/domain/repository/memory/folder_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';

import '../model/folder.dart';

part 'folder_repository.g.dart';

@riverpod
FolderRepository folderRepository(FolderRepositoryRef ref) {
  if (kIsWasm) return ref.read(folderRepositoryMemoryProvider);
  return ref.read(folderRepositoryAdaptiveProvider);
}

abstract class FolderRepository
    extends CrudDTORepository<FolderParentId, FolderId, Folder> {}
