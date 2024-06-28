import 'package:ask_board/src/domain/model/mixin/mixin.dart';

abstract class CrudDTORepository<PID, ID extends HasParentId<PID>,
    Data extends HasId<ID>> {
  List<Data> getList({required PID parentId, int page = 0, int size = 10});

  Data get({required ID id});

  void add({required PID parentId, required Data data});

  void delete({required ID id});

  void update({required ID id, required Data data});
}

