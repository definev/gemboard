import 'dart:async';

import 'package:ask_board/src/domain/model/mixin/mixin.dart';

abstract class CrudDTORepository<PID, ID extends HasParentId<PID>,
    Data extends HasId<ID>> {
  FutureOr<List<Data>> getList({required PID parentId, int page = 0, int size = 10});

  FutureOr<Data> get({required ID id});

  Future<void> add({required PID parentId, required Data data});

  Future<void> delete({required ID id});

  Future<void> update({required ID id, required Data data});
}

