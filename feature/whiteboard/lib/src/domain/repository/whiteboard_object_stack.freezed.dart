// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'whiteboard_object_stack.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WhiteboardObject {
  bool get isDeleted => throw _privateConstructorUsedError;
  List<Cell> get cells => throw _privateConstructorUsedError;
  List<Edge> get edges => throw _privateConstructorUsedError;

  /// Create a copy of WhiteboardObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WhiteboardObjectCopyWith<WhiteboardObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WhiteboardObjectCopyWith<$Res> {
  factory $WhiteboardObjectCopyWith(
          WhiteboardObject value, $Res Function(WhiteboardObject) then) =
      _$WhiteboardObjectCopyWithImpl<$Res, WhiteboardObject>;
  @useResult
  $Res call({bool isDeleted, List<Cell> cells, List<Edge> edges});
}

/// @nodoc
class _$WhiteboardObjectCopyWithImpl<$Res, $Val extends WhiteboardObject>
    implements $WhiteboardObjectCopyWith<$Res> {
  _$WhiteboardObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WhiteboardObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDeleted = null,
    Object? cells = null,
    Object? edges = null,
  }) {
    return _then(_value.copyWith(
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      cells: null == cells
          ? _value.cells
          : cells // ignore: cast_nullable_to_non_nullable
              as List<Cell>,
      edges: null == edges
          ? _value.edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<Edge>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WhiteboardObjectImplCopyWith<$Res>
    implements $WhiteboardObjectCopyWith<$Res> {
  factory _$$WhiteboardObjectImplCopyWith(_$WhiteboardObjectImpl value,
          $Res Function(_$WhiteboardObjectImpl) then) =
      __$$WhiteboardObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDeleted, List<Cell> cells, List<Edge> edges});
}

/// @nodoc
class __$$WhiteboardObjectImplCopyWithImpl<$Res>
    extends _$WhiteboardObjectCopyWithImpl<$Res, _$WhiteboardObjectImpl>
    implements _$$WhiteboardObjectImplCopyWith<$Res> {
  __$$WhiteboardObjectImplCopyWithImpl(_$WhiteboardObjectImpl _value,
      $Res Function(_$WhiteboardObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of WhiteboardObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDeleted = null,
    Object? cells = null,
    Object? edges = null,
  }) {
    return _then(_$WhiteboardObjectImpl(
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      cells: null == cells
          ? _value._cells
          : cells // ignore: cast_nullable_to_non_nullable
              as List<Cell>,
      edges: null == edges
          ? _value._edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<Edge>,
    ));
  }
}

/// @nodoc

class _$WhiteboardObjectImpl implements _WhiteboardObject {
  const _$WhiteboardObjectImpl(
      {required this.isDeleted,
      required final List<Cell> cells,
      required final List<Edge> edges})
      : _cells = cells,
        _edges = edges;

  @override
  final bool isDeleted;
  final List<Cell> _cells;
  @override
  List<Cell> get cells {
    if (_cells is EqualUnmodifiableListView) return _cells;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cells);
  }

  final List<Edge> _edges;
  @override
  List<Edge> get edges {
    if (_edges is EqualUnmodifiableListView) return _edges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_edges);
  }

  @override
  String toString() {
    return 'WhiteboardObject(isDeleted: $isDeleted, cells: $cells, edges: $edges)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WhiteboardObjectImpl &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            const DeepCollectionEquality().equals(other._cells, _cells) &&
            const DeepCollectionEquality().equals(other._edges, _edges));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isDeleted,
      const DeepCollectionEquality().hash(_cells),
      const DeepCollectionEquality().hash(_edges));

  /// Create a copy of WhiteboardObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WhiteboardObjectImplCopyWith<_$WhiteboardObjectImpl> get copyWith =>
      __$$WhiteboardObjectImplCopyWithImpl<_$WhiteboardObjectImpl>(
          this, _$identity);
}

abstract class _WhiteboardObject implements WhiteboardObject {
  const factory _WhiteboardObject(
      {required final bool isDeleted,
      required final List<Cell> cells,
      required final List<Edge> edges}) = _$WhiteboardObjectImpl;

  @override
  bool get isDeleted;
  @override
  List<Cell> get cells;
  @override
  List<Edge> get edges;

  /// Create a copy of WhiteboardObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WhiteboardObjectImplCopyWith<_$WhiteboardObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
