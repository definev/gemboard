// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ask_board.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AskBoardId _$AskBoardIdFromJson(Map<String, dynamic> json) {
  return _AskBoardId.fromJson(json);
}

/// @nodoc
mixin _$AskBoardId {
  @JsonKey(
      fromJson: AskBoardParentId.fromJson, toJson: AskBoardParentId.toJsonValue)
  AskBoardParentId get parentId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AskBoardIdCopyWith<AskBoardId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AskBoardIdCopyWith<$Res> {
  factory $AskBoardIdCopyWith(
          AskBoardId value, $Res Function(AskBoardId) then) =
      _$AskBoardIdCopyWithImpl<$Res, AskBoardId>;
  @useResult
  $Res call(
      {@JsonKey(
          fromJson: AskBoardParentId.fromJson,
          toJson: AskBoardParentId.toJsonValue)
      AskBoardParentId parentId,
      String id});

  $AskBoardParentIdCopyWith<$Res> get parentId;
}

/// @nodoc
class _$AskBoardIdCopyWithImpl<$Res, $Val extends AskBoardId>
    implements $AskBoardIdCopyWith<$Res> {
  _$AskBoardIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
              as AskBoardParentId,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AskBoardParentIdCopyWith<$Res> get parentId {
    return $AskBoardParentIdCopyWith<$Res>(_value.parentId, (value) {
      return _then(_value.copyWith(parentId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AskBoardIdImplCopyWith<$Res>
    implements $AskBoardIdCopyWith<$Res> {
  factory _$$AskBoardIdImplCopyWith(
          _$AskBoardIdImpl value, $Res Function(_$AskBoardIdImpl) then) =
      __$$AskBoardIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          fromJson: AskBoardParentId.fromJson,
          toJson: AskBoardParentId.toJsonValue)
      AskBoardParentId parentId,
      String id});

  @override
  $AskBoardParentIdCopyWith<$Res> get parentId;
}

/// @nodoc
class __$$AskBoardIdImplCopyWithImpl<$Res>
    extends _$AskBoardIdCopyWithImpl<$Res, _$AskBoardIdImpl>
    implements _$$AskBoardIdImplCopyWith<$Res> {
  __$$AskBoardIdImplCopyWithImpl(
      _$AskBoardIdImpl _value, $Res Function(_$AskBoardIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentId = null,
    Object? id = null,
  }) {
    return _then(_$AskBoardIdImpl(
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as AskBoardParentId,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AskBoardIdImpl implements _AskBoardId {
  const _$AskBoardIdImpl(
      {@JsonKey(
          fromJson: AskBoardParentId.fromJson,
          toJson: AskBoardParentId.toJsonValue)
      this.parentId = const AskBoardParentId(),
      required this.id});

  factory _$AskBoardIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$AskBoardIdImplFromJson(json);

  @override
  @JsonKey(
      fromJson: AskBoardParentId.fromJson, toJson: AskBoardParentId.toJsonValue)
  final AskBoardParentId parentId;
  @override
  final String id;

  @override
  String toString() {
    return 'AskBoardId(parentId: $parentId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AskBoardIdImpl &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, parentId, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AskBoardIdImplCopyWith<_$AskBoardIdImpl> get copyWith =>
      __$$AskBoardIdImplCopyWithImpl<_$AskBoardIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AskBoardIdImplToJson(
      this,
    );
  }
}

abstract class _AskBoardId implements AskBoardId {
  const factory _AskBoardId(
      {@JsonKey(
          fromJson: AskBoardParentId.fromJson,
          toJson: AskBoardParentId.toJsonValue)
      final AskBoardParentId parentId,
      required final String id}) = _$AskBoardIdImpl;

  factory _AskBoardId.fromJson(Map<String, dynamic> json) =
      _$AskBoardIdImpl.fromJson;

  @override
  @JsonKey(
      fromJson: AskBoardParentId.fromJson, toJson: AskBoardParentId.toJsonValue)
  AskBoardParentId get parentId;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$AskBoardIdImplCopyWith<_$AskBoardIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AskBoardParentId _$AskBoardParentIdFromJson(Map<String, dynamic> json) {
  return _AskBoardParentId.fromJson(json);
}

/// @nodoc
mixin _$AskBoardParentId {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AskBoardParentIdCopyWith<$Res> {
  factory $AskBoardParentIdCopyWith(
          AskBoardParentId value, $Res Function(AskBoardParentId) then) =
      _$AskBoardParentIdCopyWithImpl<$Res, AskBoardParentId>;
}

/// @nodoc
class _$AskBoardParentIdCopyWithImpl<$Res, $Val extends AskBoardParentId>
    implements $AskBoardParentIdCopyWith<$Res> {
  _$AskBoardParentIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AskBoardParentIdImplCopyWith<$Res> {
  factory _$$AskBoardParentIdImplCopyWith(_$AskBoardParentIdImpl value,
          $Res Function(_$AskBoardParentIdImpl) then) =
      __$$AskBoardParentIdImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AskBoardParentIdImplCopyWithImpl<$Res>
    extends _$AskBoardParentIdCopyWithImpl<$Res, _$AskBoardParentIdImpl>
    implements _$$AskBoardParentIdImplCopyWith<$Res> {
  __$$AskBoardParentIdImplCopyWithImpl(_$AskBoardParentIdImpl _value,
      $Res Function(_$AskBoardParentIdImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AskBoardParentIdImpl implements _AskBoardParentId {
  const _$AskBoardParentIdImpl();

  factory _$AskBoardParentIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$AskBoardParentIdImplFromJson(json);

  @override
  String toString() {
    return 'AskBoardParentId()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AskBoardParentIdImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$AskBoardParentIdImplToJson(
      this,
    );
  }
}

abstract class _AskBoardParentId implements AskBoardParentId {
  const factory _AskBoardParentId() = _$AskBoardParentIdImpl;

  factory _AskBoardParentId.fromJson(Map<String, dynamic> json) =
      _$AskBoardParentIdImpl.fromJson;
}

AskBoard _$AskBoardFromJson(Map<String, dynamic> json) {
  return _AskBoard.fromJson(json);
}

/// @nodoc
mixin _$AskBoard {
  @JsonKey(fromJson: AskBoardId.fromJson, toJson: AskBoardId.toJsonValue)
  AskBoardId get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AskBoardCopyWith<AskBoard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AskBoardCopyWith<$Res> {
  factory $AskBoardCopyWith(AskBoard value, $Res Function(AskBoard) then) =
      _$AskBoardCopyWithImpl<$Res, AskBoard>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: AskBoardId.fromJson, toJson: AskBoardId.toJsonValue)
      AskBoardId id,
      String title});

  $AskBoardIdCopyWith<$Res> get id;
}

/// @nodoc
class _$AskBoardCopyWithImpl<$Res, $Val extends AskBoard>
    implements $AskBoardCopyWith<$Res> {
  _$AskBoardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as AskBoardId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AskBoardIdCopyWith<$Res> get id {
    return $AskBoardIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AskBoardImplCopyWith<$Res>
    implements $AskBoardCopyWith<$Res> {
  factory _$$AskBoardImplCopyWith(
          _$AskBoardImpl value, $Res Function(_$AskBoardImpl) then) =
      __$$AskBoardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: AskBoardId.fromJson, toJson: AskBoardId.toJsonValue)
      AskBoardId id,
      String title});

  @override
  $AskBoardIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$AskBoardImplCopyWithImpl<$Res>
    extends _$AskBoardCopyWithImpl<$Res, _$AskBoardImpl>
    implements _$$AskBoardImplCopyWith<$Res> {
  __$$AskBoardImplCopyWithImpl(
      _$AskBoardImpl _value, $Res Function(_$AskBoardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$AskBoardImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as AskBoardId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AskBoardImpl implements _AskBoard {
  const _$AskBoardImpl(
      {@JsonKey(fromJson: AskBoardId.fromJson, toJson: AskBoardId.toJsonValue)
      required this.id,
      required this.title});

  factory _$AskBoardImpl.fromJson(Map<String, dynamic> json) =>
      _$$AskBoardImplFromJson(json);

  @override
  @JsonKey(fromJson: AskBoardId.fromJson, toJson: AskBoardId.toJsonValue)
  final AskBoardId id;
  @override
  final String title;

  @override
  String toString() {
    return 'AskBoard(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AskBoardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AskBoardImplCopyWith<_$AskBoardImpl> get copyWith =>
      __$$AskBoardImplCopyWithImpl<_$AskBoardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AskBoardImplToJson(
      this,
    );
  }
}

abstract class _AskBoard implements AskBoard {
  const factory _AskBoard(
      {@JsonKey(fromJson: AskBoardId.fromJson, toJson: AskBoardId.toJsonValue)
      required final AskBoardId id,
      required final String title}) = _$AskBoardImpl;

  factory _AskBoard.fromJson(Map<String, dynamic> json) =
      _$AskBoardImpl.fromJson;

  @override
  @JsonKey(fromJson: AskBoardId.fromJson, toJson: AskBoardId.toJsonValue)
  AskBoardId get id;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$AskBoardImplCopyWith<_$AskBoardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
