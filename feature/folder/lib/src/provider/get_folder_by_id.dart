import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:folder/src/domain/repository/folder_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/model/folder.dart';

part 'get_folder_by_id.g.dart';

@riverpod
Future<Folder> getFolderById(Ref ref, String id) async {
  final repository = ref.read(folderRepositoryProvider);
  final data = await repository.get(id: FolderId(id: id));
  if (data == null) {
    throw Exception('Folder not found');
  }
  return data;
}
