import 'package:folder/src/domain/repository/folder_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/model/folder.dart';

part 'get_folder_by_id.g.dart';

@riverpod
Future<Folder> getFolderById(GetFolderByIdRef ref, String id) async {
  final repository = ref.read(folderRepositoryProvider);
  return repository.get(id: FolderId(id: id));
}