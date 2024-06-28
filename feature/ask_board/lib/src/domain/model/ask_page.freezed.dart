// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ask_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AskPageId _$AskPageIdFromJson(Map<String, dynamic> json) {
  return _AskPageId.fromJson(json);
}

/// @nodoc
mixin _$AskPageId {
  @JsonKey(readValue: AskPageParentId.readValue)
  AskPageParentId get parentId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AskPageIdCopyWith<AskPageId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AskPageIdCopyWith<$Res> {
  factory $AskPageIdCopyWith(AskPageId value, $Res Function(AskPageId) then) =
      _$AskPageIdCopyWithImpl<$Res, AskPageId>;
  @useResult
  $Res call(
      {@JsonKey(readValue: AskPageParentId.readValue) AskPageParentId parentId,
      String id});

  $AskPageParentIdCopyWith<$Res> get parentId;
}

/// @nodoc
class _$AskPageIdCopyWithImpl<$Res, $Val extends AskPageId>
    implements $AskPageIdCopyWith<$Res> {
  _$AskPageIdCopyWithImpl(this._value, this._then);

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
              as AskPageParentId,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AskPageParentIdCopyWith<$Res> get parentId {
    return $AskPageParentIdCopyWith<$Res>(_value.parentId, (value) {
      return _then(_value.copyWith(parentId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AskPageIdImplCopyWith<$Res>
    implements $AskPageIdCopyWith<$Res> {
  factory _$$AskPageIdImplCopyWith(
          _$AskPageIdImpl value, $Res Function(_$AskPageIdImpl) then) =
      __$$AskPageIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(readValue: AskPageParentId.readValue) AskPageParentId parentId,
      String id});

  @override
  $AskPageParentIdCopyWith<$Res> get parentId;
}

/// @nodoc
class __$$AskPageIdImplCopyWithImpl<$Res>
    extends _$AskPageIdCopyWithImpl<$Res, _$AskPageIdImpl>
    implements _$$AskPageIdImplCopyWith<$Res> {
  __$$AskPageIdImplCopyWithImpl(
      _$AskPageIdImpl _value, $Res Function(_$AskPageIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentId = null,
    Object? id = null,
  }) {
    return _then(_$AskPageIdImpl(
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as AskPageParentId,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AskPageIdImpl implements _AskPageId {
  const _$AskPageIdImpl(
      {@JsonKey(readValue: AskPageParentId.readValue) required this.parentId,
      required this.id});

  factory _$AskPageIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$AskPageIdImplFromJson(json);

  @override
  @JsonKey(readValue: AskPageParentId.readValue)
  final AskPageParentId parentId;
  @override
  final String id;

  @override
  String toString() {
    return 'AskPageId(parentId: $parentId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AskPageIdImpl &&
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
  _$$AskPageIdImplCopyWith<_$AskPageIdImpl> get copyWith =>
      __$$AskPageIdImplCopyWithImpl<_$AskPageIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AskPageIdImplToJson(
      this,
    );
  }
}

abstract class _AskPageId implements AskPageId {
  const factory _AskPageId(
      {@JsonKey(readValue: AskPageParentId.readValue)
      required final AskPageParentId parentId,
      required final String id}) = _$AskPageIdImpl;

  factory _AskPageId.fromJson(Map<String, dynamic> json) =
      _$AskPageIdImpl.fromJson;

  @override
  @JsonKey(readValue: AskPageParentId.readValue)
  AskPageParentId get parentId;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$AskPageIdImplCopyWith<_$AskPageIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AskPageParentId _$AskPageParentIdFromJson(Map<String, dynamic> json) {
  return _AskPageParentId.fromJson(json);
}

/// @nodoc
mixin _$AskPageParentId {
  String get askBoardId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AskPageParentIdCopyWith<AskPageParentId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AskPageParentIdCopyWith<$Res> {
  factory $AskPageParentIdCopyWith(
          AskPageParentId value, $Res Function(AskPageParentId) then) =
      _$AskPageParentIdCopyWithImpl<$Res, AskPageParentId>;
  @useResult
  $Res call({String askBoardId});
}

/// @nodoc
class _$AskPageParentIdCopyWithImpl<$Res, $Val extends AskPageParentId>
    implements $AskPageParentIdCopyWith<$Res> {
  _$AskPageParentIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? askBoardId = null,
  }) {
    return _then(_value.copyWith(
      askBoardId: null == askBoardId
          ? _value.askBoardId
          : askBoardId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AskPageParentIdImplCopyWith<$Res>
    implements $AskPageParentIdCopyWith<$Res> {
  factory _$$AskPageParentIdImplCopyWith(_$AskPageParentIdImpl value,
          $Res Function(_$AskPageParentIdImpl) then) =
      __$$AskPageParentIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String askBoardId});
}

/// @nodoc
class __$$AskPageParentIdImplCopyWithImpl<$Res>
    extends _$AskPageParentIdCopyWithImpl<$Res, _$AskPageParentIdImpl>
    implements _$$AskPageParentIdImplCopyWith<$Res> {
  __$$AskPageParentIdImplCopyWithImpl(
      _$AskPageParentIdImpl _value, $Res Function(_$AskPageParentIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? askBoardId = null,
  }) {
    return _then(_$AskPageParentIdImpl(
      askBoardId: null == askBoardId
          ? _value.askBoardId
          : askBoardId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AskPageParentIdImpl implements _AskPageParentId {
  const _$AskPageParentIdImpl({required this.askBoardId});

  factory _$AskPageParentIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$AskPageParentIdImplFromJson(json);

  @override
  final String askBoardId;

  @override
  String toString() {
    return 'AskPageParentId(askBoardId: $askBoardId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AskPageParentIdImpl &&
            (identical(other.askBoardId, askBoardId) ||
                other.askBoardId == askBoardId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, askBoardId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AskPageParentIdImplCopyWith<_$AskPageParentIdImpl> get copyWith =>
      __$$AskPageParentIdImplCopyWithImpl<_$AskPageParentIdImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AskPageParentIdImplToJson(
      this,
    );
  }
}

abstract class _AskPageParentId implements AskPageParentId {
  const factory _AskPageParentId({required final String askBoardId}) =
      _$AskPageParentIdImpl;

  factory _AskPageParentId.fromJson(Map<String, dynamic> json) =
      _$AskPageParentIdImpl.fromJson;

  @override
  String get askBoardId;
  @override
  @JsonKey(ignore: true)
  _$$AskPageParentIdImplCopyWith<_$AskPageParentIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AskPage _$AskPageFromJson(Map<String, dynamic> json) {
  return _AskPage.fromJson(json);
}

/// @nodoc
mixin _$AskPage {
  @JsonKey(readValue: AskPageId.readValue)
  AskPageId get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AskPageCopyWith<AskPage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AskPageCopyWith<$Res> {
  factory $AskPageCopyWith(AskPage value, $Res Function(AskPage) then) =
      _$AskPageCopyWithImpl<$Res, AskPage>;
  @useResult
  $Res call(
      {@JsonKey(readValue: AskPageId.readValue) AskPageId id, String title});

  $AskPageIdCopyWith<$Res> get id;
}

/// @nodoc
class _$AskPageCopyWithImpl<$Res, $Val extends AskPage>
    implements $AskPageCopyWith<$Res> {
  _$AskPageCopyWithImpl(this._value, this._then);

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
              as AskPageId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AskPageIdCopyWith<$Res> get id {
    return $AskPageIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AskPageImplCopyWith<$Res> implements $AskPageCopyWith<$Res> {
  factory _$$AskPageImplCopyWith(
          _$AskPageImpl value, $Res Function(_$AskPageImpl) then) =
      __$$AskPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(readValue: AskPageId.readValue) AskPageId id, String title});

  @override
  $AskPageIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$AskPageImplCopyWithImpl<$Res>
    extends _$AskPageCopyWithImpl<$Res, _$AskPageImpl>
    implements _$$AskPageImplCopyWith<$Res> {
  __$$AskPageImplCopyWithImpl(
      _$AskPageImpl _value, $Res Function(_$AskPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$AskPageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as AskPageId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AskPageImpl implements _AskPage {
  const _$AskPageImpl(
      {@JsonKey(readValue: AskPageId.readValue) required this.id,
      required this.title});

  factory _$AskPageImpl.fromJson(Map<String, dynamic> json) =>
      _$$AskPageImplFromJson(json);

  @override
  @JsonKey(readValue: AskPageId.readValue)
  final AskPageId id;
  @override
  final String title;

  @override
  String toString() {
    return 'AskPage(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AskPageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AskPageImplCopyWith<_$AskPageImpl> get copyWith =>
      __$$AskPageImplCopyWithImpl<_$AskPageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AskPageImplToJson(
      this,
    );
  }
}

abstract class _AskPage implements AskPage {
  const factory _AskPage(
      {@JsonKey(readValue: AskPageId.readValue) required final AskPageId id,
      required final String title}) = _$AskPageImpl;

  factory _AskPage.fromJson(Map<String, dynamic> json) = _$AskPageImpl.fromJson;

  @override
  @JsonKey(readValue: AskPageId.readValue)
  AskPageId get id;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$AskPageImplCopyWith<_$AskPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
