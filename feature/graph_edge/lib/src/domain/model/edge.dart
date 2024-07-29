import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graph_edge/src/domain/model/edge_decoration.dart';
import 'package:utils/utils.dart';

part 'edge.freezed.dart';
part 'edge.g.dart';

@freezed
class EdgeParentId with _$EdgeParentId, HasIdentity {
  const EdgeParentId._();

  const factory EdgeParentId({
    required String whiteboardId,
  }) = _EdgeParentId;

  factory EdgeParentId.fromJson(Map<String, dynamic> json) =>
      _$EdgeParentIdFromJson(json);

  @override
  String get id => '';
}

@freezed
class EdgeId with _$EdgeId implements HasParentId<EdgeParentId> {
  const factory EdgeId({
    required EdgeParentId parentId,
    required String id,
  }) = _EdgeId;

  factory EdgeId.fromJson(Map<String, dynamic> json) => _$EdgeIdFromJson(json);

  static String genId(String source, String target) =>
      'edge-${source}-${target}';
}

@freezed
class Edge with _$Edge implements HasId<EdgeId> {
  const factory Edge({
    required EdgeId id,
    required String source,
    required String target,
    @Default(EdgeDecoration()) EdgeDecoration decoration,
    @Default(9) int layer,
  }) = _Edge;

  factory Edge.fromJson(Map<String, dynamic> json) => _$EdgeFromJson(json);
}
