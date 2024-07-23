// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'whiteboard_position.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WhiteboardPosition _$WhiteboardPositionFromJson(Map<String, dynamic> json) {
  return _WhiteboardPosition.fromJson(json);
}

/// @nodoc
mixin _$WhiteboardPosition {
  double get scale => throw _privateConstructorUsedError;
  @OffsetConverter()
  Offset get offset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WhiteboardPositionCopyWith<WhiteboardPosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WhiteboardPositionCopyWith<$Res> {
  factory $WhiteboardPositionCopyWith(
          WhiteboardPosition value, $Res Function(WhiteboardPosition) then) =
      _$WhiteboardPositionCopyWithImpl<$Res, WhiteboardPosition>;
  @useResult
  $Res call({double scale, @OffsetConverter() Offset offset});
}

/// @nodoc
class _$WhiteboardPositionCopyWithImpl<$Res, $Val extends WhiteboardPosition>
    implements $WhiteboardPositionCopyWith<$Res> {
  _$WhiteboardPositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scale = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WhiteboardPositionImplCopyWith<$Res>
    implements $WhiteboardPositionCopyWith<$Res> {
  factory _$$WhiteboardPositionImplCopyWith(_$WhiteboardPositionImpl value,
          $Res Function(_$WhiteboardPositionImpl) then) =
      __$$WhiteboardPositionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double scale, @OffsetConverter() Offset offset});
}

/// @nodoc
class __$$WhiteboardPositionImplCopyWithImpl<$Res>
    extends _$WhiteboardPositionCopyWithImpl<$Res, _$WhiteboardPositionImpl>
    implements _$$WhiteboardPositionImplCopyWith<$Res> {
  __$$WhiteboardPositionImplCopyWithImpl(_$WhiteboardPositionImpl _value,
      $Res Function(_$WhiteboardPositionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scale = null,
    Object? offset = null,
  }) {
    return _then(_$WhiteboardPositionImpl(
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WhiteboardPositionImpl implements _WhiteboardPosition {
  const _$WhiteboardPositionImpl(
      {required this.scale, @OffsetConverter() required this.offset});

  factory _$WhiteboardPositionImpl.fromJson(Map<String, dynamic> json) =>
      _$$WhiteboardPositionImplFromJson(json);

  @override
  final double scale;
  @override
  @OffsetConverter()
  final Offset offset;

  @override
  String toString() {
    return 'WhiteboardPosition(scale: $scale, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WhiteboardPositionImpl &&
            (identical(other.scale, scale) || other.scale == scale) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, scale, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WhiteboardPositionImplCopyWith<_$WhiteboardPositionImpl> get copyWith =>
      __$$WhiteboardPositionImplCopyWithImpl<_$WhiteboardPositionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WhiteboardPositionImplToJson(
      this,
    );
  }
}

abstract class _WhiteboardPosition implements WhiteboardPosition {
  const factory _WhiteboardPosition(
          {required final double scale,
          @OffsetConverter() required final Offset offset}) =
      _$WhiteboardPositionImpl;

  factory _WhiteboardPosition.fromJson(Map<String, dynamic> json) =
      _$WhiteboardPositionImpl.fromJson;

  @override
  double get scale;
  @override
  @OffsetConverter()
  Offset get offset;
  @override
  @JsonKey(ignore: true)
  _$$WhiteboardPositionImplCopyWith<_$WhiteboardPositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
