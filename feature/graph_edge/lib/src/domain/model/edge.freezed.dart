// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EdgeParentId _$EdgeParentIdFromJson(Map<String, dynamic> json) {
  return _EdgeParentId.fromJson(json);
}

/// @nodoc
mixin _$EdgeParentId {
  /// Serializes this EdgeParentId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EdgeParentIdCopyWith<$Res> {
  factory $EdgeParentIdCopyWith(
          EdgeParentId value, $Res Function(EdgeParentId) then) =
      _$EdgeParentIdCopyWithImpl<$Res, EdgeParentId>;
}

/// @nodoc
class _$EdgeParentIdCopyWithImpl<$Res, $Val extends EdgeParentId>
    implements $EdgeParentIdCopyWith<$Res> {
  _$EdgeParentIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EdgeParentId
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EdgeParentIdImplCopyWith<$Res> {
  factory _$$EdgeParentIdImplCopyWith(
          _$EdgeParentIdImpl value, $Res Function(_$EdgeParentIdImpl) then) =
      __$$EdgeParentIdImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EdgeParentIdImplCopyWithImpl<$Res>
    extends _$EdgeParentIdCopyWithImpl<$Res, _$EdgeParentIdImpl>
    implements _$$EdgeParentIdImplCopyWith<$Res> {
  __$$EdgeParentIdImplCopyWithImpl(
      _$EdgeParentIdImpl _value, $Res Function(_$EdgeParentIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of EdgeParentId
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$EdgeParentIdImpl implements _EdgeParentId {
  const _$EdgeParentIdImpl();

  factory _$EdgeParentIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$EdgeParentIdImplFromJson(json);

  @override
  String toString() {
    return 'EdgeParentId()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EdgeParentIdImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$EdgeParentIdImplToJson(
      this,
    );
  }
}

abstract class _EdgeParentId implements EdgeParentId {
  const factory _EdgeParentId() = _$EdgeParentIdImpl;

  factory _EdgeParentId.fromJson(Map<String, dynamic> json) =
      _$EdgeParentIdImpl.fromJson;
}

EdgeId _$EdgeIdFromJson(Map<String, dynamic> json) {
  return _EdgeId.fromJson(json);
}

/// @nodoc
mixin _$EdgeId {
  EdgeParentId get parentId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  /// Serializes this EdgeId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EdgeId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EdgeIdCopyWith<EdgeId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EdgeIdCopyWith<$Res> {
  factory $EdgeIdCopyWith(EdgeId value, $Res Function(EdgeId) then) =
      _$EdgeIdCopyWithImpl<$Res, EdgeId>;
  @useResult
  $Res call({EdgeParentId parentId, String id});

  $EdgeParentIdCopyWith<$Res> get parentId;
}

/// @nodoc
class _$EdgeIdCopyWithImpl<$Res, $Val extends EdgeId>
    implements $EdgeIdCopyWith<$Res> {
  _$EdgeIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EdgeId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentId = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as EdgeParentId,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of EdgeId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EdgeParentIdCopyWith<$Res> get parentId {
    return $EdgeParentIdCopyWith<$Res>(_value.parentId, (value) {
      return _then(_value.copyWith(parentId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EdgeIdImplCopyWith<$Res> implements $EdgeIdCopyWith<$Res> {
  factory _$$EdgeIdImplCopyWith(
          _$EdgeIdImpl value, $Res Function(_$EdgeIdImpl) then) =
      __$$EdgeIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EdgeParentId parentId, String id});

  @override
  $EdgeParentIdCopyWith<$Res> get parentId;
}

/// @nodoc
class __$$EdgeIdImplCopyWithImpl<$Res>
    extends _$EdgeIdCopyWithImpl<$Res, _$EdgeIdImpl>
    implements _$$EdgeIdImplCopyWith<$Res> {
  __$$EdgeIdImplCopyWithImpl(
      _$EdgeIdImpl _value, $Res Function(_$EdgeIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of EdgeId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentId = null,
    Object? id = null,
  }) {
    return _then(_$EdgeIdImpl(
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as EdgeParentId,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EdgeIdImpl implements _EdgeId {
  const _$EdgeIdImpl({required this.parentId, required this.id});

  factory _$EdgeIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$EdgeIdImplFromJson(json);

  @override
  final EdgeParentId parentId;
  @override
  final String id;

  @override
  String toString() {
    return 'EdgeId(parentId: $parentId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EdgeIdImpl &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, parentId, id);

  /// Create a copy of EdgeId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EdgeIdImplCopyWith<_$EdgeIdImpl> get copyWith =>
      __$$EdgeIdImplCopyWithImpl<_$EdgeIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EdgeIdImplToJson(
      this,
    );
  }
}

abstract class _EdgeId implements EdgeId {
  const factory _EdgeId(
      {required final EdgeParentId parentId,
      required final String id}) = _$EdgeIdImpl;

  factory _EdgeId.fromJson(Map<String, dynamic> json) = _$EdgeIdImpl.fromJson;

  @override
  EdgeParentId get parentId;
  @override
  String get id;

  /// Create a copy of EdgeId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EdgeIdImplCopyWith<_$EdgeIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Edge _$EdgeFromJson(Map<String, dynamic> json) {
  return _Edge.fromJson(json);
}

/// @nodoc
mixin _$Edge {
  EdgeId get id => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  String get target => throw _privateConstructorUsedError;
  int get layer => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;

  /// Serializes this Edge to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Edge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EdgeCopyWith<Edge> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EdgeCopyWith<$Res> {
  factory $EdgeCopyWith(Edge value, $Res Function(Edge) then) =
      _$EdgeCopyWithImpl<$Res, Edge>;
  @useResult
  $Res call(
      {EdgeId id, String source, String target, int layer, String? label});

  $EdgeIdCopyWith<$Res> get id;
}

/// @nodoc
class _$EdgeCopyWithImpl<$Res, $Val extends Edge>
    implements $EdgeCopyWith<$Res> {
  _$EdgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Edge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? source = null,
    Object? target = null,
    Object? layer = null,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as EdgeId,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String,
      layer: null == layer
          ? _value.layer
          : layer // ignore: cast_nullable_to_non_nullable
              as int,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Edge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EdgeIdCopyWith<$Res> get id {
    return $EdgeIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EdgeImplCopyWith<$Res> implements $EdgeCopyWith<$Res> {
  factory _$$EdgeImplCopyWith(
          _$EdgeImpl value, $Res Function(_$EdgeImpl) then) =
      __$$EdgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EdgeId id, String source, String target, int layer, String? label});

  @override
  $EdgeIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$EdgeImplCopyWithImpl<$Res>
    extends _$EdgeCopyWithImpl<$Res, _$EdgeImpl>
    implements _$$EdgeImplCopyWith<$Res> {
  __$$EdgeImplCopyWithImpl(_$EdgeImpl _value, $Res Function(_$EdgeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Edge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? source = null,
    Object? target = null,
    Object? layer = null,
    Object? label = freezed,
  }) {
    return _then(_$EdgeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as EdgeId,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String,
      layer: null == layer
          ? _value.layer
          : layer // ignore: cast_nullable_to_non_nullable
              as int,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EdgeImpl implements _Edge {
  const _$EdgeImpl(
      {required this.id,
      required this.source,
      required this.target,
      this.layer = 9,
      this.label});

  factory _$EdgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$EdgeImplFromJson(json);

  @override
  final EdgeId id;
  @override
  final String source;
  @override
  final String target;
  @override
  @JsonKey()
  final int layer;
  @override
  final String? label;

  @override
  String toString() {
    return 'Edge(id: $id, source: $source, target: $target, layer: $layer, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EdgeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.layer, layer) || other.layer == layer) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, source, target, layer, label);

  /// Create a copy of Edge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EdgeImplCopyWith<_$EdgeImpl> get copyWith =>
      __$$EdgeImplCopyWithImpl<_$EdgeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EdgeImplToJson(
      this,
    );
  }
}

abstract class _Edge implements Edge {
  const factory _Edge(
      {required final EdgeId id,
      required final String source,
      required final String target,
      final int layer,
      final String? label}) = _$EdgeImpl;

  factory _Edge.fromJson(Map<String, dynamic> json) = _$EdgeImpl.fromJson;

  @override
  EdgeId get id;
  @override
  String get source;
  @override
  String get target;
  @override
  int get layer;
  @override
  String? get label;

  /// Create a copy of Edge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EdgeImplCopyWith<_$EdgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
