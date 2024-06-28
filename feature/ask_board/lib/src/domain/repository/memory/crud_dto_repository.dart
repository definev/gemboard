import 'package:ask_board/src/domain/model/mixin/mixin.dart';
import 'package:ask_board/src/domain/repository/crud_dto_repository.dart';

mixin class CrudDTORepositoryMemory<PID, ID extends HasParentId<PID>,
    Data extends HasId<ID>> implements CrudDTORepository<PID, ID, Data> {
  Map<PID, List<Data>> map = {};

  List<Data> getList({required PID parentId, int page = 0, int size = 10}) {
    return map[parentId] ?? [];
  }

  Data get({required ID id}) {
    return map[id.parentId]!.firstWhere((element) => element.id == id);
  }

  void add({required PID parentId, required Data data}) {
    if (map[parentId] == null) {
      map[parentId] = [];
    }
    map[parentId]!.add(data);
  }

  void delete({required ID id}) {
    map[id.parentId]?.removeWhere((element) => element.id == id);
  }

  void update({required ID id, required Data data}) {
    final index = map[id.parentId]!.indexWhere((element) => element.id == id);
    if (index == -1) return;
    map[id.parentId]![index] = data;
  }
}
