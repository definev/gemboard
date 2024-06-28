// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ask_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AskInput _$AskInputFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'fact':
      return _Fact.fromJson(json);
    case 'context':
      return _Context.fromJson(json);
    case 'image':
      return _Image.fromJson(json);
    case 'instruction':
      return _Instruction.fromJson(json);
    case 'factRef':
      return _FactRef.fromJson(json);
    case 'contextRef':
      return _ContextRef.fromJson(json);
    case 'imageRef':
      return _ImageRef.fromJson(json);
    case 'instructionRef':
      return _InstructionRef.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AskInput',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AskInput {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) fact,
    required TResult Function(String value) context,
    required TResult Function(Uri uri) image,
    required TResult Function(String value) instruction,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        factRef,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        contextRef,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        imageRef,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        instructionRef,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? fact,
    TResult? Function(String value)? context,
    TResult? Function(Uri uri)? image,
    TResult? Function(String value)? instruction,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        factRef,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        contextRef,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        imageRef,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        instructionRef,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? fact,
    TResult Function(String value)? context,
    TResult Function(Uri uri)? image,
    TResult Function(String value)? instruction,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        factRef,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        contextRef,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        imageRef,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        instructionRef,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fact value) fact,
    required TResult Function(_Context value) context,
    required TResult Function(_Image value) image,
    required TResult Function(_Instruction value) instruction,
    required TResult Function(_FactRef value) factRef,
    required TResult Function(_ContextRef value) contextRef,
    required TResult Function(_ImageRef value) imageRef,
    required TResult Function(_InstructionRef value) instructionRef,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fact value)? fact,
    TResult? Function(_Context value)? context,
    TResult? Function(_Image value)? image,
    TResult? Function(_Instruction value)? instruction,
    TResult? Function(_FactRef value)? factRef,
    TResult? Function(_ContextRef value)? contextRef,
    TResult? Function(_ImageRef value)? imageRef,
    TResult? Function(_InstructionRef value)? instructionRef,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fact value)? fact,
    TResult Function(_Context value)? context,
    TResult Function(_Image value)? image,
    TResult Function(_Instruction value)? instruction,
    TResult Function(_FactRef value)? factRef,
    TResult Function(_ContextRef value)? contextRef,
    TResult Function(_ImageRef value)? imageRef,
    TResult Function(_InstructionRef value)? instructionRef,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AskInputCopyWith<$Res> {
  factory $AskInputCopyWith(AskInput value, $Res Function(AskInput) then) =
      _$AskInputCopyWithImpl<$Res, AskInput>;
}

/// @nodoc
class _$AskInputCopyWithImpl<$Res, $Val extends AskInput>
    implements $AskInputCopyWith<$Res> {
  _$AskInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FactImplCopyWith<$Res> {
  factory _$$FactImplCopyWith(
          _$FactImpl value, $Res Function(_$FactImpl) then) =
      __$$FactImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$FactImplCopyWithImpl<$Res>
    extends _$AskInputCopyWithImpl<$Res, _$FactImpl>
    implements _$$FactImplCopyWith<$Res> {
  __$$FactImplCopyWithImpl(_$FactImpl _value, $Res Function(_$FactImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$FactImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FactImpl implements _Fact {
  const _$FactImpl(this.value, {final String? $type}) : $type = $type ?? 'fact';

  factory _$FactImpl.fromJson(Map<String, dynamic> json) =>
      _$$FactImplFromJson(json);

  @override
  final String value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AskInput.fact(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FactImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FactImplCopyWith<_$FactImpl> get copyWith =>
      __$$FactImplCopyWithImpl<_$FactImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) fact,
    required TResult Function(String value) context,
    required TResult Function(Uri uri) image,
    required TResult Function(String value) instruction,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        factRef,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        contextRef,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        imageRef,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        instructionRef,
  }) {
    return fact(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? fact,
    TResult? Function(String value)? context,
    TResult? Function(Uri uri)? image,
    TResult? Function(String value)? instruction,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        factRef,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        contextRef,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        imageRef,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        instructionRef,
  }) {
    return fact?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? fact,
    TResult Function(String value)? context,
    TResult Function(Uri uri)? image,
    TResult Function(String value)? instruction,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        factRef,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        contextRef,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        imageRef,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        instructionRef,
    required TResult orElse(),
  }) {
    if (fact != null) {
      return fact(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fact value) fact,
    required TResult Function(_Context value) context,
    required TResult Function(_Image value) image,
    required TResult Function(_Instruction value) instruction,
    required TResult Function(_FactRef value) factRef,
    required TResult Function(_ContextRef value) contextRef,
    required TResult Function(_ImageRef value) imageRef,
    required TResult Function(_InstructionRef value) instructionRef,
  }) {
    return fact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fact value)? fact,
    TResult? Function(_Context value)? context,
    TResult? Function(_Image value)? image,
    TResult? Function(_Instruction value)? instruction,
    TResult? Function(_FactRef value)? factRef,
    TResult? Function(_ContextRef value)? contextRef,
    TResult? Function(_ImageRef value)? imageRef,
    TResult? Function(_InstructionRef value)? instructionRef,
  }) {
    return fact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fact value)? fact,
    TResult Function(_Context value)? context,
    TResult Function(_Image value)? image,
    TResult Function(_Instruction value)? instruction,
    TResult Function(_FactRef value)? factRef,
    TResult Function(_ContextRef value)? contextRef,
    TResult Function(_ImageRef value)? imageRef,
    TResult Function(_InstructionRef value)? instructionRef,
    required TResult orElse(),
  }) {
    if (fact != null) {
      return fact(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FactImplToJson(
      this,
    );
  }
}

abstract class _Fact implements AskInput {
  const factory _Fact(final String value) = _$FactImpl;

  factory _Fact.fromJson(Map<String, dynamic> json) = _$FactImpl.fromJson;

  String get value;
  @JsonKey(ignore: true)
  _$$FactImplCopyWith<_$FactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContextImplCopyWith<$Res> {
  factory _$$ContextImplCopyWith(
          _$ContextImpl value, $Res Function(_$ContextImpl) then) =
      __$$ContextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$ContextImplCopyWithImpl<$Res>
    extends _$AskInputCopyWithImpl<$Res, _$ContextImpl>
    implements _$$ContextImplCopyWith<$Res> {
  __$$ContextImplCopyWithImpl(
      _$ContextImpl _value, $Res Function(_$ContextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ContextImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContextImpl implements _Context {
  const _$ContextImpl(this.value, {final String? $type})
      : $type = $type ?? 'context';

  factory _$ContextImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContextImplFromJson(json);

  @override
  final String value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AskInput.context(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContextImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContextImplCopyWith<_$ContextImpl> get copyWith =>
      __$$ContextImplCopyWithImpl<_$ContextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) fact,
    required TResult Function(String value) context,
    required TResult Function(Uri uri) image,
    required TResult Function(String value) instruction,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        factRef,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        contextRef,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        imageRef,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        instructionRef,
  }) {
    return context(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? fact,
    TResult? Function(String value)? context,
    TResult? Function(Uri uri)? image,
    TResult? Function(String value)? instruction,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        factRef,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        contextRef,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        imageRef,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        instructionRef,
  }) {
    return context?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? fact,
    TResult Function(String value)? context,
    TResult Function(Uri uri)? image,
    TResult Function(String value)? instruction,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        factRef,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        contextRef,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        imageRef,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        instructionRef,
    required TResult orElse(),
  }) {
    if (context != null) {
      return context(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fact value) fact,
    required TResult Function(_Context value) context,
    required TResult Function(_Image value) image,
    required TResult Function(_Instruction value) instruction,
    required TResult Function(_FactRef value) factRef,
    required TResult Function(_ContextRef value) contextRef,
    required TResult Function(_ImageRef value) imageRef,
    required TResult Function(_InstructionRef value) instructionRef,
  }) {
    return context(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fact value)? fact,
    TResult? Function(_Context value)? context,
    TResult? Function(_Image value)? image,
    TResult? Function(_Instruction value)? instruction,
    TResult? Function(_FactRef value)? factRef,
    TResult? Function(_ContextRef value)? contextRef,
    TResult? Function(_ImageRef value)? imageRef,
    TResult? Function(_InstructionRef value)? instructionRef,
  }) {
    return context?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fact value)? fact,
    TResult Function(_Context value)? context,
    TResult Function(_Image value)? image,
    TResult Function(_Instruction value)? instruction,
    TResult Function(_FactRef value)? factRef,
    TResult Function(_ContextRef value)? contextRef,
    TResult Function(_ImageRef value)? imageRef,
    TResult Function(_InstructionRef value)? instructionRef,
    required TResult orElse(),
  }) {
    if (context != null) {
      return context(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ContextImplToJson(
      this,
    );
  }
}

abstract class _Context implements AskInput {
  const factory _Context(final String value) = _$ContextImpl;

  factory _Context.fromJson(Map<String, dynamic> json) = _$ContextImpl.fromJson;

  String get value;
  @JsonKey(ignore: true)
  _$$ContextImplCopyWith<_$ContextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageImplCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
          _$ImageImpl value, $Res Function(_$ImageImpl) then) =
      __$$ImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uri uri});
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$AskInputCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
      _$ImageImpl _value, $Res Function(_$ImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
  }) {
    return _then(_$ImageImpl(
      null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageImpl implements _Image {
  const _$ImageImpl(this.uri, {final String? $type}) : $type = $type ?? 'image';

  factory _$ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageImplFromJson(json);

  @override
  final Uri uri;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AskInput.image(uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) fact,
    required TResult Function(String value) context,
    required TResult Function(Uri uri) image,
    required TResult Function(String value) instruction,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        factRef,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        contextRef,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        imageRef,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        instructionRef,
  }) {
    return image(uri);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? fact,
    TResult? Function(String value)? context,
    TResult? Function(Uri uri)? image,
    TResult? Function(String value)? instruction,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        factRef,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        contextRef,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        imageRef,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        instructionRef,
  }) {
    return image?.call(uri);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? fact,
    TResult Function(String value)? context,
    TResult Function(Uri uri)? image,
    TResult Function(String value)? instruction,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        factRef,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        contextRef,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        imageRef,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        instructionRef,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(uri);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fact value) fact,
    required TResult Function(_Context value) context,
    required TResult Function(_Image value) image,
    required TResult Function(_Instruction value) instruction,
    required TResult Function(_FactRef value) factRef,
    required TResult Function(_ContextRef value) contextRef,
    required TResult Function(_ImageRef value) imageRef,
    required TResult Function(_InstructionRef value) instructionRef,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fact value)? fact,
    TResult? Function(_Context value)? context,
    TResult? Function(_Image value)? image,
    TResult? Function(_Instruction value)? instruction,
    TResult? Function(_FactRef value)? factRef,
    TResult? Function(_ContextRef value)? contextRef,
    TResult? Function(_ImageRef value)? imageRef,
    TResult? Function(_InstructionRef value)? instructionRef,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fact value)? fact,
    TResult Function(_Context value)? context,
    TResult Function(_Image value)? image,
    TResult Function(_Instruction value)? instruction,
    TResult Function(_FactRef value)? factRef,
    TResult Function(_ContextRef value)? contextRef,
    TResult Function(_ImageRef value)? imageRef,
    TResult Function(_InstructionRef value)? instructionRef,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageImplToJson(
      this,
    );
  }
}

abstract class _Image implements AskInput {
  const factory _Image(final Uri uri) = _$ImageImpl;

  factory _Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  Uri get uri;
  @JsonKey(ignore: true)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InstructionImplCopyWith<$Res> {
  factory _$$InstructionImplCopyWith(
          _$InstructionImpl value, $Res Function(_$InstructionImpl) then) =
      __$$InstructionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$InstructionImplCopyWithImpl<$Res>
    extends _$AskInputCopyWithImpl<$Res, _$InstructionImpl>
    implements _$$InstructionImplCopyWith<$Res> {
  __$$InstructionImplCopyWithImpl(
      _$InstructionImpl _value, $Res Function(_$InstructionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$InstructionImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InstructionImpl implements _Instruction {
  const _$InstructionImpl(this.value, {final String? $type})
      : $type = $type ?? 'instruction';

  factory _$InstructionImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstructionImplFromJson(json);

  @override
  final String value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AskInput.instruction(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstructionImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InstructionImplCopyWith<_$InstructionImpl> get copyWith =>
      __$$InstructionImplCopyWithImpl<_$InstructionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) fact,
    required TResult Function(String value) context,
    required TResult Function(Uri uri) image,
    required TResult Function(String value) instruction,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        factRef,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        contextRef,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        imageRef,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        instructionRef,
  }) {
    return instruction(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? fact,
    TResult? Function(String value)? context,
    TResult? Function(Uri uri)? image,
    TResult? Function(String value)? instruction,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        factRef,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        contextRef,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        imageRef,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        instructionRef,
  }) {
    return instruction?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? fact,
    TResult Function(String value)? context,
    TResult Function(Uri uri)? image,
    TResult Function(String value)? instruction,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        factRef,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        contextRef,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        imageRef,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        instructionRef,
    required TResult orElse(),
  }) {
    if (instruction != null) {
      return instruction(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fact value) fact,
    required TResult Function(_Context value) context,
    required TResult Function(_Image value) image,
    required TResult Function(_Instruction value) instruction,
    required TResult Function(_FactRef value) factRef,
    required TResult Function(_ContextRef value) contextRef,
    required TResult Function(_ImageRef value) imageRef,
    required TResult Function(_InstructionRef value) instructionRef,
  }) {
    return instruction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fact value)? fact,
    TResult? Function(_Context value)? context,
    TResult? Function(_Image value)? image,
    TResult? Function(_Instruction value)? instruction,
    TResult? Function(_FactRef value)? factRef,
    TResult? Function(_ContextRef value)? contextRef,
    TResult? Function(_ImageRef value)? imageRef,
    TResult? Function(_InstructionRef value)? instructionRef,
  }) {
    return instruction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fact value)? fact,
    TResult Function(_Context value)? context,
    TResult Function(_Image value)? image,
    TResult Function(_Instruction value)? instruction,
    TResult Function(_FactRef value)? factRef,
    TResult Function(_ContextRef value)? contextRef,
    TResult Function(_ImageRef value)? imageRef,
    TResult Function(_InstructionRef value)? instructionRef,
    required TResult orElse(),
  }) {
    if (instruction != null) {
      return instruction(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InstructionImplToJson(
      this,
    );
  }
}

abstract class _Instruction implements AskInput {
  const factory _Instruction(final String value) = _$InstructionImpl;

  factory _Instruction.fromJson(Map<String, dynamic> json) =
      _$InstructionImpl.fromJson;

  String get value;
  @JsonKey(ignore: true)
  _$$InstructionImplCopyWith<_$InstructionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FactRefImplCopyWith<$Res> {
  factory _$$FactRefImplCopyWith(
          _$FactRefImpl value, $Res Function(_$FactRefImpl) then) =
      __$$FactRefImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId});

  $AskIOIdCopyWith<$Res> get askIOId;
}

/// @nodoc
class __$$FactRefImplCopyWithImpl<$Res>
    extends _$AskInputCopyWithImpl<$Res, _$FactRefImpl>
    implements _$$FactRefImplCopyWith<$Res> {
  __$$FactRefImplCopyWithImpl(
      _$FactRefImpl _value, $Res Function(_$FactRefImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? askIOId = null,
  }) {
    return _then(_$FactRefImpl(
      askIOId: null == askIOId
          ? _value.askIOId
          : askIOId // ignore: cast_nullable_to_non_nullable
              as AskIOId,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AskIOIdCopyWith<$Res> get askIOId {
    return $AskIOIdCopyWith<$Res>(_value.askIOId, (value) {
      return _then(_value.copyWith(askIOId: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FactRefImpl implements _FactRef {
  const _$FactRefImpl(
      {@JsonKey(readValue: AskIOId.readValue) required this.askIOId,
      final String? $type})
      : $type = $type ?? 'factRef';

  factory _$FactRefImpl.fromJson(Map<String, dynamic> json) =>
      _$$FactRefImplFromJson(json);

  @override
  @JsonKey(readValue: AskIOId.readValue)
  final AskIOId askIOId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AskInput.factRef(askIOId: $askIOId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FactRefImpl &&
            (identical(other.askIOId, askIOId) || other.askIOId == askIOId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, askIOId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FactRefImplCopyWith<_$FactRefImpl> get copyWith =>
      __$$FactRefImplCopyWithImpl<_$FactRefImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) fact,
    required TResult Function(String value) context,
    required TResult Function(Uri uri) image,
    required TResult Function(String value) instruction,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        factRef,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        contextRef,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        imageRef,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        instructionRef,
  }) {
    return factRef(askIOId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? fact,
    TResult? Function(String value)? context,
    TResult? Function(Uri uri)? image,
    TResult? Function(String value)? instruction,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        factRef,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        contextRef,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        imageRef,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        instructionRef,
  }) {
    return factRef?.call(askIOId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? fact,
    TResult Function(String value)? context,
    TResult Function(Uri uri)? image,
    TResult Function(String value)? instruction,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        factRef,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        contextRef,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        imageRef,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        instructionRef,
    required TResult orElse(),
  }) {
    if (factRef != null) {
      return factRef(askIOId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fact value) fact,
    required TResult Function(_Context value) context,
    required TResult Function(_Image value) image,
    required TResult Function(_Instruction value) instruction,
    required TResult Function(_FactRef value) factRef,
    required TResult Function(_ContextRef value) contextRef,
    required TResult Function(_ImageRef value) imageRef,
    required TResult Function(_InstructionRef value) instructionRef,
  }) {
    return factRef(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fact value)? fact,
    TResult? Function(_Context value)? context,
    TResult? Function(_Image value)? image,
    TResult? Function(_Instruction value)? instruction,
    TResult? Function(_FactRef value)? factRef,
    TResult? Function(_ContextRef value)? contextRef,
    TResult? Function(_ImageRef value)? imageRef,
    TResult? Function(_InstructionRef value)? instructionRef,
  }) {
    return factRef?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fact value)? fact,
    TResult Function(_Context value)? context,
    TResult Function(_Image value)? image,
    TResult Function(_Instruction value)? instruction,
    TResult Function(_FactRef value)? factRef,
    TResult Function(_ContextRef value)? contextRef,
    TResult Function(_ImageRef value)? imageRef,
    TResult Function(_InstructionRef value)? instructionRef,
    required TResult orElse(),
  }) {
    if (factRef != null) {
      return factRef(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FactRefImplToJson(
      this,
    );
  }
}

abstract class _FactRef implements AskInput {
  const factory _FactRef(
      {@JsonKey(readValue: AskIOId.readValue)
      required final AskIOId askIOId}) = _$FactRefImpl;

  factory _FactRef.fromJson(Map<String, dynamic> json) = _$FactRefImpl.fromJson;

  @JsonKey(readValue: AskIOId.readValue)
  AskIOId get askIOId;
  @JsonKey(ignore: true)
  _$$FactRefImplCopyWith<_$FactRefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContextRefImplCopyWith<$Res> {
  factory _$$ContextRefImplCopyWith(
          _$ContextRefImpl value, $Res Function(_$ContextRefImpl) then) =
      __$$ContextRefImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId});

  $AskIOIdCopyWith<$Res> get askIOId;
}

/// @nodoc
class __$$ContextRefImplCopyWithImpl<$Res>
    extends _$AskInputCopyWithImpl<$Res, _$ContextRefImpl>
    implements _$$ContextRefImplCopyWith<$Res> {
  __$$ContextRefImplCopyWithImpl(
      _$ContextRefImpl _value, $Res Function(_$ContextRefImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? askIOId = null,
  }) {
    return _then(_$ContextRefImpl(
      askIOId: null == askIOId
          ? _value.askIOId
          : askIOId // ignore: cast_nullable_to_non_nullable
              as AskIOId,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AskIOIdCopyWith<$Res> get askIOId {
    return $AskIOIdCopyWith<$Res>(_value.askIOId, (value) {
      return _then(_value.copyWith(askIOId: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ContextRefImpl implements _ContextRef {
  const _$ContextRefImpl(
      {@JsonKey(readValue: AskIOId.readValue) required this.askIOId,
      final String? $type})
      : $type = $type ?? 'contextRef';

  factory _$ContextRefImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContextRefImplFromJson(json);

  @override
  @JsonKey(readValue: AskIOId.readValue)
  final AskIOId askIOId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AskInput.contextRef(askIOId: $askIOId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContextRefImpl &&
            (identical(other.askIOId, askIOId) || other.askIOId == askIOId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, askIOId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContextRefImplCopyWith<_$ContextRefImpl> get copyWith =>
      __$$ContextRefImplCopyWithImpl<_$ContextRefImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) fact,
    required TResult Function(String value) context,
    required TResult Function(Uri uri) image,
    required TResult Function(String value) instruction,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        factRef,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        contextRef,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        imageRef,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        instructionRef,
  }) {
    return contextRef(askIOId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? fact,
    TResult? Function(String value)? context,
    TResult? Function(Uri uri)? image,
    TResult? Function(String value)? instruction,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        factRef,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        contextRef,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        imageRef,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        instructionRef,
  }) {
    return contextRef?.call(askIOId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? fact,
    TResult Function(String value)? context,
    TResult Function(Uri uri)? image,
    TResult Function(String value)? instruction,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        factRef,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        contextRef,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        imageRef,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        instructionRef,
    required TResult orElse(),
  }) {
    if (contextRef != null) {
      return contextRef(askIOId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fact value) fact,
    required TResult Function(_Context value) context,
    required TResult Function(_Image value) image,
    required TResult Function(_Instruction value) instruction,
    required TResult Function(_FactRef value) factRef,
    required TResult Function(_ContextRef value) contextRef,
    required TResult Function(_ImageRef value) imageRef,
    required TResult Function(_InstructionRef value) instructionRef,
  }) {
    return contextRef(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fact value)? fact,
    TResult? Function(_Context value)? context,
    TResult? Function(_Image value)? image,
    TResult? Function(_Instruction value)? instruction,
    TResult? Function(_FactRef value)? factRef,
    TResult? Function(_ContextRef value)? contextRef,
    TResult? Function(_ImageRef value)? imageRef,
    TResult? Function(_InstructionRef value)? instructionRef,
  }) {
    return contextRef?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fact value)? fact,
    TResult Function(_Context value)? context,
    TResult Function(_Image value)? image,
    TResult Function(_Instruction value)? instruction,
    TResult Function(_FactRef value)? factRef,
    TResult Function(_ContextRef value)? contextRef,
    TResult Function(_ImageRef value)? imageRef,
    TResult Function(_InstructionRef value)? instructionRef,
    required TResult orElse(),
  }) {
    if (contextRef != null) {
      return contextRef(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ContextRefImplToJson(
      this,
    );
  }
}

abstract class _ContextRef implements AskInput {
  const factory _ContextRef(
      {@JsonKey(readValue: AskIOId.readValue)
      required final AskIOId askIOId}) = _$ContextRefImpl;

  factory _ContextRef.fromJson(Map<String, dynamic> json) =
      _$ContextRefImpl.fromJson;

  @JsonKey(readValue: AskIOId.readValue)
  AskIOId get askIOId;
  @JsonKey(ignore: true)
  _$$ContextRefImplCopyWith<_$ContextRefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageRefImplCopyWith<$Res> {
  factory _$$ImageRefImplCopyWith(
          _$ImageRefImpl value, $Res Function(_$ImageRefImpl) then) =
      __$$ImageRefImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId});

  $AskIOIdCopyWith<$Res> get askIOId;
}

/// @nodoc
class __$$ImageRefImplCopyWithImpl<$Res>
    extends _$AskInputCopyWithImpl<$Res, _$ImageRefImpl>
    implements _$$ImageRefImplCopyWith<$Res> {
  __$$ImageRefImplCopyWithImpl(
      _$ImageRefImpl _value, $Res Function(_$ImageRefImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? askIOId = null,
  }) {
    return _then(_$ImageRefImpl(
      askIOId: null == askIOId
          ? _value.askIOId
          : askIOId // ignore: cast_nullable_to_non_nullable
              as AskIOId,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AskIOIdCopyWith<$Res> get askIOId {
    return $AskIOIdCopyWith<$Res>(_value.askIOId, (value) {
      return _then(_value.copyWith(askIOId: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageRefImpl implements _ImageRef {
  const _$ImageRefImpl(
      {@JsonKey(readValue: AskIOId.readValue) required this.askIOId,
      final String? $type})
      : $type = $type ?? 'imageRef';

  factory _$ImageRefImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageRefImplFromJson(json);

  @override
  @JsonKey(readValue: AskIOId.readValue)
  final AskIOId askIOId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AskInput.imageRef(askIOId: $askIOId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageRefImpl &&
            (identical(other.askIOId, askIOId) || other.askIOId == askIOId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, askIOId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageRefImplCopyWith<_$ImageRefImpl> get copyWith =>
      __$$ImageRefImplCopyWithImpl<_$ImageRefImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) fact,
    required TResult Function(String value) context,
    required TResult Function(Uri uri) image,
    required TResult Function(String value) instruction,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        factRef,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        contextRef,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        imageRef,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        instructionRef,
  }) {
    return imageRef(askIOId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? fact,
    TResult? Function(String value)? context,
    TResult? Function(Uri uri)? image,
    TResult? Function(String value)? instruction,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        factRef,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        contextRef,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        imageRef,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        instructionRef,
  }) {
    return imageRef?.call(askIOId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? fact,
    TResult Function(String value)? context,
    TResult Function(Uri uri)? image,
    TResult Function(String value)? instruction,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        factRef,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        contextRef,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        imageRef,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        instructionRef,
    required TResult orElse(),
  }) {
    if (imageRef != null) {
      return imageRef(askIOId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fact value) fact,
    required TResult Function(_Context value) context,
    required TResult Function(_Image value) image,
    required TResult Function(_Instruction value) instruction,
    required TResult Function(_FactRef value) factRef,
    required TResult Function(_ContextRef value) contextRef,
    required TResult Function(_ImageRef value) imageRef,
    required TResult Function(_InstructionRef value) instructionRef,
  }) {
    return imageRef(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fact value)? fact,
    TResult? Function(_Context value)? context,
    TResult? Function(_Image value)? image,
    TResult? Function(_Instruction value)? instruction,
    TResult? Function(_FactRef value)? factRef,
    TResult? Function(_ContextRef value)? contextRef,
    TResult? Function(_ImageRef value)? imageRef,
    TResult? Function(_InstructionRef value)? instructionRef,
  }) {
    return imageRef?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fact value)? fact,
    TResult Function(_Context value)? context,
    TResult Function(_Image value)? image,
    TResult Function(_Instruction value)? instruction,
    TResult Function(_FactRef value)? factRef,
    TResult Function(_ContextRef value)? contextRef,
    TResult Function(_ImageRef value)? imageRef,
    TResult Function(_InstructionRef value)? instructionRef,
    required TResult orElse(),
  }) {
    if (imageRef != null) {
      return imageRef(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageRefImplToJson(
      this,
    );
  }
}

abstract class _ImageRef implements AskInput {
  const factory _ImageRef(
      {@JsonKey(readValue: AskIOId.readValue)
      required final AskIOId askIOId}) = _$ImageRefImpl;

  factory _ImageRef.fromJson(Map<String, dynamic> json) =
      _$ImageRefImpl.fromJson;

  @JsonKey(readValue: AskIOId.readValue)
  AskIOId get askIOId;
  @JsonKey(ignore: true)
  _$$ImageRefImplCopyWith<_$ImageRefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InstructionRefImplCopyWith<$Res> {
  factory _$$InstructionRefImplCopyWith(_$InstructionRefImpl value,
          $Res Function(_$InstructionRefImpl) then) =
      __$$InstructionRefImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId});

  $AskIOIdCopyWith<$Res> get askIOId;
}

/// @nodoc
class __$$InstructionRefImplCopyWithImpl<$Res>
    extends _$AskInputCopyWithImpl<$Res, _$InstructionRefImpl>
    implements _$$InstructionRefImplCopyWith<$Res> {
  __$$InstructionRefImplCopyWithImpl(
      _$InstructionRefImpl _value, $Res Function(_$InstructionRefImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? askIOId = null,
  }) {
    return _then(_$InstructionRefImpl(
      askIOId: null == askIOId
          ? _value.askIOId
          : askIOId // ignore: cast_nullable_to_non_nullable
              as AskIOId,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AskIOIdCopyWith<$Res> get askIOId {
    return $AskIOIdCopyWith<$Res>(_value.askIOId, (value) {
      return _then(_value.copyWith(askIOId: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$InstructionRefImpl implements _InstructionRef {
  const _$InstructionRefImpl(
      {@JsonKey(readValue: AskIOId.readValue) required this.askIOId,
      final String? $type})
      : $type = $type ?? 'instructionRef';

  factory _$InstructionRefImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstructionRefImplFromJson(json);

  @override
  @JsonKey(readValue: AskIOId.readValue)
  final AskIOId askIOId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AskInput.instructionRef(askIOId: $askIOId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstructionRefImpl &&
            (identical(other.askIOId, askIOId) || other.askIOId == askIOId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, askIOId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InstructionRefImplCopyWith<_$InstructionRefImpl> get copyWith =>
      __$$InstructionRefImplCopyWithImpl<_$InstructionRefImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) fact,
    required TResult Function(String value) context,
    required TResult Function(Uri uri) image,
    required TResult Function(String value) instruction,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        factRef,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        contextRef,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        imageRef,
    required TResult Function(
            @JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)
        instructionRef,
  }) {
    return instructionRef(askIOId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? fact,
    TResult? Function(String value)? context,
    TResult? Function(Uri uri)? image,
    TResult? Function(String value)? instruction,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        factRef,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        contextRef,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        imageRef,
    TResult? Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        instructionRef,
  }) {
    return instructionRef?.call(askIOId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? fact,
    TResult Function(String value)? context,
    TResult Function(Uri uri)? image,
    TResult Function(String value)? instruction,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        factRef,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        contextRef,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        imageRef,
    TResult Function(@JsonKey(readValue: AskIOId.readValue) AskIOId askIOId)?
        instructionRef,
    required TResult orElse(),
  }) {
    if (instructionRef != null) {
      return instructionRef(askIOId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fact value) fact,
    required TResult Function(_Context value) context,
    required TResult Function(_Image value) image,
    required TResult Function(_Instruction value) instruction,
    required TResult Function(_FactRef value) factRef,
    required TResult Function(_ContextRef value) contextRef,
    required TResult Function(_ImageRef value) imageRef,
    required TResult Function(_InstructionRef value) instructionRef,
  }) {
    return instructionRef(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fact value)? fact,
    TResult? Function(_Context value)? context,
    TResult? Function(_Image value)? image,
    TResult? Function(_Instruction value)? instruction,
    TResult? Function(_FactRef value)? factRef,
    TResult? Function(_ContextRef value)? contextRef,
    TResult? Function(_ImageRef value)? imageRef,
    TResult? Function(_InstructionRef value)? instructionRef,
  }) {
    return instructionRef?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fact value)? fact,
    TResult Function(_Context value)? context,
    TResult Function(_Image value)? image,
    TResult Function(_Instruction value)? instruction,
    TResult Function(_FactRef value)? factRef,
    TResult Function(_ContextRef value)? contextRef,
    TResult Function(_ImageRef value)? imageRef,
    TResult Function(_InstructionRef value)? instructionRef,
    required TResult orElse(),
  }) {
    if (instructionRef != null) {
      return instructionRef(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InstructionRefImplToJson(
      this,
    );
  }
}

abstract class _InstructionRef implements AskInput {
  const factory _InstructionRef(
      {@JsonKey(readValue: AskIOId.readValue)
      required final AskIOId askIOId}) = _$InstructionRefImpl;

  factory _InstructionRef.fromJson(Map<String, dynamic> json) =
      _$InstructionRefImpl.fromJson;

  @JsonKey(readValue: AskIOId.readValue)
  AskIOId get askIOId;
  @JsonKey(ignore: true)
  _$$InstructionRefImplCopyWith<_$InstructionRefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
