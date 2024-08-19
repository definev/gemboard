import 'package:cell/src/domain/model/cell.dart';
import 'package:cell/src/domain/repository/cell_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:utils/utils.dart';

part 'cell_repository.g.dart';

@Riverpod(keepAlive: true)
CellRepository cellRepositorySharedPreferences(
    CellRepositorySharedPreferencesRef ref) {
  return CellRepositorySharedPreferences();
}

class CellRepositorySharedPreferences extends CellRepository
    with CrudDtoRepositorySharedPreferences<CellParentId, CellId, Cell> {
  @override
  String get boxName => 'cell';

  @override
  Cell fromJson(Map<String, dynamic> json) {
    return Cell.fromJson(json);
  }

  @override
  final SharedPreferencesAsync instance = SharedPreferencesAsync();

  @override
  Stream<List<Cell>> watchList({required CellParentId parentId}) async* {
    yield await getList(parentId: parentId);
  }
}
