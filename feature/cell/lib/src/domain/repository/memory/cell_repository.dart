import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';

import '../../model/cell.dart';
import '../cell_repository.dart';

part 'cell_repository.g.dart';

@Riverpod(keepAlive: true)
CellRepository cellRepositoryMemory(Ref ref) {
  return CellRepositoryMemory();
}

class CellRepositoryMemory extends CellRepository
    with CrudDTORepositoryMemory<CellParentId, CellId, Cell> {
  @override
  Stream<List<Cell>> watchList({required CellParentId parentId}) async* {
    yield await getList(parentId: parentId);
  }
}
