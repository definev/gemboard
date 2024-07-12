// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ask_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AskOutput _$AskOutputFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'text':
      return _AskOutputFact.fromJson(json);
    case 'image':
      return _AskOutputImage.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AskOutput',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AskOutput {
  AskIOId get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value, AskIOId id) text,
    required TResult Function(Uri uri, AskIOId id) image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value, AskIOId id)? text,
    TResult? Function(Uri uri, AskIOId id)? image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value, AskIOId id)? text,
    TResult Function(Uri uri, AskIOId id)? image,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AskOutputFact value) text,
    required TResult Function(_AskOutputImage value) image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AskOutputFact value)? text,
    TResult? Function(_AskOutputImage value)? image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AskOutputFact value)? text,
    TResult Function(_AskOutputImage value)? image,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this AskOutput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AskOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AskOutputCopyWith<AskOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AskOutputCopyWith<$Res> {
  factory $AskOutputCopyWith(AskOutput value, $Res Function(AskOutput) then) =
      _$AskOutputCopyWithImpl<$Res, AskOutput>;
  @useResult
  $Res call({AskIOId id});

  $AskIOIdCopyWith<$Res> get id;
}

/// @nodoc
class _$AskOutputCopyWithImpl<$Res, $Val extends AskOutput>
    implements $AskOutputCopyWith<$Res> {
  _$AskOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AskOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as AskIOId,
    ) as $Val);
  }

  /// Create a copy of AskOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AskIOIdCopyWith<$Res> get id {
    return $AskIOIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AskOutputFactImplCopyWith<$Res>
    implements $AskOutputCopyWith<$Res> {
  factory _$$AskOutputFactImplCopyWith(
          _$AskOutputFactImpl value, $Res Function(_$AskOutputFactImpl) then) =
      __$$AskOutputFactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, AskIOId id});

  @override
  $AskIOIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$AskOutputFactImplCopyWithImpl<$Res>
    extends _$AskOutputCopyWithImpl<$Res, _$AskOutputFactImpl>
    implements _$$AskOutputFactImplCopyWith<$Res> {
  __$$AskOutputFactImplCopyWithImpl(
      _$AskOutputFactImpl _value, $Res Function(_$AskOutputFactImpl) _then)
      : super(_value, _then);

  /// Create a copy of AskOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? id = null,
  }) {
    return _then(_$AskOutputFactImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as AskIOId,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AskOutputFactImpl implements _AskOutputFact {
  const _$AskOutputFactImpl(this.value, {required this.id, final String? $type})
      : $type = $type ?? 'text';

  factory _$AskOutputFactImpl.fromJson(Map<String, dynamic> json) =>
      _$$AskOutputFactImplFromJson(json);

  @override
  final String value;
  @override
  final AskIOId id;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AskOutput.text(value: $value, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AskOutputFactImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, id);

  /// Create a copy of AskOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AskOutputFactImplCopyWith<_$AskOutputFactImpl> get copyWith =>
      __$$AskOutputFactImplCopyWithImpl<_$AskOutputFactImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value, AskIOId id) text,
    required TResult Function(Uri uri, AskIOId id) image,
  }) {
    return text(value, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value, AskIOId id)? text,
    TResult? Function(Uri uri, AskIOId id)? image,
  }) {
    return text?.call(value, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value, AskIOId id)? text,
    TResult Function(Uri uri, AskIOId id)? image,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(value, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AskOutputFact value) text,
    required TResult Function(_AskOutputImage value) image,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AskOutputFact value)? text,
    TResult? Function(_AskOutputImage value)? image,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AskOutputFact value)? text,
    TResult Function(_AskOutputImage value)? image,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AskOutputFactImplToJson(
      this,
    );
  }
}

abstract class _AskOutputFact implements AskOutput {
  const factory _AskOutputFact(final String value,
      {required final AskIOId id}) = _$AskOutputFactImpl;

  factory _AskOutputFact.fromJson(Map<String, dynamic> json) =
      _$AskOutputFactImpl.fromJson;

  String get value;
  @override
  AskIOId get id;

  /// Create a copy of AskOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AskOutputFactImplCopyWith<_$AskOutputFactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AskOutputImageImplCopyWith<$Res>
    implements $AskOutputCopyWith<$Res> {
  factory _$$AskOutputImageImplCopyWith(_$AskOutputImageImpl value,
          $Res Function(_$AskOutputImageImpl) then) =
      __$$AskOutputImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uri uri, AskIOId id});

  @override
  $AskIOIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$AskOutputImageImplCopyWithImpl<$Res>
    extends _$AskOutputCopyWithImpl<$Res, _$AskOutputImageImpl>
    implements _$$AskOutputImageImplCopyWith<$Res> {
  __$$AskOutputImageImplCopyWithImpl(
      _$AskOutputImageImpl _value, $Res Function(_$AskOutputImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of AskOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? id = null,
  }) {
    return _then(_$AskOutputImageImpl(
      null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as AskIOId,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AskOutputImageImpl implements _AskOutputImage {
  const _$AskOutputImageImpl(this.uri, {required this.id, final String? $type})
      : $type = $type ?? 'image';

  factory _$AskOutputImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$AskOutputImageImplFromJson(json);

  @override
  final Uri uri;
  @override
  final AskIOId id;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AskOutput.image(uri: $uri, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AskOutputImageImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uri, id);

  /// Create a copy of AskOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AskOutputImageImplCopyWith<_$AskOutputImageImpl> get copyWith =>
      __$$AskOutputImageImplCopyWithImpl<_$AskOutputImageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value, AskIOId id) text,
    required TResult Function(Uri uri, AskIOId id) image,
  }) {
    return image(uri, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value, AskIOId id)? text,
    TResult? Function(Uri uri, AskIOId id)? image,
  }) {
    return image?.call(uri, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value, AskIOId id)? text,
    TResult Function(Uri uri, AskIOId id)? image,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(uri, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AskOutputFact value) text,
    required TResult Function(_AskOutputImage value) image,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AskOutputFact value)? text,
    TResult? Function(_AskOutputImage value)? image,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AskOutputFact value)? text,
    TResult Function(_AskOutputImage value)? image,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AskOutputImageImplToJson(
      this,
    );
  }
}

abstract class _AskOutputImage implements AskOutput {
  const factory _AskOutputImage(final Uri uri, {required final AskIOId id}) =
      _$AskOutputImageImpl;

  factory _AskOutputImage.fromJson(Map<String, dynamic> json) =
      _$AskOutputImageImpl.fromJson;

  Uri get uri;
  @override
  AskIOId get id;

  /// Create a copy of AskOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AskOutputImageImplCopyWith<_$AskOutputImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
