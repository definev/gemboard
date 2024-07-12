import 'package:folder/src/domain/repository/folder_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/model/folder.dart';

part 'create_folder.g.dart';

@riverpod
Future<void> createFolder(
  CreateFolderRef ref, {
  required Folder data,
  FolderParentId parentId = const FolderParentId(),
}) async {
  final repository = ref.read(folderRepositoryProvider);
  return repository.add(
    parentId: parentId,
    data: data,
  );
}
