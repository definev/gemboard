import 'package:folder/src/domain/model/folder.dart';
import 'package:folder/src/domain/repository/drift/folder_repository.dart';
import 'package:folder/src/domain/repository/folder_repository.dart';
import 'package:folder/src/domain/repository/memory/folder_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';

part 'folder_repository.g.dart';

@Riverpod(keepAlive: true)
FolderRepository folderRepositoryAdaptive(FolderRepositoryAdaptiveRef ref) {
  final drift = ref.read(folderRepositoryDriftProvider);
  // final hive = ref.watch(folderRepositoryHiveProvider);
  final memory = ref.watch(folderRepositoryMemoryProvider);

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
