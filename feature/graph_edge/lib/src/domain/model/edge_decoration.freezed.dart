// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edge_decoration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EdgeDecoration _$EdgeDecorationFromJson(Map<String, dynamic> json) {
  return _EdgeDecoration.fromJson(json);
}

/// @nodoc
mixin _$EdgeDecoration {
  String? get label => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;

  /// Serializes this EdgeDecoration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EdgeDecoration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EdgeDecorationCopyWith<EdgeDecoration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EdgeDecorationCopyWith<$Res> {
  factory $EdgeDecorationCopyWith(
          EdgeDecoration value, $Res Function(EdgeDecoration) then) =
      _$EdgeDecorationCopyWithImpl<$Res, EdgeDecoration>;
  @useResult
  $Res call({String? label, String? color});
}

/// @nodoc
class _$EdgeDecorationCopyWithImpl<$Res, $Val extends EdgeDecoration>
    implements $EdgeDecorationCopyWith<$Res> {
  _$EdgeDecorationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EdgeDecoration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EdgeDecorationImplCopyWith<$Res>
    implements $EdgeDecorationCopyWith<$Res> {
  factory _$$EdgeDecorationImplCopyWith(_$EdgeDecorationImpl value,
          $Res Function(_$EdgeDecorationImpl) then) =
      __$$EdgeDecorationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? label, String? color});
}

/// @nodoc
class __$$EdgeDecorationImplCopyWithImpl<$Res>
    extends _$EdgeDecorationCopyWithImpl<$Res, _$EdgeDecorationImpl>
    implements _$$EdgeDecorationImplCopyWith<$Res> {
  __$$EdgeDecorationImplCopyWithImpl(
      _$EdgeDecorationImpl _value, $Res Function(_$EdgeDecorationImpl) _then)
      : super(_value, _then);

  /// Create a copy of EdgeDecoration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? color = freezed,
  }) {
    return _then(_$EdgeDecorationImpl(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EdgeDecorationImpl implements _EdgeDecoration {
  const _$EdgeDecorationImpl({this.label, this.color});

  factory _$EdgeDecorationImpl.fromJson(Map<String, dynamic> json) =>
      _$$EdgeDecorationImplFromJson(json);

  @override
  final String? label;
  @override
  final String? color;

  @override
  String toString() {
    return 'EdgeDecoration(label: $label, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EdgeDecorationImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, color);

  /// Create a copy of EdgeDecoration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EdgeDecorationImplCopyWith<_$EdgeDecorationImpl> get copyWith =>
      __$$EdgeDecorationImplCopyWithImpl<_$EdgeDecorationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EdgeDecorationImplToJson(
      this,
    );
  }
}

abstract class _EdgeDecoration implements EdgeDecoration {
  const factory _EdgeDecoration({final String? label, final String? color}) =
      _$EdgeDecorationImpl;

  factory _EdgeDecoration.fromJson(Map<String, dynamic> json) =
      _$EdgeDecorationImpl.fromJson;

  @override
  String? get label;
  @override
  String? get color;

  /// Create a copy of EdgeDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EdgeDecorationImplCopyWith<_$EdgeDecorationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}