import 'package:folder/src/domain/repository/folder_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/model/folder.dart';

part 'delete_folder.g.dart';

@riverpod
Future<void> deleteFolder(DeleteFolderRef ref, {required FolderId id}) async {
  final repository = ref.read(folderRepositoryProvider);
  return repository.delete(id: id);
}
