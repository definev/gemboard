import 'package:cell/cell.dart';
import 'package:cell/src/domain/repository/adaptive/cell_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';

part 'cell_repository.g.dart';

@riverpod
CellRepository cellRepository(Ref ref) {
  // if (kIsWasm) return ref.watch(cellRepositoryMemoryProvider);
  return ref.watch(cellRepositoryAdaptiveProvider);
}

abstract class CellRepository extends CrudDTORepository<CellParentId, CellId, Cell> {
  Stream<List<Cell>> watchList({required CellParentId parentId});
}