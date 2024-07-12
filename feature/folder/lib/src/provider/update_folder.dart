import 'package:folder/src/domain/repository/folder_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/model/folder.dart';

part 'update_folder.g.dart';

@riverpod
Future<void> updateFolder(
  UpdateFolderRef ref, {
  required FolderId id,
  required Folder data,
}) async {
  final repository = ref.read(folderRepositoryProvider);
  return repository.update(id: id, data: data);
}
