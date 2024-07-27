// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'folder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FolderId _$FolderIdFromJson(Map<String, dynamic> json) {
  return _FolderId.fromJson(json);
}

/// @nodoc
mixin _$FolderId {
  @FolderParentIdConverter()
  FolderParentId get parentId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  /// Serializes this FolderId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FolderId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FolderIdCopyWith<FolderId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FolderIdCopyWith<$Res> {
  factory $FolderIdCopyWith(FolderId value, $Res Function(FolderId) then) =
      _$FolderIdCopyWithImpl<$Res, FolderId>;
  @useResult
  $Res call({@FolderParentIdConverter() FolderParentId parentId, String id});

  $FolderParentIdCopyWith<$Res> get parentId;
}

/// @nodoc
class _$FolderIdCopyWithImpl<$Res, $Val extends FolderId>
    implements $FolderIdCopyWith<$Res> {
  _$FolderIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FolderId
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
              as FolderParentId,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of FolderId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FolderParentIdCopyWith<$Res> get parentId {
    return $FolderParentIdCopyWith<$Res>(_value.parentId, (value) {
      return _then(_value.copyWith(parentId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FolderIdImplCopyWith<$Res>
    implements $FolderIdCopyWith<$Res> {
  factory _$$FolderIdImplCopyWith(
          _$FolderIdImpl value, $Res Function(_$FolderIdImpl) then) =
      __$$FolderIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@FolderParentIdConverter() FolderParentId parentId, String id});

  @override
  $FolderParentIdCopyWith<$Res> get parentId;
}

/// @nodoc
class __$$FolderIdImplCopyWithImpl<$Res>
    extends _$FolderIdCopyWithImpl<$Res, _$FolderIdImpl>
    implements _$$FolderIdImplCopyWith<$Res> {
  __$$FolderIdImplCopyWithImpl(
      _$FolderIdImpl _value, $Res Function(_$FolderIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of FolderId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentId = null,
    Object? id = null,
  }) {
    return _then(_$FolderIdImpl(
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as FolderParentId,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FolderIdImpl implements _FolderId {
  const _$FolderIdImpl(
      {@FolderParentIdConverter() this.parentId = const FolderParentId(),
      required this.id});

  factory _$FolderIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$FolderIdImplFromJson(json);

  @override
  @JsonKey()
  @FolderParentIdConverter()
  final FolderParentId parentId;
  @override
  final String id;

  @override
  String toString() {
    return 'FolderId(parentId: $parentId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FolderIdImpl &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, parentId, id);

  /// Create a copy of FolderId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FolderIdImplCopyWith<_$FolderIdImpl> get copyWith =>
      __$$FolderIdImplCopyWithImpl<_$FolderIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FolderIdImplToJson(
      this,
    );
  }
}

abstract class _FolderId implements FolderId {
  const factory _FolderId(
      {@FolderParentIdConverter() final FolderParentId parentId,
      required final String id}) = _$FolderIdImpl;

  factory _FolderId.fromJson(Map<String, dynamic> json) =
      _$FolderIdImpl.fromJson;

  @override
  @FolderParentIdConverter()
  FolderParentId get parentId;
  @override
  String get id;

  /// Create a copy of FolderId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FolderIdImplCopyWith<_$FolderIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FolderParentId _$FolderParentIdFromJson(Map<String, dynamic> json) {
  return _FolderParentId.fromJson(json);
}

/// @nodoc
mixin _$FolderParentId {
  String? get folderId => throw _privateConstructorUsedError;

  /// Serializes this FolderParentId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FolderParentId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FolderParentIdCopyWith<FolderParentId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FolderParentIdCopyWith<$Res> {
  factory $FolderParentIdCopyWith(
          FolderParentId value, $Res Function(FolderParentId) then) =
      _$FolderParentIdCopyWithImpl<$Res, FolderParentId>;
  @useResult
  $Res call({String? folderId});
}

/// @nodoc
class _$FolderParentIdCopyWithImpl<$Res, $Val extends FolderParentId>
    implements $FolderParentIdCopyWith<$Res> {
  _$FolderParentIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FolderParentId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folderId = freezed,
  }) {
    return _then(_value.copyWith(
      folderId: freezed == folderId
          ? _value.folderId
          : folderId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FolderParentIdImplCopyWith<$Res>
    implements $FolderParentIdCopyWith<$Res> {
  factory _$$FolderParentIdImplCopyWith(_$FolderParentIdImpl value,
          $Res Function(_$FolderParentIdImpl) then) =
      __$$FolderParentIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? folderId});
}

/// @nodoc
class __$$FolderParentIdImplCopyWithImpl<$Res>
    extends _$FolderParentIdCopyWithImpl<$Res, _$FolderParentIdImpl>
    implements _$$FolderParentIdImplCopyWith<$Res> {
  __$$FolderParentIdImplCopyWithImpl(
      _$FolderParentIdImpl _value, $Res Function(_$FolderParentIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of FolderParentId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folderId = freezed,
  }) {
    return _then(_$FolderParentIdImpl(
      folderId: freezed == folderId
          ? _value.folderId
          : folderId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FolderParentIdImpl extends _FolderParentId {
  const _$FolderParentIdImpl({this.folderId}) : super._();

  factory _$FolderParentIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$FolderParentIdImplFromJson(json);

  @override
  final String? folderId;

  @override
  String toString() {
    return 'FolderParentId(folderId: $folderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FolderParentIdImpl &&
            (identical(other.folderId, folderId) ||
                other.folderId == folderId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, folderId);

  /// Create a copy of FolderParentId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FolderParentIdImplCopyWith<_$FolderParentIdImpl> get copyWith =>
      __$$FolderParentIdImplCopyWithImpl<_$FolderParentIdImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FolderParentIdImplToJson(
      this,
    );
  }
}

abstract class _FolderParentId extends FolderParentId {
  const factory _FolderParentId({final String? folderId}) =
      _$FolderParentIdImpl;
  const _FolderParentId._() : super._();

  factory _FolderParentId.fromJson(Map<String, dynamic> json) =
      _$FolderParentIdImpl.fromJson;

  @override
  String? get folderId;

  /// Create a copy of FolderParentId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FolderParentIdImplCopyWith<_$FolderParentIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Folder _$FolderFromJson(Map<String, dynamic> json) {
  return _Folder.fromJson(json);
}

/// @nodoc
mixin _$Folder {
  @FolderIdConverter()
  FolderId get id => throw _privateConstructorUsedError;
  String get emoji => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this Folder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Folder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FolderCopyWith<Folder> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FolderCopyWith<$Res> {
  factory $FolderCopyWith(Folder value, $Res Function(Folder) then) =
      _$FolderCopyWithImpl<$Res, Folder>;
  @useResult
  $Res call({@FolderIdConverter() FolderId id, String emoji, String title});

  $FolderIdCopyWith<$Res> get id;
}

/// @nodoc
class _$FolderCopyWithImpl<$Res, $Val extends Folder>
    implements $FolderCopyWith<$Res> {
  _$FolderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Folder
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
              as FolderId,
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

  /// Create a copy of Folder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FolderIdCopyWith<$Res> get id {
    return $FolderIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FolderImplCopyWith<$Res> implements $FolderCopyWith<$Res> {
  factory _$$FolderImplCopyWith(
          _$FolderImpl value, $Res Function(_$FolderImpl) then) =
      __$$FolderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@FolderIdConverter() FolderId id, String emoji, String title});

  @override
  $FolderIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$FolderImplCopyWithImpl<$Res>
    extends _$FolderCopyWithImpl<$Res, _$FolderImpl>
    implements _$$FolderImplCopyWith<$Res> {
  __$$FolderImplCopyWithImpl(
      _$FolderImpl _value, $Res Function(_$FolderImpl) _then)
      : super(_value, _then);

  /// Create a copy of Folder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? emoji = null,
    Object? title = null,
  }) {
    return _then(_$FolderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as FolderId,
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
class _$FolderImpl implements _Folder {
  const _$FolderImpl(
      {@FolderIdConverter() required this.id,
      required this.emoji,
      required this.title});

  factory _$FolderImpl.fromJson(Map<String, dynamic> json) =>
      _$$FolderImplFromJson(json);

  @override
  @FolderIdConverter()
  final FolderId id;
  @override
  final String emoji;
  @override
  final String title;

  @override
  String toString() {
    return 'Folder(id: $id, emoji: $emoji, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FolderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, emoji, title);

  /// Create a copy of Folder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FolderImplCopyWith<_$FolderImpl> get copyWith =>
      __$$FolderImplCopyWithImpl<_$FolderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FolderImplToJson(
      this,
    );
  }
}

abstract class _Folder implements Folder {
  const factory _Folder(
      {@FolderIdConverter() required final FolderId id,
      required final String emoji,
      required final String title}) = _$FolderImpl;

  factory _Folder.fromJson(Map<String, dynamic> json) = _$FolderImpl.fromJson;

  @override
  @FolderIdConverter()
  FolderId get id;
  @override
  String get emoji;
  @override
  String get title;

  /// Create a copy of Folder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FolderImplCopyWith<_$FolderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
