// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ask_page_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AskPageAppearanceData {
  AskPageId get id => throw _privateConstructorUsedError;
  double get scaleFactor => throw _privateConstructorUsedError;
  Offset get offset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AskPageAppearanceDataCopyWith<AskPageAppearanceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AskPageAppearanceDataCopyWith<$Res> {
  factory $AskPageAppearanceDataCopyWith(AskPageAppearanceData value,
          $Res Function(AskPageAppearanceData) then) =
      _$AskPageAppearanceDataCopyWithImpl<$Res, AskPageAppearanceData>;
  @useResult
  $Res call({AskPageId id, double scaleFactor, Offset offset});

  $AskPageIdCopyWith<$Res> get id;
}

/// @nodoc
class _$AskPageAppearanceDataCopyWithImpl<$Res,
        $Val extends AskPageAppearanceData>
    implements $AskPageAppearanceDataCopyWith<$Res> {
  _$AskPageAppearanceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? scaleFactor = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as AskPageId,
      scaleFactor: null == scaleFactor
          ? _value.scaleFactor
          : scaleFactor // ignore: cast_nullable_to_non_nullable
              as double,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
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
abstract class _$$AskPageAppearanceDataImplCopyWith<$Res>
    implements $AskPageAppearanceDataCopyWith<$Res> {
  factory _$$AskPageAppearanceDataImplCopyWith(
          _$AskPageAppearanceDataImpl value,
          $Res Function(_$AskPageAppearanceDataImpl) then) =
      __$$AskPageAppearanceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AskPageId id, double scaleFactor, Offset offset});

  @override
  $AskPageIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$AskPageAppearanceDataImplCopyWithImpl<$Res>
    extends _$AskPageAppearanceDataCopyWithImpl<$Res,
        _$AskPageAppearanceDataImpl>
    implements _$$AskPageAppearanceDataImplCopyWith<$Res> {
  __$$AskPageAppearanceDataImplCopyWithImpl(_$AskPageAppearanceDataImpl _value,
      $Res Function(_$AskPageAppearanceDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? scaleFactor = null,
    Object? offset = null,
  }) {
    return _then(_$AskPageAppearanceDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as AskPageId,
      scaleFactor: null == scaleFactor
          ? _value.scaleFactor
          : scaleFactor // ignore: cast_nullable_to_non_nullable
              as double,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc

class _$AskPageAppearanceDataImpl implements _AskPageAppearanceData {
  const _$AskPageAppearanceDataImpl(
      {required this.id, required this.scaleFactor, required this.offset});

  @override
  final AskPageId id;
  @override
  final double scaleFactor;
  @override
  final Offset offset;

  @override
  String toString() {
    return 'AskPageAppearanceData(id: $id, scaleFactor: $scaleFactor, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AskPageAppearanceDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.scaleFactor, scaleFactor) ||
                other.scaleFactor == scaleFactor) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, scaleFactor, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AskPageAppearanceDataImplCopyWith<_$AskPageAppearanceDataImpl>
      get copyWith => __$$AskPageAppearanceDataImplCopyWithImpl<
          _$AskPageAppearanceDataImpl>(this, _$identity);
}

abstract class _AskPageAppearanceData implements AskPageAppearanceData {
  const factory _AskPageAppearanceData(
      {required final AskPageId id,
      required final double scaleFactor,
      required final Offset offset}) = _$AskPageAppearanceDataImpl;

  @override
  AskPageId get id;
  @override
  double get scaleFactor;
  @override
  Offset get offset;
  @override
  @JsonKey(ignore: true)
  _$$AskPageAppearanceDataImplCopyWith<_$AskPageAppearanceDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
