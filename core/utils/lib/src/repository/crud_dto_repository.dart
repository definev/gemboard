import 'dart:async';

import '../mixin/mixin.dart';

abstract class CrudDTORepository<PID, ID extends HasParentId<PID>,
    Data extends HasId<ID>> {
  FutureOr<List<Data>> getList(
      {required PID parentId, int page = 0, int size = 10});

  FutureOr<Data> get({required ID id});

  Future<void> add({required PID parentId, required Data data});

  Future<void> delete({required ID id});

  Future<void> update({required ID id, required Data data});
}

mixin class CrudDTORepositoryMemory<PID, ID extends HasParentId<PID>,
    Data extends HasId<ID>> implements CrudDTORepository<PID, ID, Data> {
  Map<PID, List<Data>> map = {};

  List<Data> getList({required PID parentId, int page = 0, int size = 10}) {
    return map[parentId] ?? [];
  }

  Data get({required ID id}) {
    return map[id.parentId]!.firstWhere((element) => element.id == id);
  }

  Future<void> add({required PID parentId, required Data data}) async {
    if (map[parentId] == null) {
      map[parentId] = [];
    }
    map[parentId]!.add(data);
  }

  Future<void> delete({required ID id}) async {
    map[id.parentId]?.removeWhere((element) => element.id == id);
  }

  Future<void> update({required ID id, required Data data}) async {
    final index = map[id.parentId]!.indexWhere((element) => element.id == id);
    if (index == -1) return;
    map[id.parentId]![index] = data;
  }
}
