import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:folder/src/domain/model/folder.dart';
import 'package:folder/src/domain/repository/drift/folder_repository.dart';
import 'package:folder/src/domain/repository/folder_repository.dart';
import 'package:folder/src/domain/repository/memory/folder_repository.dart';
import 'package:folder/src/domain/repository/shared_preferences/folder_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';

part 'folder_repository.g.dart';

@Riverpod(keepAlive: true)
FolderRepository folderRepositoryAdaptive(Ref ref) {
  final memory = ref.watch(folderRepositoryMemoryProvider);
  if (kIsWasm) {
    final sharedPReferences = ref.watch(
      folderRepositorySharedPreferencesProvider,
    );
    return FolderRepositoryAdaptive(
      local: sharedPReferences,
      memory: memory,
    );
  }

  final drift = ref.watch(folderRepositoryDriftProvider);
  return FolderRepositoryAdaptive(
    local: drift,
    memory: memory,
  );
}

class FolderRepositoryAdaptive extends FolderRepository
    with CrudDtoRepositoryAdaptive<FolderParentId, FolderId, Folder> {
  FolderRepositoryAdaptive({
    required this.local,
    required this.memory,
  });

  final FolderRepository local;
  final FolderRepository memory;

  @override
  CrudDTORepository<FolderParentId, FolderId, Folder> get interactive => memory;

  @override
  CrudDTORepository<FolderParentId, FolderId, Folder> get storage => local;
}
