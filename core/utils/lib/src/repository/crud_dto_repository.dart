import 'dart:async';

import 'package:hive/hive.dart';

import '../mixin/mixin.dart';

abstract class CrudDTORepository<PID extends HasIdentity,
    ID extends HasParentId<PID>, Data extends HasId<ID>> {
  FutureOr<List<Data>> getList(
      {required PID parentId, int page = 0, int size = 10});

  FutureOr<Data?> get({required ID id});

  Future<void> add({required PID parentId, required Data data});

  Future<void> delete({required ID id});

  Future<void> update({required ID id, required Data data});
}

mixin class CrudDTORepositoryMemory<
    PID extends HasIdentity,
    ID extends HasParentId<PID>,
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

abstract mixin class CrudDtoRepositoryHive<
    PID extends HasIdentity,
    ID extends HasParentId<PID>,
    Data extends HasId<ID>> implements CrudDTORepository<PID, ID, Data> {
  String get boxName;

  Data fromJson(Map<String, dynamic> json);

  Box<Map<String, dynamic>> fetchBox(PID parentId) {
    return Hive.box<Map<String, dynamic>>(name: '${boxName}_${parentId.id}');
  }

  @override
  Future<void> add({required PID parentId, required Data data}) async {
    final box = fetchBox(parentId);
    box.write(() => box.put(data.id.id, data.toJson()));
  }

  @override
  Future<void> delete({required ID id}) async {
    final box = fetchBox(id.parentId);
    box.write(() => box.delete(id.id));
  }

  @override
  FutureOr<Data?> get({required ID id}) {
    final box = fetchBox(id.parentId);
    return box.read(() {
      final data = box.get(id.id);
      if (data == null) return null;
      return fromJson(data);
    });
  }

  @override
  Future<List<Data>> getList(
      {required PID parentId, int page = 0, int size = 10}) {
    return Hive.compute(() {
      final box = fetchBox(parentId);
      return box.read(() {
        List<Data> result = [];
        int index = 0;

        while (true) {
          try {
            final data = box.getAt(index);
            result.add(fromJson(data));
            index++;
          } catch (e) {
            break;
          }
        }

        return result;
      });
    });
  }

  @override
  Future<void> update({required ID id, required Data data}) async {
    final box = fetchBox(id.parentId);
    box.write(() => box.put(id.id, data.toJson()));
  }
}
