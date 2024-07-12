import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/model/folder.dart';
import '../domain/repository/folder_repository.dart';

part 'get_folder_list.g.dart';

@riverpod
Future<List<Folder>> getFolderList(GetFolderListRef ref) async {
  final repository = ref.read(folderRepositoryProvider);
  return repository.getList(parentId: const FolderParentId());
}
