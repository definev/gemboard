// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cell.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CellParentId _$CellParentIdFromJson(Map<String, dynamic> json) {
  return _CellParentId.fromJson(json);
}

/// @nodoc
mixin _$CellParentId {
  String get whiteboardId => throw _privateConstructorUsedError;

  /// Serializes this CellParentId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CellParentId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CellParentIdCopyWith<CellParentId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CellParentIdCopyWith<$Res> {
  factory $CellParentIdCopyWith(
          CellParentId value, $Res Function(CellParentId) then) =
      _$CellParentIdCopyWithImpl<$Res, CellParentId>;
  @useResult
  $Res call({String whiteboardId});
}

/// @nodoc
class _$CellParentIdCopyWithImpl<$Res, $Val extends CellParentId>
    implements $CellParentIdCopyWith<$Res> {
  _$CellParentIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CellParentId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whiteboardId = null,
  }) {
    return _then(_value.copyWith(
      whiteboardId: null == whiteboardId
          ? _value.whiteboardId
          : whiteboardId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CellParentIdImplCopyWith<$Res>
    implements $CellParentIdCopyWith<$Res> {
  factory _$$CellParentIdImplCopyWith(
          _$CellParentIdImpl value, $Res Function(_$CellParentIdImpl) then) =
      __$$CellParentIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String whiteboardId});
}

/// @nodoc
class __$$CellParentIdImplCopyWithImpl<$Res>
    extends _$CellParentIdCopyWithImpl<$Res, _$CellParentIdImpl>
    implements _$$CellParentIdImplCopyWith<$Res> {
  __$$CellParentIdImplCopyWithImpl(
      _$CellParentIdImpl _value, $Res Function(_$CellParentIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of CellParentId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whiteboardId = null,
  }) {
    return _then(_$CellParentIdImpl(
      whiteboardId: null == whiteboardId
          ? _value.whiteboardId
          : whiteboardId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CellParentIdImpl extends _CellParentId {
  const _$CellParentIdImpl({required this.whiteboardId}) : super._();

  factory _$CellParentIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$CellParentIdImplFromJson(json);

  @override
  final String whiteboardId;

  @override
  String toString() {
    return 'CellParentId(whiteboardId: $whiteboardId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CellParentIdImpl &&
            (identical(other.whiteboardId, whiteboardId) ||
                other.whiteboardId == whiteboardId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, whiteboardId);

  /// Create a copy of CellParentId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CellParentIdImplCopyWith<_$CellParentIdImpl> get copyWith =>
      __$$CellParentIdImplCopyWithImpl<_$CellParentIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CellParentIdImplToJson(
      this,
    );
  }
}

abstract class _CellParentId extends CellParentId {
  const factory _CellParentId({required final String whiteboardId}) =
      _$CellParentIdImpl;
  const _CellParentId._() : super._();

  factory _CellParentId.fromJson(Map<String, dynamic> json) =
      _$CellParentIdImpl.fromJson;

  @override
  String get whiteboardId;

  /// Create a copy of CellParentId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CellParentIdImplCopyWith<_$CellParentIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CellId _$CellIdFromJson(Map<String, dynamic> json) {
  return _CellId.fromJson(json);
}

/// @nodoc
mixin _$CellId {
  @CellParentIdConverter()
  CellParentId get parentId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  /// Serializes this CellId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CellId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CellIdCopyWith<CellId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CellIdCopyWith<$Res> {
  factory $CellIdCopyWith(CellId value, $Res Function(CellId) then) =
      _$CellIdCopyWithImpl<$Res, CellId>;
  @useResult
  $Res call({@CellParentIdConverter() CellParentId parentId, String id});

  $CellParentIdCopyWith<$Res> get parentId;
}

/// @nodoc
class _$CellIdCopyWithImpl<$Res, $Val extends CellId>
    implements $CellIdCopyWith<$Res> {
  _$CellIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CellId
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
              as CellParentId,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of CellId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CellParentIdCopyWith<$Res> get parentId {
    return $CellParentIdCopyWith<$Res>(_value.parentId, (value) {
      return _then(_value.copyWith(parentId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CellIdImplCopyWith<$Res> implements $CellIdCopyWith<$Res> {
  factory _$$CellIdImplCopyWith(
          _$CellIdImpl value, $Res Function(_$CellIdImpl) then) =
      __$$CellIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@CellParentIdConverter() CellParentId parentId, String id});

  @override
  $CellParentIdCopyWith<$Res> get parentId;
}

/// @nodoc
class __$$CellIdImplCopyWithImpl<$Res>
    extends _$CellIdCopyWithImpl<$Res, _$CellIdImpl>
    implements _$$CellIdImplCopyWith<$Res> {
  __$$CellIdImplCopyWithImpl(
      _$CellIdImpl _value, $Res Function(_$CellIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of CellId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentId = null,
    Object? id = null,
  }) {
    return _then(_$CellIdImpl(
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as CellParentId,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CellIdImpl implements _CellId {
  const _$CellIdImpl(
      {@CellParentIdConverter() required this.parentId, required this.id});

  factory _$CellIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$CellIdImplFromJson(json);

  @override
  @CellParentIdConverter()
  final CellParentId parentId;
  @override
  final String id;

  @override
  String toString() {
    return 'CellId(parentId: $parentId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CellIdImpl &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, parentId, id);

  /// Create a copy of CellId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CellIdImplCopyWith<_$CellIdImpl> get copyWith =>
      __$$CellIdImplCopyWithImpl<_$CellIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CellIdImplToJson(
      this,
    );
  }
}

abstract class _CellId implements CellId {
  const factory _CellId(
      {@CellParentIdConverter() required final CellParentId parentId,
      required final String id}) = _$CellIdImpl;

  factory _CellId.fromJson(Map<String, dynamic> json) = _$CellIdImpl.fromJson;

  @override
  @CellParentIdConverter()
  CellParentId get parentId;
  @override
  String get id;

  /// Create a copy of CellId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CellIdImplCopyWith<_$CellIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Cell _$CellFromJson(Map<String, dynamic> json) {
  switch (json['cellType']) {
    case 'unknown':
      return UnknownCell.fromJson(json);
    case 'brainstorming':
      return BrainstormingCell.fromJson(json);
    case 'editable':
      return EditableCell.fromJson(json);
    case 'image':
      return ImageCell.fromJson(json);
    case 'article':
      return ArticleCell.fromJson(json);
    case 'url':
      return UrlCell.fromJson(json);
    case 'header':
      return HeaderCell.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'cellType', 'Cell',
          'Invalid union type "${json['cellType']}"!');
  }
}

/// @nodoc
mixin _$Cell {
  int get layer => throw _privateConstructorUsedError;
  @OffsetConverter()
  Offset get offset => throw _privateConstructorUsedError;
  @CellIdConverter()
  CellId get id => throw _privateConstructorUsedError;
  double? get width => throw _privateConstructorUsedError;
  double? get preferredWidth => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;

  /// A lazy height that will be calculated when the cell is rendered.
  double? get preferredHeight => throw _privateConstructorUsedError;
  @CellDecorationConverter()
  CellDecoration get decoration => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;
  String? get preContext => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext)
        unknown,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String? question,
            List<String> suggestions)
        brainstorming,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)
        editable,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)
        image,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)
        article,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)
        url,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title)
        header,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext)?
        unknown,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String? question,
            List<String> suggestions)?
        brainstorming,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        editable,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        image,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        article,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        url,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title)?
        header,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext)?
        unknown,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String? question,
            List<String> suggestions)?
        brainstorming,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        editable,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        image,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        article,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        url,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title)?
        header,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownCell value) unknown,
    required TResult Function(BrainstormingCell value) brainstorming,
    required TResult Function(EditableCell value) editable,
    required TResult Function(ImageCell value) image,
    required TResult Function(ArticleCell value) article,
    required TResult Function(UrlCell value) url,
    required TResult Function(HeaderCell value) header,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownCell value)? unknown,
    TResult? Function(BrainstormingCell value)? brainstorming,
    TResult? Function(EditableCell value)? editable,
    TResult? Function(ImageCell value)? image,
    TResult? Function(ArticleCell value)? article,
    TResult? Function(UrlCell value)? url,
    TResult? Function(HeaderCell value)? header,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownCell value)? unknown,
    TResult Function(BrainstormingCell value)? brainstorming,
    TResult Function(EditableCell value)? editable,
    TResult Function(ImageCell value)? image,
    TResult Function(ArticleCell value)? article,
    TResult Function(UrlCell value)? url,
    TResult Function(HeaderCell value)? header,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Cell to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CellCopyWith<Cell> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CellCopyWith<$Res> {
  factory $CellCopyWith(Cell value, $Res Function(Cell) then) =
      _$CellCopyWithImpl<$Res, Cell>;
  @useResult
  $Res call(
      {int layer,
      @OffsetConverter() Offset offset,
      @CellIdConverter() CellId id,
      double? width,
      double? preferredWidth,
      double? height,
      double? preferredHeight,
      @CellDecorationConverter() CellDecoration decoration,
      bool selected,
      String? preContext});

  $CellIdCopyWith<$Res> get id;
  $CellDecorationCopyWith<$Res> get decoration;
}

/// @nodoc
class _$CellCopyWithImpl<$Res, $Val extends Cell>
    implements $CellCopyWith<$Res> {
  _$CellCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? layer = null,
    Object? offset = null,
    Object? id = null,
    Object? width = freezed,
    Object? preferredWidth = freezed,
    Object? height = freezed,
    Object? preferredHeight = freezed,
    Object? decoration = null,
    Object? selected = null,
    Object? preContext = freezed,
  }) {
    return _then(_value.copyWith(
      layer: null == layer
          ? _value.layer
          : layer // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CellId,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      preferredWidth: freezed == preferredWidth
          ? _value.preferredWidth
          : preferredWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      preferredHeight: freezed == preferredHeight
          ? _value.preferredHeight
          : preferredHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      decoration: null == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as CellDecoration,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      preContext: freezed == preContext
          ? _value.preContext
          : preContext // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CellIdCopyWith<$Res> get id {
    return $CellIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CellDecorationCopyWith<$Res> get decoration {
    return $CellDecorationCopyWith<$Res>(_value.decoration, (value) {
      return _then(_value.copyWith(decoration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UnknownCellImplCopyWith<$Res> implements $CellCopyWith<$Res> {
  factory _$$UnknownCellImplCopyWith(
          _$UnknownCellImpl value, $Res Function(_$UnknownCellImpl) then) =
      __$$UnknownCellImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int layer,
      @OffsetConverter() Offset offset,
      @CellIdConverter() CellId id,
      double? width,
      double? preferredWidth,
      double? height,
      double? preferredHeight,
      @CellDecorationConverter() CellDecoration decoration,
      bool selected,
      String? preContext});

  @override
  $CellIdCopyWith<$Res> get id;
  @override
  $CellDecorationCopyWith<$Res> get decoration;
}

/// @nodoc
class __$$UnknownCellImplCopyWithImpl<$Res>
    extends _$CellCopyWithImpl<$Res, _$UnknownCellImpl>
    implements _$$UnknownCellImplCopyWith<$Res> {
  __$$UnknownCellImplCopyWithImpl(
      _$UnknownCellImpl _value, $Res Function(_$UnknownCellImpl) _then)
      : super(_value, _then);

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? layer = null,
    Object? offset = null,
    Object? id = null,
    Object? width = freezed,
    Object? preferredWidth = freezed,
    Object? height = freezed,
    Object? preferredHeight = freezed,
    Object? decoration = null,
    Object? selected = null,
    Object? preContext = freezed,
  }) {
    return _then(_$UnknownCellImpl(
      layer: null == layer
          ? _value.layer
          : layer // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CellId,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      preferredWidth: freezed == preferredWidth
          ? _value.preferredWidth
          : preferredWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      preferredHeight: freezed == preferredHeight
          ? _value.preferredHeight
          : preferredHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      decoration: null == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as CellDecoration,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      preContext: freezed == preContext
          ? _value.preContext
          : preContext // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnknownCellImpl implements UnknownCell {
  const _$UnknownCellImpl(
      {this.layer = 10,
      @OffsetConverter() required this.offset,
      @CellIdConverter()
      this.id = const CellId(parentId: CellParentId(whiteboardId: ''), id: ''),
      this.width,
      this.preferredWidth,
      this.height,
      this.preferredHeight,
      @CellDecorationConverter()
      this.decoration = const CellDecoration(color: ''),
      this.selected = false,
      this.preContext,
      final String? $type})
      : $type = $type ?? 'unknown';

  factory _$UnknownCellImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnknownCellImplFromJson(json);

  @override
  @JsonKey()
  final int layer;
  @override
  @OffsetConverter()
  final Offset offset;
  @override
  @JsonKey()
  @CellIdConverter()
  final CellId id;
  @override
  final double? width;
  @override
  final double? preferredWidth;
  @override
  final double? height;

  /// A lazy height that will be calculated when the cell is rendered.
  @override
  final double? preferredHeight;
  @override
  @JsonKey()
  @CellDecorationConverter()
  final CellDecoration decoration;
  @override
  @JsonKey()
  final bool selected;
  @override
  final String? preContext;

  @JsonKey(name: 'cellType')
  final String $type;

  @override
  String toString() {
    return 'Cell.unknown(layer: $layer, offset: $offset, id: $id, width: $width, preferredWidth: $preferredWidth, height: $height, preferredHeight: $preferredHeight, decoration: $decoration, selected: $selected, preContext: $preContext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownCellImpl &&
            (identical(other.layer, layer) || other.layer == layer) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.preferredWidth, preferredWidth) ||
                other.preferredWidth == preferredWidth) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.preferredHeight, preferredHeight) ||
                other.preferredHeight == preferredHeight) &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.preContext, preContext) ||
                other.preContext == preContext));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      layer,
      offset,
      id,
      width,
      preferredWidth,
      height,
      preferredHeight,
      decoration,
      selected,
      preContext);

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownCellImplCopyWith<_$UnknownCellImpl> get copyWith =>
      __$$UnknownCellImplCopyWithImpl<_$UnknownCellImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext)
        unknown,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String? question,
            List<String> suggestions)
        brainstorming,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)
        editable,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)
        image,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)
        article,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)
        url,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title)
        header,
  }) {
    return unknown(layer, offset, id, width, preferredWidth, height,
        preferredHeight, decoration, selected, preContext);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext)?
        unknown,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String? question,
            List<String> suggestions)?
        brainstorming,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        editable,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        image,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        article,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        url,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title)?
        header,
  }) {
    return unknown?.call(layer, offset, id, width, preferredWidth, height,
        preferredHeight, decoration, selected, preContext);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext)?
        unknown,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String? question,
            List<String> suggestions)?
        brainstorming,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        editable,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        image,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        article,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        url,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title)?
        header,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(layer, offset, id, width, preferredWidth, height,
          preferredHeight, decoration, selected, preContext);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownCell value) unknown,
    required TResult Function(BrainstormingCell value) brainstorming,
    required TResult Function(EditableCell value) editable,
    required TResult Function(ImageCell value) image,
    required TResult Function(ArticleCell value) article,
    required TResult Function(UrlCell value) url,
    required TResult Function(HeaderCell value) header,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownCell value)? unknown,
    TResult? Function(BrainstormingCell value)? brainstorming,
    TResult? Function(EditableCell value)? editable,
    TResult? Function(ImageCell value)? image,
    TResult? Function(ArticleCell value)? article,
    TResult? Function(UrlCell value)? url,
    TResult? Function(HeaderCell value)? header,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownCell value)? unknown,
    TResult Function(BrainstormingCell value)? brainstorming,
    TResult Function(EditableCell value)? editable,
    TResult Function(ImageCell value)? image,
    TResult Function(ArticleCell value)? article,
    TResult Function(UrlCell value)? url,
    TResult Function(HeaderCell value)? header,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnknownCellImplToJson(
      this,
    );
  }
}

abstract class UnknownCell implements Cell {
  const factory UnknownCell(
      {final int layer,
      @OffsetConverter() required final Offset offset,
      @CellIdConverter() final CellId id,
      final double? width,
      final double? preferredWidth,
      final double? height,
      final double? preferredHeight,
      @CellDecorationConverter() final CellDecoration decoration,
      final bool selected,
      final String? preContext}) = _$UnknownCellImpl;

  factory UnknownCell.fromJson(Map<String, dynamic> json) =
      _$UnknownCellImpl.fromJson;

  @override
  int get layer;
  @override
  @OffsetConverter()
  Offset get offset;
  @override
  @CellIdConverter()
  CellId get id;
  @override
  double? get width;
  @override
  double? get preferredWidth;
  @override
  double? get height;

  /// A lazy height that will be calculated when the cell is rendered.
  @override
  double? get preferredHeight;
  @override
  @CellDecorationConverter()
  CellDecoration get decoration;
  @override
  bool get selected;
  @override
  String? get preContext;

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownCellImplCopyWith<_$UnknownCellImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BrainstormingCellImplCopyWith<$Res>
    implements $CellCopyWith<$Res> {
  factory _$$BrainstormingCellImplCopyWith(_$BrainstormingCellImpl value,
          $Res Function(_$BrainstormingCellImpl) then) =
      __$$BrainstormingCellImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int layer,
      @OffsetConverter() Offset offset,
      @CellIdConverter() CellId id,
      double? width,
      double? preferredWidth,
      double? height,
      double? preferredHeight,
      @CellDecorationConverter() CellDecoration decoration,
      bool selected,
      String? preContext,
      String? question,
      List<String> suggestions});

  @override
  $CellIdCopyWith<$Res> get id;
  @override
  $CellDecorationCopyWith<$Res> get decoration;
}

/// @nodoc
class __$$BrainstormingCellImplCopyWithImpl<$Res>
    extends _$CellCopyWithImpl<$Res, _$BrainstormingCellImpl>
    implements _$$BrainstormingCellImplCopyWith<$Res> {
  __$$BrainstormingCellImplCopyWithImpl(_$BrainstormingCellImpl _value,
      $Res Function(_$BrainstormingCellImpl) _then)
      : super(_value, _then);

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? layer = null,
    Object? offset = null,
    Object? id = null,
    Object? width = freezed,
    Object? preferredWidth = freezed,
    Object? height = freezed,
    Object? preferredHeight = freezed,
    Object? decoration = null,
    Object? selected = null,
    Object? preContext = freezed,
    Object? question = freezed,
    Object? suggestions = null,
  }) {
    return _then(_$BrainstormingCellImpl(
      layer: null == layer
          ? _value.layer
          : layer // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CellId,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      preferredWidth: freezed == preferredWidth
          ? _value.preferredWidth
          : preferredWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      preferredHeight: freezed == preferredHeight
          ? _value.preferredHeight
          : preferredHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      decoration: null == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as CellDecoration,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      preContext: freezed == preContext
          ? _value.preContext
          : preContext // ignore: cast_nullable_to_non_nullable
              as String?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      suggestions: null == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrainstormingCellImpl implements BrainstormingCell {
  const _$BrainstormingCellImpl(
      {this.layer = 9,
      @OffsetConverter() required this.offset,
      @CellIdConverter() required this.id,
      this.width,
      this.preferredWidth,
      this.height,
      this.preferredHeight,
      @CellDecorationConverter() required this.decoration,
      this.selected = false,
      this.preContext,
      required this.question,
      required final List<String> suggestions,
      final String? $type})
      : _suggestions = suggestions,
        $type = $type ?? 'brainstorming';

  factory _$BrainstormingCellImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrainstormingCellImplFromJson(json);

  @override
  @JsonKey()
  final int layer;
  @override
  @OffsetConverter()
  final Offset offset;
  @override
  @CellIdConverter()
  final CellId id;
  @override
  final double? width;
  @override
  final double? preferredWidth;
  @override
  final double? height;

  /// A lazy height that will be calculated when the cell is rendered.
  @override
  final double? preferredHeight;
  @override
  @CellDecorationConverter()
  final CellDecoration decoration;
  @override
  @JsonKey()
  final bool selected;
  @override
  final String? preContext;

  ///
  @override
  final String? question;
  final List<String> _suggestions;
  @override
  List<String> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @JsonKey(name: 'cellType')
  final String $type;

  @override
  String toString() {
    return 'Cell.brainstorming(layer: $layer, offset: $offset, id: $id, width: $width, preferredWidth: $preferredWidth, height: $height, preferredHeight: $preferredHeight, decoration: $decoration, selected: $selected, preContext: $preContext, question: $question, suggestions: $suggestions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrainstormingCellImpl &&
            (identical(other.layer, layer) || other.layer == layer) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.preferredWidth, preferredWidth) ||
                other.preferredWidth == preferredWidth) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.preferredHeight, preferredHeight) ||
                other.preferredHeight == preferredHeight) &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.preContext, preContext) ||
                other.preContext == preContext) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      layer,
      offset,
      id,
      width,
      preferredWidth,
      height,
      preferredHeight,
      decoration,
      selected,
      preContext,
      question,
      const DeepCollectionEquality().hash(_suggestions));

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrainstormingCellImplCopyWith<_$BrainstormingCellImpl> get copyWith =>
      __$$BrainstormingCellImplCopyWithImpl<_$BrainstormingCellImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext)
        unknown,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String? question,
            List<String> suggestions)
        brainstorming,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)
        editable,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)
        image,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)
        article,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)
        url,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title)
        header,
  }) {
    return brainstorming(
        layer,
        offset,
        id,
        width,
        preferredWidth,
        height,
        preferredHeight,
        decoration,
        selected,
        preContext,
        question,
        suggestions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext)?
        unknown,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String? question,
            List<String> suggestions)?
        brainstorming,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        editable,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        image,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        article,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        url,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title)?
        header,
  }) {
    return brainstorming?.call(
        layer,
        offset,
        id,
        width,
        preferredWidth,
        height,
        preferredHeight,
        decoration,
        selected,
        preContext,
        question,
        suggestions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext)?
        unknown,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String? question,
            List<String> suggestions)?
        brainstorming,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        editable,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        image,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        article,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        url,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title)?
        header,
    required TResult orElse(),
  }) {
    if (brainstorming != null) {
      return brainstorming(
          layer,
          offset,
          id,
          width,
          preferredWidth,
          height,
          preferredHeight,
          decoration,
          selected,
          preContext,
          question,
          suggestions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownCell value) unknown,
    required TResult Function(BrainstormingCell value) brainstorming,
    required TResult Function(EditableCell value) editable,
    required TResult Function(ImageCell value) image,
    required TResult Function(ArticleCell value) article,
    required TResult Function(UrlCell value) url,
    required TResult Function(HeaderCell value) header,
  }) {
    return brainstorming(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownCell value)? unknown,
    TResult? Function(BrainstormingCell value)? brainstorming,
    TResult? Function(EditableCell value)? editable,
    TResult? Function(ImageCell value)? image,
    TResult? Function(ArticleCell value)? article,
    TResult? Function(UrlCell value)? url,
    TResult? Function(HeaderCell value)? header,
  }) {
    return brainstorming?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownCell value)? unknown,
    TResult Function(BrainstormingCell value)? brainstorming,
    TResult Function(EditableCell value)? editable,
    TResult Function(ImageCell value)? image,
    TResult Function(ArticleCell value)? article,
    TResult Function(UrlCell value)? url,
    TResult Function(HeaderCell value)? header,
    required TResult orElse(),
  }) {
    if (brainstorming != null) {
      return brainstorming(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BrainstormingCellImplToJson(
      this,
    );
  }
}

abstract class BrainstormingCell implements Cell {
  const factory BrainstormingCell(
      {final int layer,
      @OffsetConverter() required final Offset offset,
      @CellIdConverter() required final CellId id,
      final double? width,
      final double? preferredWidth,
      final double? height,
      final double? preferredHeight,
      @CellDecorationConverter() required final CellDecoration decoration,
      final bool selected,
      final String? preContext,
      required final String? question,
      required final List<String> suggestions}) = _$BrainstormingCellImpl;

  factory BrainstormingCell.fromJson(Map<String, dynamic> json) =
      _$BrainstormingCellImpl.fromJson;

  @override
  int get layer;
  @override
  @OffsetConverter()
  Offset get offset;
  @override
  @CellIdConverter()
  CellId get id;
  @override
  double? get width;
  @override
  double? get preferredWidth;
  @override
  double? get height;

  /// A lazy height that will be calculated when the cell is rendered.
  @override
  double? get preferredHeight;
  @override
  @CellDecorationConverter()
  CellDecoration get decoration;
  @override
  bool get selected;
  @override
  String? get preContext;

  ///
  String? get question;
  List<String> get suggestions;

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrainstormingCellImplCopyWith<_$BrainstormingCellImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditableCellImplCopyWith<$Res>
    implements $CellCopyWith<$Res> {
  factory _$$EditableCellImplCopyWith(
          _$EditableCellImpl value, $Res Function(_$EditableCellImpl) then) =
      __$$EditableCellImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int layer,
      @OffsetConverter() Offset offset,
      @CellIdConverter() CellId id,
      double? width,
      double? preferredWidth,
      double? height,
      double? preferredHeight,
      @CellDecorationConverter() CellDecoration decoration,
      bool selected,
      String? preContext,
      String title,
      String content});

  @override
  $CellIdCopyWith<$Res> get id;
  @override
  $CellDecorationCopyWith<$Res> get decoration;
}

/// @nodoc
class __$$EditableCellImplCopyWithImpl<$Res>
    extends _$CellCopyWithImpl<$Res, _$EditableCellImpl>
    implements _$$EditableCellImplCopyWith<$Res> {
  __$$EditableCellImplCopyWithImpl(
      _$EditableCellImpl _value, $Res Function(_$EditableCellImpl) _then)
      : super(_value, _then);

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? layer = null,
    Object? offset = null,
    Object? id = null,
    Object? width = freezed,
    Object? preferredWidth = freezed,
    Object? height = freezed,
    Object? preferredHeight = freezed,
    Object? decoration = null,
    Object? selected = null,
    Object? preContext = freezed,
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_$EditableCellImpl(
      layer: null == layer
          ? _value.layer
          : layer // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CellId,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      preferredWidth: freezed == preferredWidth
          ? _value.preferredWidth
          : preferredWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      preferredHeight: freezed == preferredHeight
          ? _value.preferredHeight
          : preferredHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      decoration: null == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as CellDecoration,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      preContext: freezed == preContext
          ? _value.preContext
          : preContext // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditableCellImpl implements EditableCell {
  const _$EditableCellImpl(
      {this.layer = 10,
      @OffsetConverter() required this.offset,
      @CellIdConverter() required this.id,
      this.width,
      this.preferredWidth,
      this.height,
      this.preferredHeight,
      @CellDecorationConverter() required this.decoration,
      this.selected = false,
      this.preContext,
      required this.title,
      required this.content,
      final String? $type})
      : $type = $type ?? 'editable';

  factory _$EditableCellImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditableCellImplFromJson(json);

  @override
  @JsonKey()
  final int layer;
  @override
  @OffsetConverter()
  final Offset offset;
  @override
  @CellIdConverter()
  final CellId id;
  @override
  final double? width;
  @override
  final double? preferredWidth;
  @override
  final double? height;

  /// A lazy height that will be calculated when the cell is rendered.
  @override
  final double? preferredHeight;
  @override
  @CellDecorationConverter()
  final CellDecoration decoration;
  @override
  @JsonKey()
  final bool selected;
  @override
  final String? preContext;

  ///
  @override
  final String title;
  @override
  final String content;

  @JsonKey(name: 'cellType')
  final String $type;

  @override
  String toString() {
    return 'Cell.editable(layer: $layer, offset: $offset, id: $id, width: $width, preferredWidth: $preferredWidth, height: $height, preferredHeight: $preferredHeight, decoration: $decoration, selected: $selected, preContext: $preContext, title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditableCellImpl &&
            (identical(other.layer, layer) || other.layer == layer) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.preferredWidth, preferredWidth) ||
                other.preferredWidth == preferredWidth) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.preferredHeight, preferredHeight) ||
                other.preferredHeight == preferredHeight) &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.preContext, preContext) ||
                other.preContext == preContext) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      layer,
      offset,
      id,
      width,
      preferredWidth,
      height,
      preferredHeight,
      decoration,
      selected,
      preContext,
      title,
      content);

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditableCellImplCopyWith<_$EditableCellImpl> get copyWith =>
      __$$EditableCellImplCopyWithImpl<_$EditableCellImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext)
        unknown,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String? question,
            List<String> suggestions)
        brainstorming,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)
        editable,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)
        image,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)
        article,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)
        url,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title)
        header,
  }) {
    return editable(layer, offset, id, width, preferredWidth, height,
        preferredHeight, decoration, selected, preContext, title, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext)?
        unknown,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String? question,
            List<String> suggestions)?
        brainstorming,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        editable,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        image,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        article,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        url,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title)?
        header,
  }) {
    return editable?.call(layer, offset, id, width, preferredWidth, height,
        preferredHeight, decoration, selected, preContext, title, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext)?
        unknown,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String? question,
            List<String> suggestions)?
        brainstorming,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        editable,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        image,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        article,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        url,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title)?
        header,
    required TResult orElse(),
  }) {
    if (editable != null) {
      return editable(layer, offset, id, width, preferredWidth, height,
          preferredHeight, decoration, selected, preContext, title, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownCell value) unknown,
    required TResult Function(BrainstormingCell value) brainstorming,
    required TResult Function(EditableCell value) editable,
    required TResult Function(ImageCell value) image,
    required TResult Function(ArticleCell value) article,
    required TResult Function(UrlCell value) url,
    required TResult Function(HeaderCell value) header,
  }) {
    return editable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownCell value)? unknown,
    TResult? Function(BrainstormingCell value)? brainstorming,
    TResult? Function(EditableCell value)? editable,
    TResult? Function(ImageCell value)? image,
    TResult? Function(ArticleCell value)? article,
    TResult? Function(UrlCell value)? url,
    TResult? Function(HeaderCell value)? header,
  }) {
    return editable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownCell value)? unknown,
    TResult Function(BrainstormingCell value)? brainstorming,
    TResult Function(EditableCell value)? editable,
    TResult Function(ImageCell value)? image,
    TResult Function(ArticleCell value)? article,
    TResult Function(UrlCell value)? url,
    TResult Function(HeaderCell value)? header,
    required TResult orElse(),
  }) {
    if (editable != null) {
      return editable(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EditableCellImplToJson(
      this,
    );
  }
}

abstract class EditableCell implements Cell {
  const factory EditableCell(
      {final int layer,
      @OffsetConverter() required final Offset offset,
      @CellIdConverter() required final CellId id,
      final double? width,
      final double? preferredWidth,
      final double? height,
      final double? preferredHeight,
      @CellDecorationConverter() required final CellDecoration decoration,
      final bool selected,
      final String? preContext,
      required final String title,
      required final String content}) = _$EditableCellImpl;

  factory EditableCell.fromJson(Map<String, dynamic> json) =
      _$EditableCellImpl.fromJson;

  @override
  int get layer;
  @override
  @OffsetConverter()
  Offset get offset;
  @override
  @CellIdConverter()
  CellId get id;
  @override
  double? get width;
  @override
  double? get preferredWidth;
  @override
  double? get height;

  /// A lazy height that will be calculated when the cell is rendered.
  @override
  double? get preferredHeight;
  @override
  @CellDecorationConverter()
  CellDecoration get decoration;
  @override
  bool get selected;
  @override
  String? get preContext;

  ///
  String get title;
  String get content;

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditableCellImplCopyWith<_$EditableCellImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageCellImplCopyWith<$Res> implements $CellCopyWith<$Res> {
  factory _$$ImageCellImplCopyWith(
          _$ImageCellImpl value, $Res Function(_$ImageCellImpl) then) =
      __$$ImageCellImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int layer,
      @OffsetConverter() Offset offset,
      @CellIdConverter() CellId id,
      double? width,
      double? preferredWidth,
      double? height,
      double? preferredHeight,
      @CellDecorationConverter() CellDecoration decoration,
      bool selected,
      String? preContext,
      @UriConverter() Uri url});

  @override
  $CellIdCopyWith<$Res> get id;
  @override
  $CellDecorationCopyWith<$Res> get decoration;
}

/// @nodoc
class __$$ImageCellImplCopyWithImpl<$Res>
    extends _$CellCopyWithImpl<$Res, _$ImageCellImpl>
    implements _$$ImageCellImplCopyWith<$Res> {
  __$$ImageCellImplCopyWithImpl(
      _$ImageCellImpl _value, $Res Function(_$ImageCellImpl) _then)
      : super(_value, _then);

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? layer = null,
    Object? offset = null,
    Object? id = null,
    Object? width = freezed,
    Object? preferredWidth = freezed,
    Object? height = freezed,
    Object? preferredHeight = freezed,
    Object? decoration = null,
    Object? selected = null,
    Object? preContext = freezed,
    Object? url = null,
  }) {
    return _then(_$ImageCellImpl(
      layer: null == layer
          ? _value.layer
          : layer // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CellId,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      preferredWidth: freezed == preferredWidth
          ? _value.preferredWidth
          : preferredWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      preferredHeight: freezed == preferredHeight
          ? _value.preferredHeight
          : preferredHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      decoration: null == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as CellDecoration,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      preContext: freezed == preContext
          ? _value.preContext
          : preContext // ignore: cast_nullable_to_non_nullable
              as String?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageCellImpl implements ImageCell {
  const _$ImageCellImpl(
      {this.layer = 10,
      @OffsetConverter() required this.offset,
      @CellIdConverter() required this.id,
      this.width,
      this.preferredWidth,
      this.height,
      this.preferredHeight,
      @CellDecorationConverter() required this.decoration,
      this.selected = false,
      this.preContext,
      @UriConverter() required this.url,
      final String? $type})
      : $type = $type ?? 'image';

  factory _$ImageCellImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageCellImplFromJson(json);

  @override
  @JsonKey()
  final int layer;
  @override
  @OffsetConverter()
  final Offset offset;
  @override
  @CellIdConverter()
  final CellId id;
  @override
  final double? width;
  @override
  final double? preferredWidth;
  @override
  final double? height;

  /// A lazy height that will be calculated when the cell is rendered.
  @override
  final double? preferredHeight;
  @override
  @CellDecorationConverter()
  final CellDecoration decoration;
  @override
  @JsonKey()
  final bool selected;
  @override
  final String? preContext;

  ///
  @override
  @UriConverter()
  final Uri url;

  @JsonKey(name: 'cellType')
  final String $type;

  @override
  String toString() {
    return 'Cell.image(layer: $layer, offset: $offset, id: $id, width: $width, preferredWidth: $preferredWidth, height: $height, preferredHeight: $preferredHeight, decoration: $decoration, selected: $selected, preContext: $preContext, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageCellImpl &&
            (identical(other.layer, layer) || other.layer == layer) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.preferredWidth, preferredWidth) ||
                other.preferredWidth == preferredWidth) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.preferredHeight, preferredHeight) ||
                other.preferredHeight == preferredHeight) &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.preContext, preContext) ||
                other.preContext == preContext) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      layer,
      offset,
      id,
      width,
      preferredWidth,
      height,
      preferredHeight,
      decoration,
      selected,
      preContext,
      url);

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageCellImplCopyWith<_$ImageCellImpl> get copyWith =>
      __$$ImageCellImplCopyWithImpl<_$ImageCellImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext)
        unknown,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String? question,
            List<String> suggestions)
        brainstorming,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)
        editable,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)
        image,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)
        article,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)
        url,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title)
        header,
  }) {
    return image(layer, offset, id, width, preferredWidth, height,
        preferredHeight, decoration, selected, preContext, this.url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext)?
        unknown,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String? question,
            List<String> suggestions)?
        brainstorming,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        editable,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        image,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        article,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        url,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title)?
        header,
  }) {
    return image?.call(layer, offset, id, width, preferredWidth, height,
        preferredHeight, decoration, selected, preContext, this.url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext)?
        unknown,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String? question,
            List<String> suggestions)?
        brainstorming,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        editable,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        image,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        article,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        url,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title)?
        header,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(layer, offset, id, width, preferredWidth, height,
          preferredHeight, decoration, selected, preContext, this.url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownCell value) unknown,
    required TResult Function(BrainstormingCell value) brainstorming,
    required TResult Function(EditableCell value) editable,
    required TResult Function(ImageCell value) image,
    required TResult Function(ArticleCell value) article,
    required TResult Function(UrlCell value) url,
    required TResult Function(HeaderCell value) header,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownCell value)? unknown,
    TResult? Function(BrainstormingCell value)? brainstorming,
    TResult? Function(EditableCell value)? editable,
    TResult? Function(ImageCell value)? image,
    TResult? Function(ArticleCell value)? article,
    TResult? Function(UrlCell value)? url,
    TResult? Function(HeaderCell value)? header,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownCell value)? unknown,
    TResult Function(BrainstormingCell value)? brainstorming,
    TResult Function(EditableCell value)? editable,
    TResult Function(ImageCell value)? image,
    TResult Function(ArticleCell value)? article,
    TResult Function(UrlCell value)? url,
    TResult Function(HeaderCell value)? header,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageCellImplToJson(
      this,
    );
  }
}

abstract class ImageCell implements Cell {
  const factory ImageCell(
      {final int layer,
      @OffsetConverter() required final Offset offset,
      @CellIdConverter() required final CellId id,
      final double? width,
      final double? preferredWidth,
      final double? height,
      final double? preferredHeight,
      @CellDecorationConverter() required final CellDecoration decoration,
      final bool selected,
      final String? preContext,
      @UriConverter() required final Uri url}) = _$ImageCellImpl;

  factory ImageCell.fromJson(Map<String, dynamic> json) =
      _$ImageCellImpl.fromJson;

  @override
  int get layer;
  @override
  @OffsetConverter()
  Offset get offset;
  @override
  @CellIdConverter()
  CellId get id;
  @override
  double? get width;
  @override
  double? get preferredWidth;
  @override
  double? get height;

  /// A lazy height that will be calculated when the cell is rendered.
  @override
  double? get preferredHeight;
  @override
  @CellDecorationConverter()
  CellDecoration get decoration;
  @override
  bool get selected;
  @override
  String? get preContext;

  ///
  @UriConverter()
  Uri get url;

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageCellImplCopyWith<_$ImageCellImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArticleCellImplCopyWith<$Res> implements $CellCopyWith<$Res> {
  factory _$$ArticleCellImplCopyWith(
          _$ArticleCellImpl value, $Res Function(_$ArticleCellImpl) then) =
      __$$ArticleCellImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int layer,
      @OffsetConverter() Offset offset,
      @CellIdConverter() CellId id,
      double? width,
      double? preferredWidth,
      double? height,
      double? preferredHeight,
      @CellDecorationConverter() CellDecoration decoration,
      bool selected,
      String? preContext,
      String title,
      String content});

  @override
  $CellIdCopyWith<$Res> get id;
  @override
  $CellDecorationCopyWith<$Res> get decoration;
}

/// @nodoc
class __$$ArticleCellImplCopyWithImpl<$Res>
    extends _$CellCopyWithImpl<$Res, _$ArticleCellImpl>
    implements _$$ArticleCellImplCopyWith<$Res> {
  __$$ArticleCellImplCopyWithImpl(
      _$ArticleCellImpl _value, $Res Function(_$ArticleCellImpl) _then)
      : super(_value, _then);

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? layer = null,
    Object? offset = null,
    Object? id = null,
    Object? width = freezed,
    Object? preferredWidth = freezed,
    Object? height = freezed,
    Object? preferredHeight = freezed,
    Object? decoration = null,
    Object? selected = null,
    Object? preContext = freezed,
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_$ArticleCellImpl(
      layer: null == layer
          ? _value.layer
          : layer // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CellId,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      preferredWidth: freezed == preferredWidth
          ? _value.preferredWidth
          : preferredWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      preferredHeight: freezed == preferredHeight
          ? _value.preferredHeight
          : preferredHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      decoration: null == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as CellDecoration,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      preContext: freezed == preContext
          ? _value.preContext
          : preContext // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleCellImpl implements ArticleCell {
  const _$ArticleCellImpl(
      {this.layer = 10,
      @OffsetConverter() required this.offset,
      @CellIdConverter() required this.id,
      this.width,
      this.preferredWidth,
      this.height,
      this.preferredHeight,
      @CellDecorationConverter() required this.decoration,
      this.selected = false,
      this.preContext,
      required this.title,
      required this.content,
      final String? $type})
      : $type = $type ?? 'article';

  factory _$ArticleCellImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleCellImplFromJson(json);

  @override
  @JsonKey()
  final int layer;
  @override
  @OffsetConverter()
  final Offset offset;
  @override
  @CellIdConverter()
  final CellId id;
  @override
  final double? width;
  @override
  final double? preferredWidth;
  @override
  final double? height;

  /// A lazy height that will be calculated when the cell is rendered.
  @override
  final double? preferredHeight;
  @override
  @CellDecorationConverter()
  final CellDecoration decoration;
  @override
  @JsonKey()
  final bool selected;
  @override
  final String? preContext;

  ///
  @override
  final String title;
  @override
  final String content;

  @JsonKey(name: 'cellType')
  final String $type;

  @override
  String toString() {
    return 'Cell.article(layer: $layer, offset: $offset, id: $id, width: $width, preferredWidth: $preferredWidth, height: $height, preferredHeight: $preferredHeight, decoration: $decoration, selected: $selected, preContext: $preContext, title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleCellImpl &&
            (identical(other.layer, layer) || other.layer == layer) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.preferredWidth, preferredWidth) ||
                other.preferredWidth == preferredWidth) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.preferredHeight, preferredHeight) ||
                other.preferredHeight == preferredHeight) &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.preContext, preContext) ||
                other.preContext == preContext) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      layer,
      offset,
      id,
      width,
      preferredWidth,
      height,
      preferredHeight,
      decoration,
      selected,
      preContext,
      title,
      content);

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleCellImplCopyWith<_$ArticleCellImpl> get copyWith =>
      __$$ArticleCellImplCopyWithImpl<_$ArticleCellImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext)
        unknown,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String? question,
            List<String> suggestions)
        brainstorming,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)
        editable,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)
        image,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)
        article,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)
        url,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title)
        header,
  }) {
    return article(layer, offset, id, width, preferredWidth, height,
        preferredHeight, decoration, selected, preContext, title, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext)?
        unknown,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String? question,
            List<String> suggestions)?
        brainstorming,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        editable,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        image,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        article,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        url,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title)?
        header,
  }) {
    return article?.call(layer, offset, id, width, preferredWidth, height,
        preferredHeight, decoration, selected, preContext, title, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext)?
        unknown,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String? question,
            List<String> suggestions)?
        brainstorming,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        editable,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        image,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        article,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        url,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title)?
        header,
    required TResult orElse(),
  }) {
    if (article != null) {
      return article(layer, offset, id, width, preferredWidth, height,
          preferredHeight, decoration, selected, preContext, title, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownCell value) unknown,
    required TResult Function(BrainstormingCell value) brainstorming,
    required TResult Function(EditableCell value) editable,
    required TResult Function(ImageCell value) image,
    required TResult Function(ArticleCell value) article,
    required TResult Function(UrlCell value) url,
    required TResult Function(HeaderCell value) header,
  }) {
    return article(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownCell value)? unknown,
    TResult? Function(BrainstormingCell value)? brainstorming,
    TResult? Function(EditableCell value)? editable,
    TResult? Function(ImageCell value)? image,
    TResult? Function(ArticleCell value)? article,
    TResult? Function(UrlCell value)? url,
    TResult? Function(HeaderCell value)? header,
  }) {
    return article?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownCell value)? unknown,
    TResult Function(BrainstormingCell value)? brainstorming,
    TResult Function(EditableCell value)? editable,
    TResult Function(ImageCell value)? image,
    TResult Function(ArticleCell value)? article,
    TResult Function(UrlCell value)? url,
    TResult Function(HeaderCell value)? header,
    required TResult orElse(),
  }) {
    if (article != null) {
      return article(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleCellImplToJson(
      this,
    );
  }
}

abstract class ArticleCell implements Cell {
  const factory ArticleCell(
      {final int layer,
      @OffsetConverter() required final Offset offset,
      @CellIdConverter() required final CellId id,
      final double? width,
      final double? preferredWidth,
      final double? height,
      final double? preferredHeight,
      @CellDecorationConverter() required final CellDecoration decoration,
      final bool selected,
      final String? preContext,
      required final String title,
      required final String content}) = _$ArticleCellImpl;

  factory ArticleCell.fromJson(Map<String, dynamic> json) =
      _$ArticleCellImpl.fromJson;

  @override
  int get layer;
  @override
  @OffsetConverter()
  Offset get offset;
  @override
  @CellIdConverter()
  CellId get id;
  @override
  double? get width;
  @override
  double? get preferredWidth;
  @override
  double? get height;

  /// A lazy height that will be calculated when the cell is rendered.
  @override
  double? get preferredHeight;
  @override
  @CellDecorationConverter()
  CellDecoration get decoration;
  @override
  bool get selected;
  @override
  String? get preContext;

  ///
  String get title;
  String get content;

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticleCellImplCopyWith<_$ArticleCellImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UrlCellImplCopyWith<$Res> implements $CellCopyWith<$Res> {
  factory _$$UrlCellImplCopyWith(
          _$UrlCellImpl value, $Res Function(_$UrlCellImpl) then) =
      __$$UrlCellImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int layer,
      @OffsetConverter() Offset offset,
      @CellIdConverter() CellId id,
      double? width,
      double? preferredWidth,
      double? height,
      double? preferredHeight,
      @CellDecorationConverter() CellDecoration decoration,
      bool selected,
      String? preContext,
      @UriConverter() Uri url});

  @override
  $CellIdCopyWith<$Res> get id;
  @override
  $CellDecorationCopyWith<$Res> get decoration;
}

/// @nodoc
class __$$UrlCellImplCopyWithImpl<$Res>
    extends _$CellCopyWithImpl<$Res, _$UrlCellImpl>
    implements _$$UrlCellImplCopyWith<$Res> {
  __$$UrlCellImplCopyWithImpl(
      _$UrlCellImpl _value, $Res Function(_$UrlCellImpl) _then)
      : super(_value, _then);

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? layer = null,
    Object? offset = null,
    Object? id = null,
    Object? width = freezed,
    Object? preferredWidth = freezed,
    Object? height = freezed,
    Object? preferredHeight = freezed,
    Object? decoration = null,
    Object? selected = null,
    Object? preContext = freezed,
    Object? url = null,
  }) {
    return _then(_$UrlCellImpl(
      layer: null == layer
          ? _value.layer
          : layer // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CellId,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      preferredWidth: freezed == preferredWidth
          ? _value.preferredWidth
          : preferredWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      preferredHeight: freezed == preferredHeight
          ? _value.preferredHeight
          : preferredHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      decoration: null == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as CellDecoration,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      preContext: freezed == preContext
          ? _value.preContext
          : preContext // ignore: cast_nullable_to_non_nullable
              as String?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UrlCellImpl implements UrlCell {
  const _$UrlCellImpl(
      {this.layer = 10,
      @OffsetConverter() required this.offset,
      @CellIdConverter() required this.id,
      this.width,
      this.preferredWidth,
      this.height,
      this.preferredHeight,
      @CellDecorationConverter() required this.decoration,
      this.selected = false,
      this.preContext,
      @UriConverter() required this.url,
      final String? $type})
      : $type = $type ?? 'url';

  factory _$UrlCellImpl.fromJson(Map<String, dynamic> json) =>
      _$$UrlCellImplFromJson(json);

  @override
  @JsonKey()
  final int layer;
  @override
  @OffsetConverter()
  final Offset offset;
  @override
  @CellIdConverter()
  final CellId id;
  @override
  final double? width;
  @override
  final double? preferredWidth;
  @override
  final double? height;

  /// A lazy height that will be calculated when the cell is rendered.
  @override
  final double? preferredHeight;
  @override
  @CellDecorationConverter()
  final CellDecoration decoration;
  @override
  @JsonKey()
  final bool selected;
  @override
  final String? preContext;

  ///
  @override
  @UriConverter()
  final Uri url;

  @JsonKey(name: 'cellType')
  final String $type;

  @override
  String toString() {
    return 'Cell.url(layer: $layer, offset: $offset, id: $id, width: $width, preferredWidth: $preferredWidth, height: $height, preferredHeight: $preferredHeight, decoration: $decoration, selected: $selected, preContext: $preContext, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrlCellImpl &&
            (identical(other.layer, layer) || other.layer == layer) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.preferredWidth, preferredWidth) ||
                other.preferredWidth == preferredWidth) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.preferredHeight, preferredHeight) ||
                other.preferredHeight == preferredHeight) &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.preContext, preContext) ||
                other.preContext == preContext) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      layer,
      offset,
      id,
      width,
      preferredWidth,
      height,
      preferredHeight,
      decoration,
      selected,
      preContext,
      url);

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UrlCellImplCopyWith<_$UrlCellImpl> get copyWith =>
      __$$UrlCellImplCopyWithImpl<_$UrlCellImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext)
        unknown,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String? question,
            List<String> suggestions)
        brainstorming,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)
        editable,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)
        image,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)
        article,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)
        url,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title)
        header,
  }) {
    return url(layer, offset, id, width, preferredWidth, height,
        preferredHeight, decoration, selected, preContext, this.url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext)?
        unknown,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String? question,
            List<String> suggestions)?
        brainstorming,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        editable,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        image,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        article,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        url,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title)?
        header,
  }) {
    return url?.call(layer, offset, id, width, preferredWidth, height,
        preferredHeight, decoration, selected, preContext, this.url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext)?
        unknown,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String? question,
            List<String> suggestions)?
        brainstorming,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        editable,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        image,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        article,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        url,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title)?
        header,
    required TResult orElse(),
  }) {
    if (url != null) {
      return url(layer, offset, id, width, preferredWidth, height,
          preferredHeight, decoration, selected, preContext, this.url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownCell value) unknown,
    required TResult Function(BrainstormingCell value) brainstorming,
    required TResult Function(EditableCell value) editable,
    required TResult Function(ImageCell value) image,
    required TResult Function(ArticleCell value) article,
    required TResult Function(UrlCell value) url,
    required TResult Function(HeaderCell value) header,
  }) {
    return url(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownCell value)? unknown,
    TResult? Function(BrainstormingCell value)? brainstorming,
    TResult? Function(EditableCell value)? editable,
    TResult? Function(ImageCell value)? image,
    TResult? Function(ArticleCell value)? article,
    TResult? Function(UrlCell value)? url,
    TResult? Function(HeaderCell value)? header,
  }) {
    return url?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownCell value)? unknown,
    TResult Function(BrainstormingCell value)? brainstorming,
    TResult Function(EditableCell value)? editable,
    TResult Function(ImageCell value)? image,
    TResult Function(ArticleCell value)? article,
    TResult Function(UrlCell value)? url,
    TResult Function(HeaderCell value)? header,
    required TResult orElse(),
  }) {
    if (url != null) {
      return url(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UrlCellImplToJson(
      this,
    );
  }
}

abstract class UrlCell implements Cell {
  const factory UrlCell(
      {final int layer,
      @OffsetConverter() required final Offset offset,
      @CellIdConverter() required final CellId id,
      final double? width,
      final double? preferredWidth,
      final double? height,
      final double? preferredHeight,
      @CellDecorationConverter() required final CellDecoration decoration,
      final bool selected,
      final String? preContext,
      @UriConverter() required final Uri url}) = _$UrlCellImpl;

  factory UrlCell.fromJson(Map<String, dynamic> json) = _$UrlCellImpl.fromJson;

  @override
  int get layer;
  @override
  @OffsetConverter()
  Offset get offset;
  @override
  @CellIdConverter()
  CellId get id;
  @override
  double? get width;
  @override
  double? get preferredWidth;
  @override
  double? get height;

  /// A lazy height that will be calculated when the cell is rendered.
  @override
  double? get preferredHeight;
  @override
  @CellDecorationConverter()
  CellDecoration get decoration;
  @override
  bool get selected;
  @override
  String? get preContext;

  ///
  @UriConverter()
  Uri get url;

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UrlCellImplCopyWith<_$UrlCellImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HeaderCellImplCopyWith<$Res> implements $CellCopyWith<$Res> {
  factory _$$HeaderCellImplCopyWith(
          _$HeaderCellImpl value, $Res Function(_$HeaderCellImpl) then) =
      __$$HeaderCellImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int layer,
      @OffsetConverter() Offset offset,
      @CellIdConverter() CellId id,
      double? width,
      double? preferredWidth,
      double? height,
      double? preferredHeight,
      @CellDecorationConverter() CellDecoration decoration,
      bool selected,
      String? preContext,
      String title});

  @override
  $CellIdCopyWith<$Res> get id;
  @override
  $CellDecorationCopyWith<$Res> get decoration;
}

/// @nodoc
class __$$HeaderCellImplCopyWithImpl<$Res>
    extends _$CellCopyWithImpl<$Res, _$HeaderCellImpl>
    implements _$$HeaderCellImplCopyWith<$Res> {
  __$$HeaderCellImplCopyWithImpl(
      _$HeaderCellImpl _value, $Res Function(_$HeaderCellImpl) _then)
      : super(_value, _then);

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? layer = null,
    Object? offset = null,
    Object? id = null,
    Object? width = freezed,
    Object? preferredWidth = freezed,
    Object? height = freezed,
    Object? preferredHeight = freezed,
    Object? decoration = null,
    Object? selected = null,
    Object? preContext = freezed,
    Object? title = null,
  }) {
    return _then(_$HeaderCellImpl(
      layer: null == layer
          ? _value.layer
          : layer // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CellId,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      preferredWidth: freezed == preferredWidth
          ? _value.preferredWidth
          : preferredWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      preferredHeight: freezed == preferredHeight
          ? _value.preferredHeight
          : preferredHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      decoration: null == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as CellDecoration,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      preContext: freezed == preContext
          ? _value.preContext
          : preContext // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeaderCellImpl implements HeaderCell {
  const _$HeaderCellImpl(
      {this.layer = 10,
      @OffsetConverter() required this.offset,
      @CellIdConverter() required this.id,
      this.width,
      this.preferredWidth,
      this.height,
      this.preferredHeight,
      @CellDecorationConverter() required this.decoration,
      this.selected = false,
      this.preContext,
      required this.title,
      final String? $type})
      : $type = $type ?? 'header';

  factory _$HeaderCellImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeaderCellImplFromJson(json);

  @override
  @JsonKey()
  final int layer;
  @override
  @OffsetConverter()
  final Offset offset;
  @override
  @CellIdConverter()
  final CellId id;
  @override
  final double? width;
  @override
  final double? preferredWidth;
  @override
  final double? height;

  /// A lazy height that will be calculated when the cell is rendered.
  @override
  final double? preferredHeight;
  @override
  @CellDecorationConverter()
  final CellDecoration decoration;
  @override
  @JsonKey()
  final bool selected;
  @override
  final String? preContext;

  ///
  @override
  final String title;

  @JsonKey(name: 'cellType')
  final String $type;

  @override
  String toString() {
    return 'Cell.header(layer: $layer, offset: $offset, id: $id, width: $width, preferredWidth: $preferredWidth, height: $height, preferredHeight: $preferredHeight, decoration: $decoration, selected: $selected, preContext: $preContext, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeaderCellImpl &&
            (identical(other.layer, layer) || other.layer == layer) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.preferredWidth, preferredWidth) ||
                other.preferredWidth == preferredWidth) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.preferredHeight, preferredHeight) ||
                other.preferredHeight == preferredHeight) &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.preContext, preContext) ||
                other.preContext == preContext) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      layer,
      offset,
      id,
      width,
      preferredWidth,
      height,
      preferredHeight,
      decoration,
      selected,
      preContext,
      title);

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeaderCellImplCopyWith<_$HeaderCellImpl> get copyWith =>
      __$$HeaderCellImplCopyWithImpl<_$HeaderCellImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext)
        unknown,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String? question,
            List<String> suggestions)
        brainstorming,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)
        editable,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)
        image,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)
        article,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)
        url,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title)
        header,
  }) {
    return header(layer, offset, id, width, preferredWidth, height,
        preferredHeight, decoration, selected, preContext, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext)?
        unknown,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String? question,
            List<String> suggestions)?
        brainstorming,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        editable,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        image,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        article,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        url,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title)?
        header,
  }) {
    return header?.call(layer, offset, id, width, preferredWidth, height,
        preferredHeight, decoration, selected, preContext, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext)?
        unknown,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String? question,
            List<String> suggestions)?
        brainstorming,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        editable,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        image,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title,
            String content)?
        article,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            @UriConverter() Uri url)?
        url,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double? width,
            double? preferredWidth,
            double? height,
            double? preferredHeight,
            @CellDecorationConverter() CellDecoration decoration,
            bool selected,
            String? preContext,
            String title)?
        header,
    required TResult orElse(),
  }) {
    if (header != null) {
      return header(layer, offset, id, width, preferredWidth, height,
          preferredHeight, decoration, selected, preContext, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownCell value) unknown,
    required TResult Function(BrainstormingCell value) brainstorming,
    required TResult Function(EditableCell value) editable,
    required TResult Function(ImageCell value) image,
    required TResult Function(ArticleCell value) article,
    required TResult Function(UrlCell value) url,
    required TResult Function(HeaderCell value) header,
  }) {
    return header(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownCell value)? unknown,
    TResult? Function(BrainstormingCell value)? brainstorming,
    TResult? Function(EditableCell value)? editable,
    TResult? Function(ImageCell value)? image,
    TResult? Function(ArticleCell value)? article,
    TResult? Function(UrlCell value)? url,
    TResult? Function(HeaderCell value)? header,
  }) {
    return header?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownCell value)? unknown,
    TResult Function(BrainstormingCell value)? brainstorming,
    TResult Function(EditableCell value)? editable,
    TResult Function(ImageCell value)? image,
    TResult Function(ArticleCell value)? article,
    TResult Function(UrlCell value)? url,
    TResult Function(HeaderCell value)? header,
    required TResult orElse(),
  }) {
    if (header != null) {
      return header(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$HeaderCellImplToJson(
      this,
    );
  }
}

abstract class HeaderCell implements Cell {
  const factory HeaderCell(
      {final int layer,
      @OffsetConverter() required final Offset offset,
      @CellIdConverter() required final CellId id,
      final double? width,
      final double? preferredWidth,
      final double? height,
      final double? preferredHeight,
      @CellDecorationConverter() required final CellDecoration decoration,
      final bool selected,
      final String? preContext,
      required final String title}) = _$HeaderCellImpl;

  factory HeaderCell.fromJson(Map<String, dynamic> json) =
      _$HeaderCellImpl.fromJson;

  @override
  int get layer;
  @override
  @OffsetConverter()
  Offset get offset;
  @override
  @CellIdConverter()
  CellId get id;
  @override
  double? get width;
  @override
  double? get preferredWidth;
  @override
  double? get height;

  /// A lazy height that will be calculated when the cell is rendered.
  @override
  double? get preferredHeight;
  @override
  @CellDecorationConverter()
  CellDecoration get decoration;
  @override
  bool get selected;
  @override
  String? get preContext;

  ///
  String get title;

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeaderCellImplCopyWith<_$HeaderCellImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
