import 'package:folder/src/domain/model/folder.dart';
import 'package:folder/src/domain/repository/folder_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:utils/utils.dart';

part 'folder_repository.g.dart';

@Riverpod(keepAlive: true)
FolderRepository folderRepositorySharedPreferences(
    FolderRepositorySharedPreferencesRef ref) {
  return FolderRepositorySharedPreferences();
}

class FolderRepositorySharedPreferences extends FolderRepository
    with CrudDtoRepositorySharedPreferences<FolderParentId, FolderId, Folder> {
  @override
  String get boxName => 'folder';

  @override
  Folder fromJson(Map<String, dynamic> json) {
    return Folder.fromJson(json);
  }

  @override
  late final instance = SharedPreferencesAsync();
}
