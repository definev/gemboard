import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';

import '../../model/cell.dart';
import '../cell_repository.dart';
import '../hive/cell_repository.dart';
import '../memory/cell_repository.dart';

part 'cell_repository.g.dart';

@Riverpod(keepAlive: true)
CellRepository cellRepositoryAdaptive(CellRepositoryAdaptiveRef ref) {
  final hive = ref.watch(cellRepositoryHiveProvider);
  final memory = ref.watch(cellRepositoryMemoryProvider);

  return CellRepositoryAdaptive(
    hive: hive,
    memory: memory,
  );
}

class CellRepositoryAdaptive extends CellRepository
    with CrudDtoRepositoryAdaptive<CellParentId, CellId, Cell> {
  CellRepositoryAdaptive({required this.hive, required this.memory});

  final CellRepository hive;
  final CellRepository memory;

  @override
  CrudDTORepository<CellParentId, CellId, Cell> get interactive => memory;

  @override
  CrudDTORepository<CellParentId, CellId, Cell> get storage => hive;

  @override
  Stream<List<Cell>> watchList({required CellParentId parentId}) async* {
    yield await getList(parentId: parentId);
  }
}
