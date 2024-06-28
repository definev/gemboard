// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ask_io_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AskIOId _$AskIOIdFromJson(Map<String, dynamic> json) {
  return _AskIOId.fromJson(json);
}

/// @nodoc
mixin _$AskIOId {
  AskIOParentId get parentId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AskIOIdCopyWith<AskIOId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AskIOIdCopyWith<$Res> {
  factory $AskIOIdCopyWith(AskIOId value, $Res Function(AskIOId) then) =
      _$AskIOIdCopyWithImpl<$Res, AskIOId>;
  @useResult
  $Res call({AskIOParentId parentId, String id});

  $AskIOParentIdCopyWith<$Res> get parentId;
}

/// @nodoc
class _$AskIOIdCopyWithImpl<$Res, $Val extends AskIOId>
    implements $AskIOIdCopyWith<$Res> {
  _$AskIOIdCopyWithImpl(this._value, this._then);

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
              as AskIOParentId,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AskIOParentIdCopyWith<$Res> get parentId {
    return $AskIOParentIdCopyWith<$Res>(_value.parentId, (value) {
      return _then(_value.copyWith(parentId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AskIOIdImplCopyWith<$Res> implements $AskIOIdCopyWith<$Res> {
  factory _$$AskIOIdImplCopyWith(
          _$AskIOIdImpl value, $Res Function(_$AskIOIdImpl) then) =
      __$$AskIOIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AskIOParentId parentId, String id});

  @override
  $AskIOParentIdCopyWith<$Res> get parentId;
}

/// @nodoc
class __$$AskIOIdImplCopyWithImpl<$Res>
    extends _$AskIOIdCopyWithImpl<$Res, _$AskIOIdImpl>
    implements _$$AskIOIdImplCopyWith<$Res> {
  __$$AskIOIdImplCopyWithImpl(
      _$AskIOIdImpl _value, $Res Function(_$AskIOIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentId = null,
    Object? id = null,
  }) {
    return _then(_$AskIOIdImpl(
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as AskIOParentId,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AskIOIdImpl implements _AskIOId {
  const _$AskIOIdImpl({required this.parentId, required this.id});

  factory _$AskIOIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$AskIOIdImplFromJson(json);

  @override
  final AskIOParentId parentId;
  @override
  final String id;

  @override
  String toString() {
    return 'AskIOId(parentId: $parentId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AskIOIdImpl &&
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
  _$$AskIOIdImplCopyWith<_$AskIOIdImpl> get copyWith =>
      __$$AskIOIdImplCopyWithImpl<_$AskIOIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AskIOIdImplToJson(
      this,
    );
  }
}

abstract class _AskIOId implements AskIOId {
  const factory _AskIOId(
      {required final AskIOParentId parentId,
      required final String id}) = _$AskIOIdImpl;

  factory _AskIOId.fromJson(Map<String, dynamic> json) = _$AskIOIdImpl.fromJson;

  @override
  AskIOParentId get parentId;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$AskIOIdImplCopyWith<_$AskIOIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AskIOParentId _$AskIOParentIdFromJson(Map<String, dynamic> json) {
  return _AskIOParentId.fromJson(json);
}

/// @nodoc
mixin _$AskIOParentId {
  String get askBoardId => throw _privateConstructorUsedError;
  String get askPageId => throw _privateConstructorUsedError;
  String get askCellId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AskIOParentIdCopyWith<AskIOParentId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AskIOParentIdCopyWith<$Res> {
  factory $AskIOParentIdCopyWith(
          AskIOParentId value, $Res Function(AskIOParentId) then) =
      _$AskIOParentIdCopyWithImpl<$Res, AskIOParentId>;
  @useResult
  $Res call({String askBoardId, String askPageId, String askCellId});
}

/// @nodoc
class _$AskIOParentIdCopyWithImpl<$Res, $Val extends AskIOParentId>
    implements $AskIOParentIdCopyWith<$Res> {
  _$AskIOParentIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? askBoardId = null,
    Object? askPageId = null,
    Object? askCellId = null,
  }) {
    return _then(_value.copyWith(
      askBoardId: null == askBoardId
          ? _value.askBoardId
          : askBoardId // ignore: cast_nullable_to_non_nullable
              as String,
      askPageId: null == askPageId
          ? _value.askPageId
          : askPageId // ignore: cast_nullable_to_non_nullable
              as String,
      askCellId: null == askCellId
          ? _value.askCellId
          : askCellId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AskIOParentIdImplCopyWith<$Res>
    implements $AskIOParentIdCopyWith<$Res> {
  factory _$$AskIOParentIdImplCopyWith(
          _$AskIOParentIdImpl value, $Res Function(_$AskIOParentIdImpl) then) =
      __$$AskIOParentIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String askBoardId, String askPageId, String askCellId});
}

/// @nodoc
class __$$AskIOParentIdImplCopyWithImpl<$Res>
    extends _$AskIOParentIdCopyWithImpl<$Res, _$AskIOParentIdImpl>
    implements _$$AskIOParentIdImplCopyWith<$Res> {
  __$$AskIOParentIdImplCopyWithImpl(
      _$AskIOParentIdImpl _value, $Res Function(_$AskIOParentIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? askBoardId = null,
    Object? askPageId = null,
    Object? askCellId = null,
  }) {
    return _then(_$AskIOParentIdImpl(
      askBoardId: null == askBoardId
          ? _value.askBoardId
          : askBoardId // ignore: cast_nullable_to_non_nullable
              as String,
      askPageId: null == askPageId
          ? _value.askPageId
          : askPageId // ignore: cast_nullable_to_non_nullable
              as String,
      askCellId: null == askCellId
          ? _value.askCellId
          : askCellId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AskIOParentIdImpl implements _AskIOParentId {
  const _$AskIOParentIdImpl(
      {required this.askBoardId,
      required this.askPageId,
      required this.askCellId});

  factory _$AskIOParentIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$AskIOParentIdImplFromJson(json);

  @override
  final String askBoardId;
  @override
  final String askPageId;
  @override
  final String askCellId;

  @override
  String toString() {
    return 'AskIOParentId(askBoardId: $askBoardId, askPageId: $askPageId, askCellId: $askCellId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AskIOParentIdImpl &&
            (identical(other.askBoardId, askBoardId) ||
                other.askBoardId == askBoardId) &&
            (identical(other.askPageId, askPageId) ||
                other.askPageId == askPageId) &&
            (identical(other.askCellId, askCellId) ||
                other.askCellId == askCellId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, askBoardId, askPageId, askCellId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AskIOParentIdImplCopyWith<_$AskIOParentIdImpl> get copyWith =>
      __$$AskIOParentIdImplCopyWithImpl<_$AskIOParentIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AskIOParentIdImplToJson(
      this,
    );
  }
}

abstract class _AskIOParentId implements AskIOParentId {
  const factory _AskIOParentId(
      {required final String askBoardId,
      required final String askPageId,
      required final String askCellId}) = _$AskIOParentIdImpl;

  factory _AskIOParentId.fromJson(Map<String, dynamic> json) =
      _$AskIOParentIdImpl.fromJson;

  @override
  String get askBoardId;
  @override
  String get askPageId;
  @override
  String get askCellId;
  @override
  @JsonKey(ignore: true)
  _$$AskIOParentIdImplCopyWith<_$AskIOParentIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
