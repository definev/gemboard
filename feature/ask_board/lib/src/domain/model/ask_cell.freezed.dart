// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ask_cell.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AskCellId _$AskCellIdFromJson(Map<String, dynamic> json) {
  return _AskCellId.fromJson(json);
}

/// @nodoc
mixin _$AskCellId {
  AskCellParentId get parentId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AskCellIdCopyWith<AskCellId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AskCellIdCopyWith<$Res> {
  factory $AskCellIdCopyWith(AskCellId value, $Res Function(AskCellId) then) =
      _$AskCellIdCopyWithImpl<$Res, AskCellId>;
  @useResult
  $Res call({AskCellParentId parentId, String id});

  $AskCellParentIdCopyWith<$Res> get parentId;
}

/// @nodoc
class _$AskCellIdCopyWithImpl<$Res, $Val extends AskCellId>
    implements $AskCellIdCopyWith<$Res> {
  _$AskCellIdCopyWithImpl(this._value, this._then);

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
              as AskCellParentId,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AskCellParentIdCopyWith<$Res> get parentId {
    return $AskCellParentIdCopyWith<$Res>(_value.parentId, (value) {
      return _then(_value.copyWith(parentId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AskCellIdImplCopyWith<$Res>
    implements $AskCellIdCopyWith<$Res> {
  factory _$$AskCellIdImplCopyWith(
          _$AskCellIdImpl value, $Res Function(_$AskCellIdImpl) then) =
      __$$AskCellIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AskCellParentId parentId, String id});

  @override
  $AskCellParentIdCopyWith<$Res> get parentId;
}

/// @nodoc
class __$$AskCellIdImplCopyWithImpl<$Res>
    extends _$AskCellIdCopyWithImpl<$Res, _$AskCellIdImpl>
    implements _$$AskCellIdImplCopyWith<$Res> {
  __$$AskCellIdImplCopyWithImpl(
      _$AskCellIdImpl _value, $Res Function(_$AskCellIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentId = null,
    Object? id = null,
  }) {
    return _then(_$AskCellIdImpl(
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as AskCellParentId,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AskCellIdImpl implements _AskCellId {
  const _$AskCellIdImpl({required this.parentId, required this.id});

  factory _$AskCellIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$AskCellIdImplFromJson(json);

  @override
  final AskCellParentId parentId;
  @override
  final String id;

  @override
  String toString() {
    return 'AskCellId(parentId: $parentId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AskCellIdImpl &&
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
  _$$AskCellIdImplCopyWith<_$AskCellIdImpl> get copyWith =>
      __$$AskCellIdImplCopyWithImpl<_$AskCellIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AskCellIdImplToJson(
      this,
    );
  }
}

abstract class _AskCellId implements AskCellId {
  const factory _AskCellId(
      {required final AskCellParentId parentId,
      required final String id}) = _$AskCellIdImpl;

  factory _AskCellId.fromJson(Map<String, dynamic> json) =
      _$AskCellIdImpl.fromJson;

  @override
  AskCellParentId get parentId;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$AskCellIdImplCopyWith<_$AskCellIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AskCellParentId _$AskCellParentIdFromJson(Map<String, dynamic> json) {
  return _AskCellParentId.fromJson(json);
}

/// @nodoc
mixin _$AskCellParentId {
  String get askBoardId => throw _privateConstructorUsedError;
  String get askPageId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AskCellParentIdCopyWith<AskCellParentId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AskCellParentIdCopyWith<$Res> {
  factory $AskCellParentIdCopyWith(
          AskCellParentId value, $Res Function(AskCellParentId) then) =
      _$AskCellParentIdCopyWithImpl<$Res, AskCellParentId>;
  @useResult
  $Res call({String askBoardId, String askPageId});
}

/// @nodoc
class _$AskCellParentIdCopyWithImpl<$Res, $Val extends AskCellParentId>
    implements $AskCellParentIdCopyWith<$Res> {
  _$AskCellParentIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? askBoardId = null,
    Object? askPageId = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AskCellParentIdImplCopyWith<$Res>
    implements $AskCellParentIdCopyWith<$Res> {
  factory _$$AskCellParentIdImplCopyWith(_$AskCellParentIdImpl value,
          $Res Function(_$AskCellParentIdImpl) then) =
      __$$AskCellParentIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String askBoardId, String askPageId});
}

/// @nodoc
class __$$AskCellParentIdImplCopyWithImpl<$Res>
    extends _$AskCellParentIdCopyWithImpl<$Res, _$AskCellParentIdImpl>
    implements _$$AskCellParentIdImplCopyWith<$Res> {
  __$$AskCellParentIdImplCopyWithImpl(
      _$AskCellParentIdImpl _value, $Res Function(_$AskCellParentIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? askBoardId = null,
    Object? askPageId = null,
  }) {
    return _then(_$AskCellParentIdImpl(
      askBoardId: null == askBoardId
          ? _value.askBoardId
          : askBoardId // ignore: cast_nullable_to_non_nullable
              as String,
      askPageId: null == askPageId
          ? _value.askPageId
          : askPageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AskCellParentIdImpl implements _AskCellParentId {
  const _$AskCellParentIdImpl(
      {required this.askBoardId, required this.askPageId});

  factory _$AskCellParentIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$AskCellParentIdImplFromJson(json);

  @override
  final String askBoardId;
  @override
  final String askPageId;

  @override
  String toString() {
    return 'AskCellParentId(askBoardId: $askBoardId, askPageId: $askPageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AskCellParentIdImpl &&
            (identical(other.askBoardId, askBoardId) ||
                other.askBoardId == askBoardId) &&
            (identical(other.askPageId, askPageId) ||
                other.askPageId == askPageId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, askBoardId, askPageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AskCellParentIdImplCopyWith<_$AskCellParentIdImpl> get copyWith =>
      __$$AskCellParentIdImplCopyWithImpl<_$AskCellParentIdImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AskCellParentIdImplToJson(
      this,
    );
  }
}

abstract class _AskCellParentId implements AskCellParentId {
  const factory _AskCellParentId(
      {required final String askBoardId,
      required final String askPageId}) = _$AskCellParentIdImpl;

  factory _AskCellParentId.fromJson(Map<String, dynamic> json) =
      _$AskCellParentIdImpl.fromJson;

  @override
  String get askBoardId;
  @override
  String get askPageId;
  @override
  @JsonKey(ignore: true)
  _$$AskCellParentIdImplCopyWith<_$AskCellParentIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AskCell _$AskCellFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'cell':
      return _Cell.fromJson(json);
    case 'cellRef':
      return _CellRef.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AskCell',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AskCell {
  AskCellId get id => throw _privateConstructorUsedError;
  @OffsetConverter()
  Offset get position => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AskCellId id, @OffsetConverter() Offset position,
            String title, List<AskInput> inputs)
        cell,
    required TResult Function(
            AskCellId id, @OffsetConverter() Offset position, AskCellId refId)
        cellRef,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AskCellId id, @OffsetConverter() Offset position,
            String title, List<AskInput> inputs)?
        cell,
    TResult? Function(
            AskCellId id, @OffsetConverter() Offset position, AskCellId refId)?
        cellRef,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AskCellId id, @OffsetConverter() Offset position,
            String title, List<AskInput> inputs)?
        cell,
    TResult Function(
            AskCellId id, @OffsetConverter() Offset position, AskCellId refId)?
        cellRef,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Cell value) cell,
    required TResult Function(_CellRef value) cellRef,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Cell value)? cell,
    TResult? Function(_CellRef value)? cellRef,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Cell value)? cell,
    TResult Function(_CellRef value)? cellRef,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AskCellCopyWith<AskCell> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AskCellCopyWith<$Res> {
  factory $AskCellCopyWith(AskCell value, $Res Function(AskCell) then) =
      _$AskCellCopyWithImpl<$Res, AskCell>;
  @useResult
  $Res call({AskCellId id, @OffsetConverter() Offset position});

  $AskCellIdCopyWith<$Res> get id;
}

/// @nodoc
class _$AskCellCopyWithImpl<$Res, $Val extends AskCell>
    implements $AskCellCopyWith<$Res> {
  _$AskCellCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? position = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as AskCellId,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Offset,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AskCellIdCopyWith<$Res> get id {
    return $AskCellIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CellImplCopyWith<$Res> implements $AskCellCopyWith<$Res> {
  factory _$$CellImplCopyWith(
          _$CellImpl value, $Res Function(_$CellImpl) then) =
      __$$CellImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AskCellId id,
      @OffsetConverter() Offset position,
      String title,
      List<AskInput> inputs});

  @override
  $AskCellIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$CellImplCopyWithImpl<$Res>
    extends _$AskCellCopyWithImpl<$Res, _$CellImpl>
    implements _$$CellImplCopyWith<$Res> {
  __$$CellImplCopyWithImpl(_$CellImpl _value, $Res Function(_$CellImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? position = null,
    Object? title = null,
    Object? inputs = null,
  }) {
    return _then(_$CellImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as AskCellId,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Offset,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      inputs: null == inputs
          ? _value._inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<AskInput>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CellImpl implements _Cell {
  const _$CellImpl(
      {required this.id,
      @OffsetConverter() required this.position,
      this.title = '',
      required final List<AskInput> inputs,
      final String? $type})
      : _inputs = inputs,
        $type = $type ?? 'cell';

  factory _$CellImpl.fromJson(Map<String, dynamic> json) =>
      _$$CellImplFromJson(json);

  @override
  final AskCellId id;
  @override
  @OffsetConverter()
  final Offset position;
//
  @override
  @JsonKey()
  final String title;
  final List<AskInput> _inputs;
  @override
  List<AskInput> get inputs {
    if (_inputs is EqualUnmodifiableListView) return _inputs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inputs);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AskCell.cell(id: $id, position: $position, title: $title, inputs: $inputs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CellImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._inputs, _inputs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, position, title,
      const DeepCollectionEquality().hash(_inputs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CellImplCopyWith<_$CellImpl> get copyWith =>
      __$$CellImplCopyWithImpl<_$CellImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AskCellId id, @OffsetConverter() Offset position,
            String title, List<AskInput> inputs)
        cell,
    required TResult Function(
            AskCellId id, @OffsetConverter() Offset position, AskCellId refId)
        cellRef,
  }) {
    return cell(id, position, title, inputs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AskCellId id, @OffsetConverter() Offset position,
            String title, List<AskInput> inputs)?
        cell,
    TResult? Function(
            AskCellId id, @OffsetConverter() Offset position, AskCellId refId)?
        cellRef,
  }) {
    return cell?.call(id, position, title, inputs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AskCellId id, @OffsetConverter() Offset position,
            String title, List<AskInput> inputs)?
        cell,
    TResult Function(
            AskCellId id, @OffsetConverter() Offset position, AskCellId refId)?
        cellRef,
    required TResult orElse(),
  }) {
    if (cell != null) {
      return cell(id, position, title, inputs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Cell value) cell,
    required TResult Function(_CellRef value) cellRef,
  }) {
    return cell(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Cell value)? cell,
    TResult? Function(_CellRef value)? cellRef,
  }) {
    return cell?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Cell value)? cell,
    TResult Function(_CellRef value)? cellRef,
    required TResult orElse(),
  }) {
    if (cell != null) {
      return cell(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CellImplToJson(
      this,
    );
  }
}

abstract class _Cell implements AskCell {
  const factory _Cell(
      {required final AskCellId id,
      @OffsetConverter() required final Offset position,
      final String title,
      required final List<AskInput> inputs}) = _$CellImpl;

  factory _Cell.fromJson(Map<String, dynamic> json) = _$CellImpl.fromJson;

  @override
  AskCellId get id;
  @override
  @OffsetConverter()
  Offset get position; //
  String get title;
  List<AskInput> get inputs;
  @override
  @JsonKey(ignore: true)
  _$$CellImplCopyWith<_$CellImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CellRefImplCopyWith<$Res> implements $AskCellCopyWith<$Res> {
  factory _$$CellRefImplCopyWith(
          _$CellRefImpl value, $Res Function(_$CellRefImpl) then) =
      __$$CellRefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AskCellId id, @OffsetConverter() Offset position, AskCellId refId});

  @override
  $AskCellIdCopyWith<$Res> get id;
  $AskCellIdCopyWith<$Res> get refId;
}

/// @nodoc
class __$$CellRefImplCopyWithImpl<$Res>
    extends _$AskCellCopyWithImpl<$Res, _$CellRefImpl>
    implements _$$CellRefImplCopyWith<$Res> {
  __$$CellRefImplCopyWithImpl(
      _$CellRefImpl _value, $Res Function(_$CellRefImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? position = null,
    Object? refId = null,
  }) {
    return _then(_$CellRefImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as AskCellId,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Offset,
      refId: null == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as AskCellId,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AskCellIdCopyWith<$Res> get refId {
    return $AskCellIdCopyWith<$Res>(_value.refId, (value) {
      return _then(_value.copyWith(refId: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$CellRefImpl implements _CellRef {
  const _$CellRefImpl(
      {required this.id,
      @OffsetConverter() required this.position,
      required this.refId,
      final String? $type})
      : $type = $type ?? 'cellRef';

  factory _$CellRefImpl.fromJson(Map<String, dynamic> json) =>
      _$$CellRefImplFromJson(json);

  @override
  final AskCellId id;
  @override
  @OffsetConverter()
  final Offset position;
//
  @override
  final AskCellId refId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AskCell.cellRef(id: $id, position: $position, refId: $refId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CellRefImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.refId, refId) || other.refId == refId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, position, refId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CellRefImplCopyWith<_$CellRefImpl> get copyWith =>
      __$$CellRefImplCopyWithImpl<_$CellRefImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AskCellId id, @OffsetConverter() Offset position,
            String title, List<AskInput> inputs)
        cell,
    required TResult Function(
            AskCellId id, @OffsetConverter() Offset position, AskCellId refId)
        cellRef,
  }) {
    return cellRef(id, position, refId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AskCellId id, @OffsetConverter() Offset position,
            String title, List<AskInput> inputs)?
        cell,
    TResult? Function(
            AskCellId id, @OffsetConverter() Offset position, AskCellId refId)?
        cellRef,
  }) {
    return cellRef?.call(id, position, refId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AskCellId id, @OffsetConverter() Offset position,
            String title, List<AskInput> inputs)?
        cell,
    TResult Function(
            AskCellId id, @OffsetConverter() Offset position, AskCellId refId)?
        cellRef,
    required TResult orElse(),
  }) {
    if (cellRef != null) {
      return cellRef(id, position, refId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Cell value) cell,
    required TResult Function(_CellRef value) cellRef,
  }) {
    return cellRef(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Cell value)? cell,
    TResult? Function(_CellRef value)? cellRef,
  }) {
    return cellRef?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Cell value)? cell,
    TResult Function(_CellRef value)? cellRef,
    required TResult orElse(),
  }) {
    if (cellRef != null) {
      return cellRef(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CellRefImplToJson(
      this,
    );
  }
}

abstract class _CellRef implements AskCell {
  const factory _CellRef(
      {required final AskCellId id,
      @OffsetConverter() required final Offset position,
      required final AskCellId refId}) = _$CellRefImpl;

  factory _CellRef.fromJson(Map<String, dynamic> json) = _$CellRefImpl.fromJson;

  @override
  AskCellId get id;
  @override
  @OffsetConverter()
  Offset get position; //
  AskCellId get refId;
  @override
  @JsonKey(ignore: true)
  _$$CellRefImplCopyWith<_$CellRefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
