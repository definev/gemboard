// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decoration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CellDecoration _$CellDecorationFromJson(Map<String, dynamic> json) {
  return _CellDecoration.fromJson(json);
}

/// @nodoc
mixin _$CellDecoration {
  String get color => throw _privateConstructorUsedError;

  /// Serializes this CellDecoration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CellDecoration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CellDecorationCopyWith<CellDecoration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CellDecorationCopyWith<$Res> {
  factory $CellDecorationCopyWith(
          CellDecoration value, $Res Function(CellDecoration) then) =
      _$CellDecorationCopyWithImpl<$Res, CellDecoration>;
  @useResult
  $Res call({String color});
}

/// @nodoc
class _$CellDecorationCopyWithImpl<$Res, $Val extends CellDecoration>
    implements $CellDecorationCopyWith<$Res> {
  _$CellDecorationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CellDecoration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CellDecorationImplCopyWith<$Res>
    implements $CellDecorationCopyWith<$Res> {
  factory _$$CellDecorationImplCopyWith(_$CellDecorationImpl value,
          $Res Function(_$CellDecorationImpl) then) =
      __$$CellDecorationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String color});
}

/// @nodoc
class __$$CellDecorationImplCopyWithImpl<$Res>
    extends _$CellDecorationCopyWithImpl<$Res, _$CellDecorationImpl>
    implements _$$CellDecorationImplCopyWith<$Res> {
  __$$CellDecorationImplCopyWithImpl(
      _$CellDecorationImpl _value, $Res Function(_$CellDecorationImpl) _then)
      : super(_value, _then);

  /// Create a copy of CellDecoration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$CellDecorationImpl(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CellDecorationImpl implements _CellDecoration {
  const _$CellDecorationImpl({required this.color});

  factory _$CellDecorationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CellDecorationImplFromJson(json);

  @override
  final String color;

  @override
  String toString() {
    return 'CellDecoration(color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CellDecorationImpl &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, color);

  /// Create a copy of CellDecoration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CellDecorationImplCopyWith<_$CellDecorationImpl> get copyWith =>
      __$$CellDecorationImplCopyWithImpl<_$CellDecorationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CellDecorationImplToJson(
      this,
    );
  }
}

abstract class _CellDecoration implements CellDecoration {
  const factory _CellDecoration({required final String color}) =
      _$CellDecorationImpl;

  factory _CellDecoration.fromJson(Map<String, dynamic> json) =
      _$CellDecorationImpl.fromJson;

  @override
  String get color;

  /// Create a copy of CellDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CellDecorationImplCopyWith<_$CellDecorationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}