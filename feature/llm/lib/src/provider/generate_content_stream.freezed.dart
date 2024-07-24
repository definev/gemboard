// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_content_stream.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoreData {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String instruction) system,
    required TResult Function(String text) text,
    required TResult Function(String path) imageFile,
    required TResult Function(String url) imageNetwork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String instruction)? system,
    TResult? Function(String text)? text,
    TResult? Function(String path)? imageFile,
    TResult? Function(String url)? imageNetwork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String instruction)? system,
    TResult Function(String text)? text,
    TResult Function(String path)? imageFile,
    TResult Function(String url)? imageNetwork,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SystemCoreData value) system,
    required TResult Function(TextCoreData value) text,
    required TResult Function(ImageFileCoreData value) imageFile,
    required TResult Function(ImageNetworkCoreData value) imageNetwork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SystemCoreData value)? system,
    TResult? Function(TextCoreData value)? text,
    TResult? Function(ImageFileCoreData value)? imageFile,
    TResult? Function(ImageNetworkCoreData value)? imageNetwork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SystemCoreData value)? system,
    TResult Function(TextCoreData value)? text,
    TResult Function(ImageFileCoreData value)? imageFile,
    TResult Function(ImageNetworkCoreData value)? imageNetwork,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreDataCopyWith<$Res> {
  factory $CoreDataCopyWith(CoreData value, $Res Function(CoreData) then) =
      _$CoreDataCopyWithImpl<$Res, CoreData>;
}

/// @nodoc
class _$CoreDataCopyWithImpl<$Res, $Val extends CoreData>
    implements $CoreDataCopyWith<$Res> {
  _$CoreDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SystemCoreDataImplCopyWith<$Res> {
  factory _$$SystemCoreDataImplCopyWith(_$SystemCoreDataImpl value,
          $Res Function(_$SystemCoreDataImpl) then) =
      __$$SystemCoreDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String instruction});
}

/// @nodoc
class __$$SystemCoreDataImplCopyWithImpl<$Res>
    extends _$CoreDataCopyWithImpl<$Res, _$SystemCoreDataImpl>
    implements _$$SystemCoreDataImplCopyWith<$Res> {
  __$$SystemCoreDataImplCopyWithImpl(
      _$SystemCoreDataImpl _value, $Res Function(_$SystemCoreDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instruction = null,
  }) {
    return _then(_$SystemCoreDataImpl(
      null == instruction
          ? _value.instruction
          : instruction // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SystemCoreDataImpl implements SystemCoreData {
  const _$SystemCoreDataImpl(this.instruction);

  @override
  final String instruction;

  @override
  String toString() {
    return 'CoreData.system(instruction: $instruction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemCoreDataImpl &&
            (identical(other.instruction, instruction) ||
                other.instruction == instruction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, instruction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemCoreDataImplCopyWith<_$SystemCoreDataImpl> get copyWith =>
      __$$SystemCoreDataImplCopyWithImpl<_$SystemCoreDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String instruction) system,
    required TResult Function(String text) text,
    required TResult Function(String path) imageFile,
    required TResult Function(String url) imageNetwork,
  }) {
    return system(instruction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String instruction)? system,
    TResult? Function(String text)? text,
    TResult? Function(String path)? imageFile,
    TResult? Function(String url)? imageNetwork,
  }) {
    return system?.call(instruction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String instruction)? system,
    TResult Function(String text)? text,
    TResult Function(String path)? imageFile,
    TResult Function(String url)? imageNetwork,
    required TResult orElse(),
  }) {
    if (system != null) {
      return system(instruction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SystemCoreData value) system,
    required TResult Function(TextCoreData value) text,
    required TResult Function(ImageFileCoreData value) imageFile,
    required TResult Function(ImageNetworkCoreData value) imageNetwork,
  }) {
    return system(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SystemCoreData value)? system,
    TResult? Function(TextCoreData value)? text,
    TResult? Function(ImageFileCoreData value)? imageFile,
    TResult? Function(ImageNetworkCoreData value)? imageNetwork,
  }) {
    return system?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SystemCoreData value)? system,
    TResult Function(TextCoreData value)? text,
    TResult Function(ImageFileCoreData value)? imageFile,
    TResult Function(ImageNetworkCoreData value)? imageNetwork,
    required TResult orElse(),
  }) {
    if (system != null) {
      return system(this);
    }
    return orElse();
  }
}

abstract class SystemCoreData implements CoreData {
  const factory SystemCoreData(final String instruction) = _$SystemCoreDataImpl;

  String get instruction;
  @JsonKey(ignore: true)
  _$$SystemCoreDataImplCopyWith<_$SystemCoreDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TextCoreDataImplCopyWith<$Res> {
  factory _$$TextCoreDataImplCopyWith(
          _$TextCoreDataImpl value, $Res Function(_$TextCoreDataImpl) then) =
      __$$TextCoreDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$TextCoreDataImplCopyWithImpl<$Res>
    extends _$CoreDataCopyWithImpl<$Res, _$TextCoreDataImpl>
    implements _$$TextCoreDataImplCopyWith<$Res> {
  __$$TextCoreDataImplCopyWithImpl(
      _$TextCoreDataImpl _value, $Res Function(_$TextCoreDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$TextCoreDataImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TextCoreDataImpl implements TextCoreData {
  const _$TextCoreDataImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'CoreData.text(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextCoreDataImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextCoreDataImplCopyWith<_$TextCoreDataImpl> get copyWith =>
      __$$TextCoreDataImplCopyWithImpl<_$TextCoreDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String instruction) system,
    required TResult Function(String text) text,
    required TResult Function(String path) imageFile,
    required TResult Function(String url) imageNetwork,
  }) {
    return text(this.text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String instruction)? system,
    TResult? Function(String text)? text,
    TResult? Function(String path)? imageFile,
    TResult? Function(String url)? imageNetwork,
  }) {
    return text?.call(this.text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String instruction)? system,
    TResult Function(String text)? text,
    TResult Function(String path)? imageFile,
    TResult Function(String url)? imageNetwork,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this.text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SystemCoreData value) system,
    required TResult Function(TextCoreData value) text,
    required TResult Function(ImageFileCoreData value) imageFile,
    required TResult Function(ImageNetworkCoreData value) imageNetwork,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SystemCoreData value)? system,
    TResult? Function(TextCoreData value)? text,
    TResult? Function(ImageFileCoreData value)? imageFile,
    TResult? Function(ImageNetworkCoreData value)? imageNetwork,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SystemCoreData value)? system,
    TResult Function(TextCoreData value)? text,
    TResult Function(ImageFileCoreData value)? imageFile,
    TResult Function(ImageNetworkCoreData value)? imageNetwork,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class TextCoreData implements CoreData {
  const factory TextCoreData(final String text) = _$TextCoreDataImpl;

  String get text;
  @JsonKey(ignore: true)
  _$$TextCoreDataImplCopyWith<_$TextCoreDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageFileCoreDataImplCopyWith<$Res> {
  factory _$$ImageFileCoreDataImplCopyWith(_$ImageFileCoreDataImpl value,
          $Res Function(_$ImageFileCoreDataImpl) then) =
      __$$ImageFileCoreDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$ImageFileCoreDataImplCopyWithImpl<$Res>
    extends _$CoreDataCopyWithImpl<$Res, _$ImageFileCoreDataImpl>
    implements _$$ImageFileCoreDataImplCopyWith<$Res> {
  __$$ImageFileCoreDataImplCopyWithImpl(_$ImageFileCoreDataImpl _value,
      $Res Function(_$ImageFileCoreDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$ImageFileCoreDataImpl(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImageFileCoreDataImpl implements ImageFileCoreData {
  const _$ImageFileCoreDataImpl(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'CoreData.imageFile(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageFileCoreDataImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageFileCoreDataImplCopyWith<_$ImageFileCoreDataImpl> get copyWith =>
      __$$ImageFileCoreDataImplCopyWithImpl<_$ImageFileCoreDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String instruction) system,
    required TResult Function(String text) text,
    required TResult Function(String path) imageFile,
    required TResult Function(String url) imageNetwork,
  }) {
    return imageFile(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String instruction)? system,
    TResult? Function(String text)? text,
    TResult? Function(String path)? imageFile,
    TResult? Function(String url)? imageNetwork,
  }) {
    return imageFile?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String instruction)? system,
    TResult Function(String text)? text,
    TResult Function(String path)? imageFile,
    TResult Function(String url)? imageNetwork,
    required TResult orElse(),
  }) {
    if (imageFile != null) {
      return imageFile(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SystemCoreData value) system,
    required TResult Function(TextCoreData value) text,
    required TResult Function(ImageFileCoreData value) imageFile,
    required TResult Function(ImageNetworkCoreData value) imageNetwork,
  }) {
    return imageFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SystemCoreData value)? system,
    TResult? Function(TextCoreData value)? text,
    TResult? Function(ImageFileCoreData value)? imageFile,
    TResult? Function(ImageNetworkCoreData value)? imageNetwork,
  }) {
    return imageFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SystemCoreData value)? system,
    TResult Function(TextCoreData value)? text,
    TResult Function(ImageFileCoreData value)? imageFile,
    TResult Function(ImageNetworkCoreData value)? imageNetwork,
    required TResult orElse(),
  }) {
    if (imageFile != null) {
      return imageFile(this);
    }
    return orElse();
  }
}

abstract class ImageFileCoreData implements CoreData {
  const factory ImageFileCoreData(final String path) = _$ImageFileCoreDataImpl;

  String get path;
  @JsonKey(ignore: true)
  _$$ImageFileCoreDataImplCopyWith<_$ImageFileCoreDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageNetworkCoreDataImplCopyWith<$Res> {
  factory _$$ImageNetworkCoreDataImplCopyWith(_$ImageNetworkCoreDataImpl value,
          $Res Function(_$ImageNetworkCoreDataImpl) then) =
      __$$ImageNetworkCoreDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$ImageNetworkCoreDataImplCopyWithImpl<$Res>
    extends _$CoreDataCopyWithImpl<$Res, _$ImageNetworkCoreDataImpl>
    implements _$$ImageNetworkCoreDataImplCopyWith<$Res> {
  __$$ImageNetworkCoreDataImplCopyWithImpl(_$ImageNetworkCoreDataImpl _value,
      $Res Function(_$ImageNetworkCoreDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$ImageNetworkCoreDataImpl(
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImageNetworkCoreDataImpl implements ImageNetworkCoreData {
  const _$ImageNetworkCoreDataImpl(this.url);

  @override
  final String url;

  @override
  String toString() {
    return 'CoreData.imageNetwork(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageNetworkCoreDataImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageNetworkCoreDataImplCopyWith<_$ImageNetworkCoreDataImpl>
      get copyWith =>
          __$$ImageNetworkCoreDataImplCopyWithImpl<_$ImageNetworkCoreDataImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String instruction) system,
    required TResult Function(String text) text,
    required TResult Function(String path) imageFile,
    required TResult Function(String url) imageNetwork,
  }) {
    return imageNetwork(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String instruction)? system,
    TResult? Function(String text)? text,
    TResult? Function(String path)? imageFile,
    TResult? Function(String url)? imageNetwork,
  }) {
    return imageNetwork?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String instruction)? system,
    TResult Function(String text)? text,
    TResult Function(String path)? imageFile,
    TResult Function(String url)? imageNetwork,
    required TResult orElse(),
  }) {
    if (imageNetwork != null) {
      return imageNetwork(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SystemCoreData value) system,
    required TResult Function(TextCoreData value) text,
    required TResult Function(ImageFileCoreData value) imageFile,
    required TResult Function(ImageNetworkCoreData value) imageNetwork,
  }) {
    return imageNetwork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SystemCoreData value)? system,
    TResult? Function(TextCoreData value)? text,
    TResult? Function(ImageFileCoreData value)? imageFile,
    TResult? Function(ImageNetworkCoreData value)? imageNetwork,
  }) {
    return imageNetwork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SystemCoreData value)? system,
    TResult Function(TextCoreData value)? text,
    TResult Function(ImageFileCoreData value)? imageFile,
    TResult Function(ImageNetworkCoreData value)? imageNetwork,
    required TResult orElse(),
  }) {
    if (imageNetwork != null) {
      return imageNetwork(this);
    }
    return orElse();
  }
}

abstract class ImageNetworkCoreData implements CoreData {
  const factory ImageNetworkCoreData(final String url) =
      _$ImageNetworkCoreDataImpl;

  String get url;
  @JsonKey(ignore: true)
  _$$ImageNetworkCoreDataImplCopyWith<_$ImageNetworkCoreDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
