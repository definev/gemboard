import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';

import '../../model/cell.dart';
import '../cell_repository.dart';

part 'cell_repository.g.dart';

@Riverpod(keepAlive: true)
CellRepository cellRepositoryHive(CellRepositoryHiveRef ref) {
  return CellRepositoryHive();
}

class CellRepositoryHive extends CellRepository
    with CrudDTORepositoryHive<CellParentId, CellId, Cell> {
  @override
  String get boxName => 'Cell';

  @override
  Cell fromJson(Map<String, dynamic> json) {
    return Cell.fromJson(json);
  }

  @override
  Stream<List<Cell>> watchList({required CellParentId parentId}) async* {
    yield await getList(parentId: parentId);
  }
}
