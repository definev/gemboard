import 'package:freezed_annotation/freezed_annotation.dart';

part 'edge_decoration.freezed.dart';
part 'edge_decoration.g.dart';

@freezed
class EdgeDecoration with _$EdgeDecoration {
  const factory EdgeDecoration({
    String? label,
    String? color,
  }) = _EdgeDecoration;

  factory EdgeDecoration.fromJson(Map<String, dynamic> json) =>
      _$EdgeDecorationFromJson(json);
}
