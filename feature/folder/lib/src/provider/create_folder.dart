import 'package:folder/folder.dart';
import 'package:folder/src/domain/repository/folder_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_folder.g.dart';

@riverpod
Future<void> createFolder(
  CreateFolderRef ref, {
  required Folder data,
  FolderParentId parentId = const FolderParentId(),
}) async {
  final repository = ref.read(folderRepositoryProvider);
  await repository.add(parentId: parentId, data: data);
  ref.invalidate(getFolderListProvider);
}
