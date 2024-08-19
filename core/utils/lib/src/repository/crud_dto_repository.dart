import 'dart:async';
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  Data? get({required ID id}) {
    return map[id.parentId]?.firstWhereOrNull((element) => element.id == id);
  }

  Future<void> add({required PID parentId, required Data data}) async {
    if (map[parentId] == null) {
      map[parentId] = [];
    }
    map[parentId]!.add(data);
  }

  Future<void> delete({required ID id}) async {
    map[id.parentId]?.removeWhere((element) => element.id.id == id.id);
  }

  Future<void> update({required ID id, required Data data}) async {
    final index = map[id.parentId]!.indexWhere((element) => element.id == id);
    if (index == -1) return;
    map[id.parentId]![index] = data;
  }
}

abstract mixin class CrudDTORepositoryHive<
    PID extends HasIdentity,
    ID extends HasParentId<PID>,
    Data extends HasId<ID>> implements CrudDTORepository<PID, ID, Data> {
  String get boxName;

  Data fromJson(Map<String, dynamic> json);

  Future<LazyBox<String>> fetchBox(PID parentId) async {
    return Hive.openLazyBox<String>('${boxName}_${parentId.id}');
  }

  @override
  Future<void> add({required PID parentId, required Data data}) async {
    final box = await fetchBox(parentId);
    await box.put(data.id.id, jsonEncode(data.toJson()));
  }

  @override
  Future<void> delete({required ID id}) async {
    final box = await fetchBox(id.parentId);
    box.delete(id.id);
  }

  @override
  FutureOr<Data?> get({required ID id}) async {
    final box = await fetchBox(id.parentId);
    final data = await box.get(id.id);
    if (data == null) return null;
    return fromJson(jsonDecode(data));
  }

  @override
  Future<List<Data>> getList(
      {required PID parentId, int page = 0, int size = 10}) async {
    final box = await fetchBox(parentId);
    List<Data> result = [];
    int index = 0;

    while (index < box.length) {
      final data = await box.getAt(index);
      if (data == null) break;
      result.add(fromJson(jsonDecode(data)));
      index++;
    }

    return result;
  }

  @override
  Future<void> update({required ID id, required Data data}) async {
    final box = await fetchBox(id.parentId);
    await box.put(id.id, jsonEncode(data.toJson()));
  }
}

abstract mixin class CrudDtoRepositoryAdaptive<
    PID extends HasIdentity,
    ID extends HasParentId<PID>,
    Data extends HasId<ID>> implements CrudDTORepository<PID, ID, Data> {
  CrudDTORepository<PID, ID, Data> get storage;
  CrudDTORepository<PID, ID, Data> get interactive;

  Map<String, bool> _firstTimeState = {};

  @override
  Future<void> add({required PID parentId, required Data data}) async {
    storage.add(parentId: parentId, data: data);
    await interactive.add(parentId: parentId, data: data);
  }

  @override
  Future<void> delete({required ID id}) async {
    storage.delete(id: id);
    await interactive.delete(id: id);
  }

  @override
  FutureOr<Data?> get({required ID id}) async {
    try {
      var data = await interactive.get(id: id);
      if (data == null) {
        data = await storage.get(id: id);
        if (data != null) {
          await interactive.add(parentId: id.parentId, data: data);
          return data;
        }
      }
      return data;
    } catch (e) {
      return storage.get(id: id);
    }
  }

  @override
  FutureOr<List<Data>> getList({
    required PID parentId,
    int page = 0,
    int size = 10,
  }) async {
    if (_firstTimeState[parentId.id] == null) {
      final storageData = await storage.getList(parentId: parentId);
      for (var item in storageData) {
        await interactive.add(parentId: parentId, data: item);
      }
      _firstTimeState[parentId.id] = true;
      return storageData;
    }
    try {
      final data =
          await interactive.getList(parentId: parentId, page: page, size: size);
      return data;
    } catch (e) {
      return storage.getList(parentId: parentId, page: page, size: size);
    }
  }

  @override
  Future<void> update({required ID id, required Data data}) {
    storage.update(id: id, data: data);
    return interactive.update(id: id, data: data);
  }
}

abstract mixin class CrudDtoRepositorySharedPreferences<
    PID extends HasIdentity,
    ID extends HasParentId<PID>,
    Data extends HasId<ID>> implements CrudDTORepository<PID, ID, Data> {
  String get boxName;

  String getBoxPrefix(PID parentId) =>
      '${boxName}_${switch (parentId.id) { '' => 'default', final id => id }}';

  String getDataId(ID id) => '${getBoxPrefix(id.parentId)}_${id.id}';

  final SharedPreferencesAsync instance = SharedPreferencesAsync();

  Data fromJson(Map<String, dynamic> json);

  @override
  Future<void> add({required PID parentId, required Data data}) async {
    await instance.setString(
      getDataId(data.id),
      jsonEncode(data.toJson()),
    );
  }

  @override
  Future<void> delete({required ID id}) async {
    await instance.remove(getDataId(id));
  }

  @override
  FutureOr<Data?> get({required ID id}) async {
    final json = await instance.getString(getDataId(id));
    if (json == null) return null;
    return fromJson(jsonDecode(json));
  }

  @override
  FutureOr<List<Data>> getList({
    required PID parentId,
    int page = 0,
    int size = 10,
  }) async {
    final keys = (await instance.getKeys())
        .where((key) => key.startsWith(getBoxPrefix(parentId)))
        .toList();

    return Future.wait(keys.map((key) async {
      final json = await instance.getString(key);
      return fromJson(jsonDecode(json!));
    }));
  }

  @override
  Future<void> update({required ID id, required Data data}) async {
    await instance.setString(
      getDataId(id),
      jsonEncode(data.toJson()),
    );
  }
}
