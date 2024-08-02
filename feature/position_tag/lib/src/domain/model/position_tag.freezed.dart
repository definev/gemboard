// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'position_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PositionTagId _$PositionTagIdFromJson(Map<String, dynamic> json) {
  return _PositionTagId.fromJson(json);
}

/// @nodoc
mixin _$PositionTagId {
  @PositionTagParentIdConverter()
  PositionTagParentId get parentId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  /// Serializes this PositionTagId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PositionTagId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PositionTagIdCopyWith<PositionTagId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionTagIdCopyWith<$Res> {
  factory $PositionTagIdCopyWith(
          PositionTagId value, $Res Function(PositionTagId) then) =
      _$PositionTagIdCopyWithImpl<$Res, PositionTagId>;
  @useResult
  $Res call(
      {@PositionTagParentIdConverter() PositionTagParentId parentId,
      String id});

  $PositionTagParentIdCopyWith<$Res> get parentId;
}

/// @nodoc
class _$PositionTagIdCopyWithImpl<$Res, $Val extends PositionTagId>
    implements $PositionTagIdCopyWith<$Res> {
  _$PositionTagIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PositionTagId
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
              as PositionTagParentId,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of PositionTagId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionTagParentIdCopyWith<$Res> get parentId {
    return $PositionTagParentIdCopyWith<$Res>(_value.parentId, (value) {
      return _then(_value.copyWith(parentId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PositionTagIdImplCopyWith<$Res>
    implements $PositionTagIdCopyWith<$Res> {
  factory _$$PositionTagIdImplCopyWith(
          _$PositionTagIdImpl value, $Res Function(_$PositionTagIdImpl) then) =
      __$$PositionTagIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@PositionTagParentIdConverter() PositionTagParentId parentId,
      String id});

  @override
  $PositionTagParentIdCopyWith<$Res> get parentId;
}

/// @nodoc
class __$$PositionTagIdImplCopyWithImpl<$Res>
    extends _$PositionTagIdCopyWithImpl<$Res, _$PositionTagIdImpl>
    implements _$$PositionTagIdImplCopyWith<$Res> {
  __$$PositionTagIdImplCopyWithImpl(
      _$PositionTagIdImpl _value, $Res Function(_$PositionTagIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of PositionTagId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentId = null,
    Object? id = null,
  }) {
    return _then(_$PositionTagIdImpl(
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as PositionTagParentId,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PositionTagIdImpl implements _PositionTagId {
  const _$PositionTagIdImpl(
      {@PositionTagParentIdConverter() required this.parentId,
      required this.id});

  factory _$PositionTagIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$PositionTagIdImplFromJson(json);

  @override
  @PositionTagParentIdConverter()
  final PositionTagParentId parentId;
  @override
  final String id;

  @override
  String toString() {
    return 'PositionTagId(parentId: $parentId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionTagIdImpl &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, parentId, id);

  /// Create a copy of PositionTagId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionTagIdImplCopyWith<_$PositionTagIdImpl> get copyWith =>
      __$$PositionTagIdImplCopyWithImpl<_$PositionTagIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PositionTagIdImplToJson(
      this,
    );
  }
}

abstract class _PositionTagId implements PositionTagId {
  const factory _PositionTagId(
      {@PositionTagParentIdConverter()
      required final PositionTagParentId parentId,
      required final String id}) = _$PositionTagIdImpl;

  factory _PositionTagId.fromJson(Map<String, dynamic> json) =
      _$PositionTagIdImpl.fromJson;

  @override
  @PositionTagParentIdConverter()
  PositionTagParentId get parentId;
  @override
  String get id;

  /// Create a copy of PositionTagId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositionTagIdImplCopyWith<_$PositionTagIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PositionTagParentId _$PositionTagParentIdFromJson(Map<String, dynamic> json) {
  return _PositionTagParentId.fromJson(json);
}

/// @nodoc
mixin _$PositionTagParentId {
  String get whiteboardId => throw _privateConstructorUsedError;

  /// Serializes this PositionTagParentId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PositionTagParentId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PositionTagParentIdCopyWith<PositionTagParentId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionTagParentIdCopyWith<$Res> {
  factory $PositionTagParentIdCopyWith(
          PositionTagParentId value, $Res Function(PositionTagParentId) then) =
      _$PositionTagParentIdCopyWithImpl<$Res, PositionTagParentId>;
  @useResult
  $Res call({String whiteboardId});
}

/// @nodoc
class _$PositionTagParentIdCopyWithImpl<$Res, $Val extends PositionTagParentId>
    implements $PositionTagParentIdCopyWith<$Res> {
  _$PositionTagParentIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PositionTagParentId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whiteboardId = null,
  }) {
    return _then(_value.copyWith(
      whiteboardId: null == whiteboardId
          ? _value.whiteboardId
          : whiteboardId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PositionTagParentIdImplCopyWith<$Res>
    implements $PositionTagParentIdCopyWith<$Res> {
  factory _$$PositionTagParentIdImplCopyWith(_$PositionTagParentIdImpl value,
          $Res Function(_$PositionTagParentIdImpl) then) =
      __$$PositionTagParentIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String whiteboardId});
}

/// @nodoc
class __$$PositionTagParentIdImplCopyWithImpl<$Res>
    extends _$PositionTagParentIdCopyWithImpl<$Res, _$PositionTagParentIdImpl>
    implements _$$PositionTagParentIdImplCopyWith<$Res> {
  __$$PositionTagParentIdImplCopyWithImpl(_$PositionTagParentIdImpl _value,
      $Res Function(_$PositionTagParentIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of PositionTagParentId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whiteboardId = null,
  }) {
    return _then(_$PositionTagParentIdImpl(
      whiteboardId: null == whiteboardId
          ? _value.whiteboardId
          : whiteboardId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PositionTagParentIdImpl extends _PositionTagParentId {
  const _$PositionTagParentIdImpl({required this.whiteboardId}) : super._();

  factory _$PositionTagParentIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$PositionTagParentIdImplFromJson(json);

  @override
  final String whiteboardId;

  @override
  String toString() {
    return 'PositionTagParentId(whiteboardId: $whiteboardId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionTagParentIdImpl &&
            (identical(other.whiteboardId, whiteboardId) ||
                other.whiteboardId == whiteboardId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, whiteboardId);

  /// Create a copy of PositionTagParentId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionTagParentIdImplCopyWith<_$PositionTagParentIdImpl> get copyWith =>
      __$$PositionTagParentIdImplCopyWithImpl<_$PositionTagParentIdImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PositionTagParentIdImplToJson(
      this,
    );
  }
}

abstract class _PositionTagParentId extends PositionTagParentId {
  const factory _PositionTagParentId({required final String whiteboardId}) =
      _$PositionTagParentIdImpl;
  const _PositionTagParentId._() : super._();

  factory _PositionTagParentId.fromJson(Map<String, dynamic> json) =
      _$PositionTagParentIdImpl.fromJson;

  @override
  String get whiteboardId;

  /// Create a copy of PositionTagParentId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositionTagParentIdImplCopyWith<_$PositionTagParentIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PositionTag _$PositionTagFromJson(Map<String, dynamic> json) {
  return _PositionTag.fromJson(json);
}

/// @nodoc
mixin _$PositionTag {
  @PositionTagIdConverter()
  PositionTagId get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  @RectConverter()
  Rect get rect => throw _privateConstructorUsedError;

  /// Serializes this PositionTag to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PositionTag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PositionTagCopyWith<PositionTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionTagCopyWith<$Res> {
  factory $PositionTagCopyWith(
          PositionTag value, $Res Function(PositionTag) then) =
      _$PositionTagCopyWithImpl<$Res, PositionTag>;
  @useResult
  $Res call(
      {@PositionTagIdConverter() PositionTagId id,
      String label,
      @RectConverter() Rect rect});

  $PositionTagIdCopyWith<$Res> get id;
}

/// @nodoc
class _$PositionTagCopyWithImpl<$Res, $Val extends PositionTag>
    implements $PositionTagCopyWith<$Res> {
  _$PositionTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PositionTag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? rect = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PositionTagId,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      rect: null == rect
          ? _value.rect
          : rect // ignore: cast_nullable_to_non_nullable
              as Rect,
    ) as $Val);
  }

  /// Create a copy of PositionTag
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionTagIdCopyWith<$Res> get id {
    return $PositionTagIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PositionTagImplCopyWith<$Res>
    implements $PositionTagCopyWith<$Res> {
  factory _$$PositionTagImplCopyWith(
          _$PositionTagImpl value, $Res Function(_$PositionTagImpl) then) =
      __$$PositionTagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@PositionTagIdConverter() PositionTagId id,
      String label,
      @RectConverter() Rect rect});

  @override
  $PositionTagIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$PositionTagImplCopyWithImpl<$Res>
    extends _$PositionTagCopyWithImpl<$Res, _$PositionTagImpl>
    implements _$$PositionTagImplCopyWith<$Res> {
  __$$PositionTagImplCopyWithImpl(
      _$PositionTagImpl _value, $Res Function(_$PositionTagImpl) _then)
      : super(_value, _then);

  /// Create a copy of PositionTag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? rect = null,
  }) {
    return _then(_$PositionTagImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PositionTagId,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      rect: null == rect
          ? _value.rect
          : rect // ignore: cast_nullable_to_non_nullable
              as Rect,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PositionTagImpl implements _PositionTag {
  const _$PositionTagImpl(
      {@PositionTagIdConverter() required this.id,
      required this.label,
      @RectConverter() required this.rect});

  factory _$PositionTagImpl.fromJson(Map<String, dynamic> json) =>
      _$$PositionTagImplFromJson(json);

  @override
  @PositionTagIdConverter()
  final PositionTagId id;
  @override
  final String label;
  @override
  @RectConverter()
  final Rect rect;

  @override
  String toString() {
    return 'PositionTag(id: $id, label: $label, rect: $rect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionTagImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.rect, rect) || other.rect == rect));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, label, rect);

  /// Create a copy of PositionTag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionTagImplCopyWith<_$PositionTagImpl> get copyWith =>
      __$$PositionTagImplCopyWithImpl<_$PositionTagImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PositionTagImplToJson(
      this,
    );
  }
}

abstract class _PositionTag implements PositionTag {
  const factory _PositionTag(
      {@PositionTagIdConverter() required final PositionTagId id,
      required final String label,
      @RectConverter() required final Rect rect}) = _$PositionTagImpl;

  factory _PositionTag.fromJson(Map<String, dynamic> json) =
      _$PositionTagImpl.fromJson;

  @override
  @PositionTagIdConverter()
  PositionTagId get id;
  @override
  String get label;
  @override
  @RectConverter()
  Rect get rect;

  /// Create a copy of PositionTag
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositionTagImplCopyWith<_$PositionTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
