import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';

import '../../model/cell.dart';
import '../cell_repository.dart';
import '../drift/cell_repository.dart';
import '../memory/cell_repository.dart';

part 'cell_repository.g.dart';

@Riverpod(keepAlive: true)
CellRepository cellRepositoryAdaptive(CellRepositoryAdaptiveRef ref) {
  final drift = ref.watch(cellRepositoryDriftProvider);
  // final hive = ref.watch(cellRepositoryHiveProvider);
  final memory = ref.watch(cellRepositoryMemoryProvider);

  return CellRepositoryAdaptive(
    local: drift,
    memory: memory,
  );
}

class CellRepositoryAdaptive extends CellRepository
    with CrudDtoRepositoryAdaptive<CellParentId, CellId, Cell> {
  CellRepositoryAdaptive({required this.local, required this.memory});

  final CellRepository local;
  final CellRepository memory;

  @override
  CrudDTORepository<CellParentId, CellId, Cell> get interactive => memory;

  @override
  CrudDTORepository<CellParentId, CellId, Cell> get storage => local;

  @override
  Stream<List<Cell>> watchList({required CellParentId parentId}) async* {
    yield await getList(parentId: parentId);
  }
}
