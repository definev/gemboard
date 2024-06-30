// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ask_board_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AskBoardAppearanceData {
  String get id => throw _privateConstructorUsedError;
  bool get showSideBar => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AskBoardAppearanceDataCopyWith<AskBoardAppearanceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AskBoardAppearanceDataCopyWith<$Res> {
  factory $AskBoardAppearanceDataCopyWith(AskBoardAppearanceData value,
          $Res Function(AskBoardAppearanceData) then) =
      _$AskBoardAppearanceDataCopyWithImpl<$Res, AskBoardAppearanceData>;
  @useResult
  $Res call({String id, bool showSideBar});
}

/// @nodoc
class _$AskBoardAppearanceDataCopyWithImpl<$Res,
        $Val extends AskBoardAppearanceData>
    implements $AskBoardAppearanceDataCopyWith<$Res> {
  _$AskBoardAppearanceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? showSideBar = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      showSideBar: null == showSideBar
          ? _value.showSideBar
          : showSideBar // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AskBoardAppearanceDataImplCopyWith<$Res>
    implements $AskBoardAppearanceDataCopyWith<$Res> {
  factory _$$AskBoardAppearanceDataImplCopyWith(
          _$AskBoardAppearanceDataImpl value,
          $Res Function(_$AskBoardAppearanceDataImpl) then) =
      __$$AskBoardAppearanceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool showSideBar});
}

/// @nodoc
class __$$AskBoardAppearanceDataImplCopyWithImpl<$Res>
    extends _$AskBoardAppearanceDataCopyWithImpl<$Res,
        _$AskBoardAppearanceDataImpl>
    implements _$$AskBoardAppearanceDataImplCopyWith<$Res> {
  __$$AskBoardAppearanceDataImplCopyWithImpl(
      _$AskBoardAppearanceDataImpl _value,
      $Res Function(_$AskBoardAppearanceDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? showSideBar = null,
  }) {
    return _then(_$AskBoardAppearanceDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      showSideBar: null == showSideBar
          ? _value.showSideBar
          : showSideBar // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AskBoardAppearanceDataImpl implements _AskBoardAppearanceData {
  const _$AskBoardAppearanceDataImpl(
      {required this.id, required this.showSideBar});

  @override
  final String id;
  @override
  final bool showSideBar;

  @override
  String toString() {
    return 'AskBoardAppearanceData(id: $id, showSideBar: $showSideBar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AskBoardAppearanceDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.showSideBar, showSideBar) ||
                other.showSideBar == showSideBar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, showSideBar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AskBoardAppearanceDataImplCopyWith<_$AskBoardAppearanceDataImpl>
      get copyWith => __$$AskBoardAppearanceDataImplCopyWithImpl<
          _$AskBoardAppearanceDataImpl>(this, _$identity);
}

abstract class _AskBoardAppearanceData implements AskBoardAppearanceData {
  const factory _AskBoardAppearanceData(
      {required final String id,
      required final bool showSideBar}) = _$AskBoardAppearanceDataImpl;

  @override
  String get id;
  @override
  bool get showSideBar;
  @override
  @JsonKey(ignore: true)
  _$$AskBoardAppearanceDataImplCopyWith<_$AskBoardAppearanceDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
