// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'whiteboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WhiteboardId _$WhiteboardIdFromJson(Map<String, dynamic> json) {
  return _WhiteboardId.fromJson(json);
}

/// @nodoc
mixin _$WhiteboardId {
  @JsonKey(readValue: WhiteboardParentId.readValue)
  WhiteboardParentId get parentId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  /// Serializes this WhiteboardId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WhiteboardId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WhiteboardIdCopyWith<WhiteboardId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WhiteboardIdCopyWith<$Res> {
  factory $WhiteboardIdCopyWith(
          WhiteboardId value, $Res Function(WhiteboardId) then) =
      _$WhiteboardIdCopyWithImpl<$Res, WhiteboardId>;
  @useResult
  $Res call(
      {@JsonKey(readValue: WhiteboardParentId.readValue)
      WhiteboardParentId parentId,
      String id});

  $WhiteboardParentIdCopyWith<$Res> get parentId;
}

/// @nodoc
class _$WhiteboardIdCopyWithImpl<$Res, $Val extends WhiteboardId>
    implements $WhiteboardIdCopyWith<$Res> {
  _$WhiteboardIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WhiteboardId
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
              as WhiteboardParentId,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of WhiteboardId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WhiteboardParentIdCopyWith<$Res> get parentId {
    return $WhiteboardParentIdCopyWith<$Res>(_value.parentId, (value) {
      return _then(_value.copyWith(parentId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WhiteboardIdImplCopyWith<$Res>
    implements $WhiteboardIdCopyWith<$Res> {
  factory _$$WhiteboardIdImplCopyWith(
          _$WhiteboardIdImpl value, $Res Function(_$WhiteboardIdImpl) then) =
      __$$WhiteboardIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(readValue: WhiteboardParentId.readValue)
      WhiteboardParentId parentId,
      String id});

  @override
  $WhiteboardParentIdCopyWith<$Res> get parentId;
}

/// @nodoc
class __$$WhiteboardIdImplCopyWithImpl<$Res>
    extends _$WhiteboardIdCopyWithImpl<$Res, _$WhiteboardIdImpl>
    implements _$$WhiteboardIdImplCopyWith<$Res> {
  __$$WhiteboardIdImplCopyWithImpl(
      _$WhiteboardIdImpl _value, $Res Function(_$WhiteboardIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of WhiteboardId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentId = null,
    Object? id = null,
  }) {
    return _then(_$WhiteboardIdImpl(
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as WhiteboardParentId,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WhiteboardIdImpl implements _WhiteboardId {
  const _$WhiteboardIdImpl(
      {@JsonKey(readValue: WhiteboardParentId.readValue) required this.parentId,
      required this.id});

  factory _$WhiteboardIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$WhiteboardIdImplFromJson(json);

  @override
  @JsonKey(readValue: WhiteboardParentId.readValue)
  final WhiteboardParentId parentId;
  @override
  final String id;

  @override
  String toString() {
    return 'WhiteboardId(parentId: $parentId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WhiteboardIdImpl &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, parentId, id);

  /// Create a copy of WhiteboardId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WhiteboardIdImplCopyWith<_$WhiteboardIdImpl> get copyWith =>
      __$$WhiteboardIdImplCopyWithImpl<_$WhiteboardIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WhiteboardIdImplToJson(
      this,
    );
  }
}

abstract class _WhiteboardId implements WhiteboardId {
  const factory _WhiteboardId(
      {@JsonKey(readValue: WhiteboardParentId.readValue)
      required final WhiteboardParentId parentId,
      required final String id}) = _$WhiteboardIdImpl;

  factory _WhiteboardId.fromJson(Map<String, dynamic> json) =
      _$WhiteboardIdImpl.fromJson;

  @override
  @JsonKey(readValue: WhiteboardParentId.readValue)
  WhiteboardParentId get parentId;
  @override
  String get id;

  /// Create a copy of WhiteboardId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WhiteboardIdImplCopyWith<_$WhiteboardIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WhiteboardParentId _$WhiteboardParentIdFromJson(Map<String, dynamic> json) {
  return _WhiteboardParentId.fromJson(json);
}

/// @nodoc
mixin _$WhiteboardParentId {
  String get FolderId => throw _privateConstructorUsedError;

  /// Serializes this WhiteboardParentId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WhiteboardParentId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WhiteboardParentIdCopyWith<WhiteboardParentId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WhiteboardParentIdCopyWith<$Res> {
  factory $WhiteboardParentIdCopyWith(
          WhiteboardParentId value, $Res Function(WhiteboardParentId) then) =
      _$WhiteboardParentIdCopyWithImpl<$Res, WhiteboardParentId>;
  @useResult
  $Res call({String FolderId});
}

/// @nodoc
class _$WhiteboardParentIdCopyWithImpl<$Res, $Val extends WhiteboardParentId>
    implements $WhiteboardParentIdCopyWith<$Res> {
  _$WhiteboardParentIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WhiteboardParentId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? FolderId = null,
  }) {
    return _then(_value.copyWith(
      FolderId: null == FolderId
          ? _value.FolderId
          : FolderId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WhiteboardParentIdImplCopyWith<$Res>
    implements $WhiteboardParentIdCopyWith<$Res> {
  factory _$$WhiteboardParentIdImplCopyWith(_$WhiteboardParentIdImpl value,
          $Res Function(_$WhiteboardParentIdImpl) then) =
      __$$WhiteboardParentIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String FolderId});
}

/// @nodoc
class __$$WhiteboardParentIdImplCopyWithImpl<$Res>
    extends _$WhiteboardParentIdCopyWithImpl<$Res, _$WhiteboardParentIdImpl>
    implements _$$WhiteboardParentIdImplCopyWith<$Res> {
  __$$WhiteboardParentIdImplCopyWithImpl(_$WhiteboardParentIdImpl _value,
      $Res Function(_$WhiteboardParentIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of WhiteboardParentId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? FolderId = null,
  }) {
    return _then(_$WhiteboardParentIdImpl(
      FolderId: null == FolderId
          ? _value.FolderId
          : FolderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WhiteboardParentIdImpl implements _WhiteboardParentId {
  const _$WhiteboardParentIdImpl({required this.FolderId});

  factory _$WhiteboardParentIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$WhiteboardParentIdImplFromJson(json);

  @override
  final String FolderId;

  @override
  String toString() {
    return 'WhiteboardParentId(FolderId: $FolderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WhiteboardParentIdImpl &&
            (identical(other.FolderId, FolderId) ||
                other.FolderId == FolderId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, FolderId);

  /// Create a copy of WhiteboardParentId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WhiteboardParentIdImplCopyWith<_$WhiteboardParentIdImpl> get copyWith =>
      __$$WhiteboardParentIdImplCopyWithImpl<_$WhiteboardParentIdImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WhiteboardParentIdImplToJson(
      this,
    );
  }
}

abstract class _WhiteboardParentId implements WhiteboardParentId {
  const factory _WhiteboardParentId({required final String FolderId}) =
      _$WhiteboardParentIdImpl;

  factory _WhiteboardParentId.fromJson(Map<String, dynamic> json) =
      _$WhiteboardParentIdImpl.fromJson;

  @override
  String get FolderId;

  /// Create a copy of WhiteboardParentId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WhiteboardParentIdImplCopyWith<_$WhiteboardParentIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Whiteboard _$WhiteboardFromJson(Map<String, dynamic> json) {
  return _Whiteboard.fromJson(json);
}

/// @nodoc
mixin _$Whiteboard {
  @JsonKey(readValue: WhiteboardId.readValue)
  WhiteboardId get id => throw _privateConstructorUsedError;
  String get emoji => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this Whiteboard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Whiteboard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WhiteboardCopyWith<Whiteboard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WhiteboardCopyWith<$Res> {
  factory $WhiteboardCopyWith(
          Whiteboard value, $Res Function(Whiteboard) then) =
      _$WhiteboardCopyWithImpl<$Res, Whiteboard>;
  @useResult
  $Res call(
      {@JsonKey(readValue: WhiteboardId.readValue) WhiteboardId id,
      String emoji,
      String title});

  $WhiteboardIdCopyWith<$Res> get id;
}

/// @nodoc
class _$WhiteboardCopyWithImpl<$Res, $Val extends Whiteboard>
    implements $WhiteboardCopyWith<$Res> {
  _$WhiteboardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Whiteboard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? emoji = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as WhiteboardId,
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of Whiteboard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WhiteboardIdCopyWith<$Res> get id {
    return $WhiteboardIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WhiteboardImplCopyWith<$Res>
    implements $WhiteboardCopyWith<$Res> {
  factory _$$WhiteboardImplCopyWith(
          _$WhiteboardImpl value, $Res Function(_$WhiteboardImpl) then) =
      __$$WhiteboardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(readValue: WhiteboardId.readValue) WhiteboardId id,
      String emoji,
      String title});

  @override
  $WhiteboardIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$WhiteboardImplCopyWithImpl<$Res>
    extends _$WhiteboardCopyWithImpl<$Res, _$WhiteboardImpl>
    implements _$$WhiteboardImplCopyWith<$Res> {
  __$$WhiteboardImplCopyWithImpl(
      _$WhiteboardImpl _value, $Res Function(_$WhiteboardImpl) _then)
      : super(_value, _then);

  /// Create a copy of Whiteboard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? emoji = null,
    Object? title = null,
  }) {
    return _then(_$WhiteboardImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as WhiteboardId,
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WhiteboardImpl implements _Whiteboard {
  const _$WhiteboardImpl(
      {@JsonKey(readValue: WhiteboardId.readValue) required this.id,
      required this.emoji,
      required this.title});

  factory _$WhiteboardImpl.fromJson(Map<String, dynamic> json) =>
      _$$WhiteboardImplFromJson(json);

  @override
  @JsonKey(readValue: WhiteboardId.readValue)
  final WhiteboardId id;
  @override
  final String emoji;
  @override
  final String title;

  @override
  String toString() {
    return 'Whiteboard(id: $id, emoji: $emoji, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WhiteboardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, emoji, title);

  /// Create a copy of Whiteboard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WhiteboardImplCopyWith<_$WhiteboardImpl> get copyWith =>
      __$$WhiteboardImplCopyWithImpl<_$WhiteboardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WhiteboardImplToJson(
      this,
    );
  }
}

abstract class _Whiteboard implements Whiteboard {
  const factory _Whiteboard(
      {@JsonKey(readValue: WhiteboardId.readValue)
      required final WhiteboardId id,
      required final String emoji,
      required final String title}) = _$WhiteboardImpl;

  factory _Whiteboard.fromJson(Map<String, dynamic> json) =
      _$WhiteboardImpl.fromJson;

  @override
  @JsonKey(readValue: WhiteboardId.readValue)
  WhiteboardId get id;
  @override
  String get emoji;
  @override
  String get title;

  /// Create a copy of Whiteboard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WhiteboardImplCopyWith<_$WhiteboardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
