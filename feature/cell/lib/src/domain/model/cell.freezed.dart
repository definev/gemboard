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
class _$CellParentIdImpl implements _CellParentId {
  const _$CellParentIdImpl({required this.whiteboardId});

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

abstract class _CellParentId implements CellParentId {
  const factory _CellParentId({required final String whiteboardId}) =
      _$CellParentIdImpl;

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
    case 'text':
      return _TextCell.fromJson(json);
    case 'image':
      return _ImageCell.fromJson(json);
    case 'article':
      return _ArticleCell.fromJson(json);
    case 'url':
      return _UrlCell.fromJson(json);

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
  double get width => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  @CellDecorationConverter()
  CellDecoration get decoration => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String text)
        text,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String? url,
            String? filePath)
        image,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String title,
            String content,
            bool editable)
        article,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String url)
        url,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String text)?
        text,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String? url,
            String? filePath)?
        image,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String title,
            String content,
            bool editable)?
        article,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String url)?
        url,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String text)?
        text,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String? url,
            String? filePath)?
        image,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String title,
            String content,
            bool editable)?
        article,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String url)?
        url,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextCell value) text,
    required TResult Function(_ImageCell value) image,
    required TResult Function(_ArticleCell value) article,
    required TResult Function(_UrlCell value) url,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TextCell value)? text,
    TResult? Function(_ImageCell value)? image,
    TResult? Function(_ArticleCell value)? article,
    TResult? Function(_UrlCell value)? url,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextCell value)? text,
    TResult Function(_ImageCell value)? image,
    TResult Function(_ArticleCell value)? article,
    TResult Function(_UrlCell value)? url,
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
      double width,
      double? height,
      @CellDecorationConverter() CellDecoration decoration});

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
    Object? width = null,
    Object? height = freezed,
    Object? decoration = null,
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
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      decoration: null == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as CellDecoration,
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
abstract class _$$TextCellImplCopyWith<$Res> implements $CellCopyWith<$Res> {
  factory _$$TextCellImplCopyWith(
          _$TextCellImpl value, $Res Function(_$TextCellImpl) then) =
      __$$TextCellImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int layer,
      @OffsetConverter() Offset offset,
      @CellIdConverter() CellId id,
      double width,
      double? height,
      @CellDecorationConverter() CellDecoration decoration,
      String text});

  @override
  $CellIdCopyWith<$Res> get id;
  @override
  $CellDecorationCopyWith<$Res> get decoration;
}

/// @nodoc
class __$$TextCellImplCopyWithImpl<$Res>
    extends _$CellCopyWithImpl<$Res, _$TextCellImpl>
    implements _$$TextCellImplCopyWith<$Res> {
  __$$TextCellImplCopyWithImpl(
      _$TextCellImpl _value, $Res Function(_$TextCellImpl) _then)
      : super(_value, _then);

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? layer = null,
    Object? offset = null,
    Object? id = null,
    Object? width = null,
    Object? height = freezed,
    Object? decoration = null,
    Object? text = null,
  }) {
    return _then(_$TextCellImpl(
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
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      decoration: null == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as CellDecoration,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextCellImpl implements _TextCell {
  const _$TextCellImpl(
      {this.layer = 10,
      @OffsetConverter() required this.offset,
      @CellIdConverter() required this.id,
      required this.width,
      this.height,
      @CellDecorationConverter() required this.decoration,
      required this.text,
      final String? $type})
      : $type = $type ?? 'text';

  factory _$TextCellImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextCellImplFromJson(json);

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
  final double width;
  @override
  final double? height;
  @override
  @CellDecorationConverter()
  final CellDecoration decoration;
  @override
  final String text;

  @JsonKey(name: 'cellType')
  final String $type;

  @override
  String toString() {
    return 'Cell.text(layer: $layer, offset: $offset, id: $id, width: $width, height: $height, decoration: $decoration, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextCellImpl &&
            (identical(other.layer, layer) || other.layer == layer) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, layer, offset, id, width, height, decoration, text);

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextCellImplCopyWith<_$TextCellImpl> get copyWith =>
      __$$TextCellImplCopyWithImpl<_$TextCellImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String text)
        text,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String? url,
            String? filePath)
        image,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String title,
            String content,
            bool editable)
        article,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String url)
        url,
  }) {
    return text(layer, offset, id, width, height, decoration, this.text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String text)?
        text,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String? url,
            String? filePath)?
        image,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String title,
            String content,
            bool editable)?
        article,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String url)?
        url,
  }) {
    return text?.call(layer, offset, id, width, height, decoration, this.text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String text)?
        text,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String? url,
            String? filePath)?
        image,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String title,
            String content,
            bool editable)?
        article,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String url)?
        url,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(layer, offset, id, width, height, decoration, this.text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextCell value) text,
    required TResult Function(_ImageCell value) image,
    required TResult Function(_ArticleCell value) article,
    required TResult Function(_UrlCell value) url,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TextCell value)? text,
    TResult? Function(_ImageCell value)? image,
    TResult? Function(_ArticleCell value)? article,
    TResult? Function(_UrlCell value)? url,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextCell value)? text,
    TResult Function(_ImageCell value)? image,
    TResult Function(_ArticleCell value)? article,
    TResult Function(_UrlCell value)? url,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TextCellImplToJson(
      this,
    );
  }
}

abstract class _TextCell implements Cell {
  const factory _TextCell(
      {final int layer,
      @OffsetConverter() required final Offset offset,
      @CellIdConverter() required final CellId id,
      required final double width,
      final double? height,
      @CellDecorationConverter() required final CellDecoration decoration,
      required final String text}) = _$TextCellImpl;

  factory _TextCell.fromJson(Map<String, dynamic> json) =
      _$TextCellImpl.fromJson;

  @override
  int get layer;
  @override
  @OffsetConverter()
  Offset get offset;
  @override
  @CellIdConverter()
  CellId get id;
  @override
  double get width;
  @override
  double? get height;
  @override
  @CellDecorationConverter()
  CellDecoration get decoration;
  String get text;

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextCellImplCopyWith<_$TextCellImpl> get copyWith =>
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
      double width,
      double? height,
      @CellDecorationConverter() CellDecoration decoration,
      String? url,
      String? filePath});

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
    Object? width = null,
    Object? height = freezed,
    Object? decoration = null,
    Object? url = freezed,
    Object? filePath = freezed,
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
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      decoration: null == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as CellDecoration,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageCellImpl implements _ImageCell {
  const _$ImageCellImpl(
      {this.layer = 10,
      @OffsetConverter() required this.offset,
      @CellIdConverter() required this.id,
      required this.width,
      this.height,
      @CellDecorationConverter() required this.decoration,
      this.url,
      this.filePath,
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
  final double width;
  @override
  final double? height;
  @override
  @CellDecorationConverter()
  final CellDecoration decoration;
  @override
  final String? url;
  @override
  final String? filePath;

  @JsonKey(name: 'cellType')
  final String $type;

  @override
  String toString() {
    return 'Cell.image(layer: $layer, offset: $offset, id: $id, width: $width, height: $height, decoration: $decoration, url: $url, filePath: $filePath)';
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
            (identical(other.height, height) || other.height == height) &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, layer, offset, id, width, height, decoration, url, filePath);

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
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String text)
        text,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String? url,
            String? filePath)
        image,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String title,
            String content,
            bool editable)
        article,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String url)
        url,
  }) {
    return image(
        layer, offset, id, width, height, decoration, this.url, filePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String text)?
        text,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String? url,
            String? filePath)?
        image,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String title,
            String content,
            bool editable)?
        article,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String url)?
        url,
  }) {
    return image?.call(
        layer, offset, id, width, height, decoration, this.url, filePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String text)?
        text,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String? url,
            String? filePath)?
        image,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String title,
            String content,
            bool editable)?
        article,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String url)?
        url,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(
          layer, offset, id, width, height, decoration, this.url, filePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextCell value) text,
    required TResult Function(_ImageCell value) image,
    required TResult Function(_ArticleCell value) article,
    required TResult Function(_UrlCell value) url,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TextCell value)? text,
    TResult? Function(_ImageCell value)? image,
    TResult? Function(_ArticleCell value)? article,
    TResult? Function(_UrlCell value)? url,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextCell value)? text,
    TResult Function(_ImageCell value)? image,
    TResult Function(_ArticleCell value)? article,
    TResult Function(_UrlCell value)? url,
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

abstract class _ImageCell implements Cell {
  const factory _ImageCell(
      {final int layer,
      @OffsetConverter() required final Offset offset,
      @CellIdConverter() required final CellId id,
      required final double width,
      final double? height,
      @CellDecorationConverter() required final CellDecoration decoration,
      final String? url,
      final String? filePath}) = _$ImageCellImpl;

  factory _ImageCell.fromJson(Map<String, dynamic> json) =
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
  double get width;
  @override
  double? get height;
  @override
  @CellDecorationConverter()
  CellDecoration get decoration;
  String? get url;
  String? get filePath;

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
      double width,
      double? height,
      @CellDecorationConverter() CellDecoration decoration,
      String title,
      String content,
      bool editable});

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
    Object? width = null,
    Object? height = freezed,
    Object? decoration = null,
    Object? title = null,
    Object? content = null,
    Object? editable = null,
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
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      decoration: null == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as CellDecoration,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      editable: null == editable
          ? _value.editable
          : editable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleCellImpl implements _ArticleCell {
  const _$ArticleCellImpl(
      {this.layer = 10,
      @OffsetConverter() required this.offset,
      @CellIdConverter() required this.id,
      required this.width,
      this.height,
      @CellDecorationConverter() required this.decoration,
      required this.title,
      required this.content,
      required this.editable,
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
  final double width;
  @override
  final double? height;
  @override
  @CellDecorationConverter()
  final CellDecoration decoration;
  @override
  final String title;
  @override
  final String content;
  @override
  final bool editable;

  @JsonKey(name: 'cellType')
  final String $type;

  @override
  String toString() {
    return 'Cell.article(layer: $layer, offset: $offset, id: $id, width: $width, height: $height, decoration: $decoration, title: $title, content: $content, editable: $editable)';
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
            (identical(other.height, height) || other.height == height) &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.editable, editable) ||
                other.editable == editable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, layer, offset, id, width, height,
      decoration, title, content, editable);

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
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String text)
        text,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String? url,
            String? filePath)
        image,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String title,
            String content,
            bool editable)
        article,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String url)
        url,
  }) {
    return article(
        layer, offset, id, width, height, decoration, title, content, editable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String text)?
        text,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String? url,
            String? filePath)?
        image,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String title,
            String content,
            bool editable)?
        article,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String url)?
        url,
  }) {
    return article?.call(
        layer, offset, id, width, height, decoration, title, content, editable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String text)?
        text,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String? url,
            String? filePath)?
        image,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String title,
            String content,
            bool editable)?
        article,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String url)?
        url,
    required TResult orElse(),
  }) {
    if (article != null) {
      return article(layer, offset, id, width, height, decoration, title,
          content, editable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextCell value) text,
    required TResult Function(_ImageCell value) image,
    required TResult Function(_ArticleCell value) article,
    required TResult Function(_UrlCell value) url,
  }) {
    return article(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TextCell value)? text,
    TResult? Function(_ImageCell value)? image,
    TResult? Function(_ArticleCell value)? article,
    TResult? Function(_UrlCell value)? url,
  }) {
    return article?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextCell value)? text,
    TResult Function(_ImageCell value)? image,
    TResult Function(_ArticleCell value)? article,
    TResult Function(_UrlCell value)? url,
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

abstract class _ArticleCell implements Cell {
  const factory _ArticleCell(
      {final int layer,
      @OffsetConverter() required final Offset offset,
      @CellIdConverter() required final CellId id,
      required final double width,
      final double? height,
      @CellDecorationConverter() required final CellDecoration decoration,
      required final String title,
      required final String content,
      required final bool editable}) = _$ArticleCellImpl;

  factory _ArticleCell.fromJson(Map<String, dynamic> json) =
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
  double get width;
  @override
  double? get height;
  @override
  @CellDecorationConverter()
  CellDecoration get decoration;
  String get title;
  String get content;
  bool get editable;

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
      double width,
      double? height,
      @CellDecorationConverter() CellDecoration decoration,
      String url});

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
    Object? width = null,
    Object? height = freezed,
    Object? decoration = null,
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
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      decoration: null == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as CellDecoration,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UrlCellImpl implements _UrlCell {
  const _$UrlCellImpl(
      {this.layer = 10,
      @OffsetConverter() required this.offset,
      @CellIdConverter() required this.id,
      required this.width,
      this.height,
      @CellDecorationConverter() required this.decoration,
      required this.url,
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
  final double width;
  @override
  final double? height;
  @override
  @CellDecorationConverter()
  final CellDecoration decoration;
  @override
  final String url;

  @JsonKey(name: 'cellType')
  final String $type;

  @override
  String toString() {
    return 'Cell.url(layer: $layer, offset: $offset, id: $id, width: $width, height: $height, decoration: $decoration, url: $url)';
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
            (identical(other.height, height) || other.height == height) &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, layer, offset, id, width, height, decoration, url);

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
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String text)
        text,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String? url,
            String? filePath)
        image,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String title,
            String content,
            bool editable)
        article,
    required TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String url)
        url,
  }) {
    return url(layer, offset, id, width, height, decoration, this.url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String text)?
        text,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String? url,
            String? filePath)?
        image,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String title,
            String content,
            bool editable)?
        article,
    TResult? Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String url)?
        url,
  }) {
    return url?.call(layer, offset, id, width, height, decoration, this.url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String text)?
        text,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String? url,
            String? filePath)?
        image,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String title,
            String content,
            bool editable)?
        article,
    TResult Function(
            int layer,
            @OffsetConverter() Offset offset,
            @CellIdConverter() CellId id,
            double width,
            double? height,
            @CellDecorationConverter() CellDecoration decoration,
            String url)?
        url,
    required TResult orElse(),
  }) {
    if (url != null) {
      return url(layer, offset, id, width, height, decoration, this.url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextCell value) text,
    required TResult Function(_ImageCell value) image,
    required TResult Function(_ArticleCell value) article,
    required TResult Function(_UrlCell value) url,
  }) {
    return url(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TextCell value)? text,
    TResult? Function(_ImageCell value)? image,
    TResult? Function(_ArticleCell value)? article,
    TResult? Function(_UrlCell value)? url,
  }) {
    return url?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextCell value)? text,
    TResult Function(_ImageCell value)? image,
    TResult Function(_ArticleCell value)? article,
    TResult Function(_UrlCell value)? url,
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

abstract class _UrlCell implements Cell {
  const factory _UrlCell(
      {final int layer,
      @OffsetConverter() required final Offset offset,
      @CellIdConverter() required final CellId id,
      required final double width,
      final double? height,
      @CellDecorationConverter() required final CellDecoration decoration,
      required final String url}) = _$UrlCellImpl;

  factory _UrlCell.fromJson(Map<String, dynamic> json) = _$UrlCellImpl.fromJson;

  @override
  int get layer;
  @override
  @OffsetConverter()
  Offset get offset;
  @override
  @CellIdConverter()
  CellId get id;
  @override
  double get width;
  @override
  double? get height;
  @override
  @CellDecorationConverter()
  CellDecoration get decoration;
  String get url;

  /// Create a copy of Cell
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UrlCellImplCopyWith<_$UrlCellImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
