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
  String get whiteboardId => throw _privateConstructorUsedError;
  double get scale => throw _privateConstructorUsedError;
  @OffsetConverter()
  Offset get offset => throw _privateConstructorUsedError;

  /// Serializes this WhiteboardPosition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WhiteboardPosition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WhiteboardPositionCopyWith<WhiteboardPosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WhiteboardPositionCopyWith<$Res> {
  factory $WhiteboardPositionCopyWith(
          WhiteboardPosition value, $Res Function(WhiteboardPosition) then) =
      _$WhiteboardPositionCopyWithImpl<$Res, WhiteboardPosition>;
  @useResult
  $Res call(
      {String whiteboardId, double scale, @OffsetConverter() Offset offset});
}

/// @nodoc
class _$WhiteboardPositionCopyWithImpl<$Res, $Val extends WhiteboardPosition>
    implements $WhiteboardPositionCopyWith<$Res> {
  _$WhiteboardPositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WhiteboardPosition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whiteboardId = null,
    Object? scale = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      whiteboardId: null == whiteboardId
          ? _value.whiteboardId
          : whiteboardId // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call(
      {String whiteboardId, double scale, @OffsetConverter() Offset offset});
}

/// @nodoc
class __$$WhiteboardPositionImplCopyWithImpl<$Res>
    extends _$WhiteboardPositionCopyWithImpl<$Res, _$WhiteboardPositionImpl>
    implements _$$WhiteboardPositionImplCopyWith<$Res> {
  __$$WhiteboardPositionImplCopyWithImpl(_$WhiteboardPositionImpl _value,
      $Res Function(_$WhiteboardPositionImpl) _then)
      : super(_value, _then);

  /// Create a copy of WhiteboardPosition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whiteboardId = null,
    Object? scale = null,
    Object? offset = null,
  }) {
    return _then(_$WhiteboardPositionImpl(
      whiteboardId: null == whiteboardId
          ? _value.whiteboardId
          : whiteboardId // ignore: cast_nullable_to_non_nullable
              as String,
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
      {required this.whiteboardId,
      required this.scale,
      @OffsetConverter() required this.offset});

  factory _$WhiteboardPositionImpl.fromJson(Map<String, dynamic> json) =>
      _$$WhiteboardPositionImplFromJson(json);

  @override
  final String whiteboardId;
  @override
  final double scale;
  @override
  @OffsetConverter()
  final Offset offset;

  @override
  String toString() {
    return 'WhiteboardPosition(whiteboardId: $whiteboardId, scale: $scale, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WhiteboardPositionImpl &&
            (identical(other.whiteboardId, whiteboardId) ||
                other.whiteboardId == whiteboardId) &&
            (identical(other.scale, scale) || other.scale == scale) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, whiteboardId, scale, offset);

  /// Create a copy of WhiteboardPosition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
          {required final String whiteboardId,
          required final double scale,
          @OffsetConverter() required final Offset offset}) =
      _$WhiteboardPositionImpl;

  factory _WhiteboardPosition.fromJson(Map<String, dynamic> json) =
      _$WhiteboardPositionImpl.fromJson;

  @override
  String get whiteboardId;
  @override
  double get scale;
  @override
  @OffsetConverter()
  Offset get offset;

  /// Create a copy of WhiteboardPosition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WhiteboardPositionImplCopyWith<_$WhiteboardPositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
