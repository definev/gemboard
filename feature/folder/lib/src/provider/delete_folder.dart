import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:folder/folder.dart';
import 'package:folder/src/domain/repository/folder_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'delete_folder.g.dart';

@riverpod
Future<void> deleteFolder(Ref ref, {required FolderId id}) async {
  final repository = ref.read(folderRepositoryProvider);
  await repository.delete(id: id);
  ref.invalidate(getFolderListProvider);
}
