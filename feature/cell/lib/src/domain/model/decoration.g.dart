// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decoration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CellDecorationImpl _$$CellDecorationImplFromJson(Map<String, dynamic> json) =>
    _$CellDecorationImpl(
      color: json['color'] as String,
      cardKind: $enumDecodeNullable(_$CellCardKindEnumMap, json['cardKind']) ??
          CellCardKind.elevated,
    );

Map<String, dynamic> _$$CellDecorationImplToJson(
        _$CellDecorationImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'cardKind': _$CellCardKindEnumMap[instance.cardKind]!,
    };

const _$CellCardKindEnumMap = {
  CellCardKind.flat: 'flat',
  CellCardKind.elevated: 'elevated',
  CellCardKind.outlined: 'outlined',
};
