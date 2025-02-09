// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cell.dart';

// ignore_for_file: type=lint
class $BrainstormingCellItemTable extends BrainstormingCellItem
    with TableInfo<$BrainstormingCellItemTable, BrainstormingCellItemData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BrainstormingCellItemTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _whiteboardIdMeta =
      const VerificationMeta('whiteboardId');
  @override
  late final GeneratedColumn<String> whiteboardId = GeneratedColumn<String>(
      'whiteboard_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cellIdMeta = const VerificationMeta('cellId');
  @override
  late final GeneratedColumn<String> cellId = GeneratedColumn<String>(
      'cell_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _offsetDxMeta =
      const VerificationMeta('offsetDx');
  @override
  late final GeneratedColumn<double> offsetDx = GeneratedColumn<double>(
      'offset_dx', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _offsetDyMeta =
      const VerificationMeta('offsetDy');
  @override
  late final GeneratedColumn<double> offsetDy = GeneratedColumn<double>(
      'offset_dy', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _widthMeta = const VerificationMeta('width');
  @override
  late final GeneratedColumn<double> width = GeneratedColumn<double>(
      'width', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _preferredWidthMeta =
      const VerificationMeta('preferredWidth');
  @override
  late final GeneratedColumn<double> preferredWidth = GeneratedColumn<double>(
      'preferred_width', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<double> height = GeneratedColumn<double>(
      'height', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _preferredHeightMeta =
      const VerificationMeta('preferredHeight');
  @override
  late final GeneratedColumn<double> preferredHeight = GeneratedColumn<double>(
      'preferred_height', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _layerMeta = const VerificationMeta('layer');
  @override
  late final GeneratedColumn<int> layer = GeneratedColumn<int>(
      'layer', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _selectedMeta =
      const VerificationMeta('selected');
  @override
  late final GeneratedColumn<bool> selected = GeneratedColumn<bool>(
      'selected', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("selected" IN (0, 1))'));
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
      'color', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cardKindMeta =
      const VerificationMeta('cardKind');
  @override
  late final GeneratedColumn<String> cardKind = GeneratedColumn<String>(
      'card_kind', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _constraintsMeta =
      const VerificationMeta('constraints');
  @override
  late final GeneratedColumn<bool> constraints = GeneratedColumn<bool>(
      'constraints', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("constraints" IN (0, 1))'));
  static const VerificationMeta _preContextMeta =
      const VerificationMeta('preContext');
  @override
  late final GeneratedColumn<String> preContext = GeneratedColumn<String>(
      'pre_context', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _questionMeta =
      const VerificationMeta('question');
  @override
  late final GeneratedColumn<String> question = GeneratedColumn<String>(
      'question', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _suggestionsMeta =
      const VerificationMeta('suggestions');
  @override
  late final GeneratedColumn<String> suggestions = GeneratedColumn<String>(
      'suggestions', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        whiteboardId,
        cellId,
        offsetDx,
        offsetDy,
        width,
        preferredWidth,
        height,
        preferredHeight,
        layer,
        selected,
        color,
        cardKind,
        constraints,
        preContext,
        question,
        suggestions
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'brainstorming_cell_item';
  @override
  VerificationContext validateIntegrity(
      Insertable<BrainstormingCellItemData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('whiteboard_id')) {
      context.handle(
          _whiteboardIdMeta,
          whiteboardId.isAcceptableOrUnknown(
              data['whiteboard_id']!, _whiteboardIdMeta));
    } else if (isInserting) {
      context.missing(_whiteboardIdMeta);
    }
    if (data.containsKey('cell_id')) {
      context.handle(_cellIdMeta,
          cellId.isAcceptableOrUnknown(data['cell_id']!, _cellIdMeta));
    } else if (isInserting) {
      context.missing(_cellIdMeta);
    }
    if (data.containsKey('offset_dx')) {
      context.handle(_offsetDxMeta,
          offsetDx.isAcceptableOrUnknown(data['offset_dx']!, _offsetDxMeta));
    } else if (isInserting) {
      context.missing(_offsetDxMeta);
    }
    if (data.containsKey('offset_dy')) {
      context.handle(_offsetDyMeta,
          offsetDy.isAcceptableOrUnknown(data['offset_dy']!, _offsetDyMeta));
    } else if (isInserting) {
      context.missing(_offsetDyMeta);
    }
    if (data.containsKey('width')) {
      context.handle(
          _widthMeta, width.isAcceptableOrUnknown(data['width']!, _widthMeta));
    }
    if (data.containsKey('preferred_width')) {
      context.handle(
          _preferredWidthMeta,
          preferredWidth.isAcceptableOrUnknown(
              data['preferred_width']!, _preferredWidthMeta));
    }
    if (data.containsKey('height')) {
      context.handle(_heightMeta,
          height.isAcceptableOrUnknown(data['height']!, _heightMeta));
    }
    if (data.containsKey('preferred_height')) {
      context.handle(
          _preferredHeightMeta,
          preferredHeight.isAcceptableOrUnknown(
              data['preferred_height']!, _preferredHeightMeta));
    }
    if (data.containsKey('layer')) {
      context.handle(
          _layerMeta, layer.isAcceptableOrUnknown(data['layer']!, _layerMeta));
    } else if (isInserting) {
      context.missing(_layerMeta);
    }
    if (data.containsKey('selected')) {
      context.handle(_selectedMeta,
          selected.isAcceptableOrUnknown(data['selected']!, _selectedMeta));
    } else if (isInserting) {
      context.missing(_selectedMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    if (data.containsKey('card_kind')) {
      context.handle(_cardKindMeta,
          cardKind.isAcceptableOrUnknown(data['card_kind']!, _cardKindMeta));
    } else if (isInserting) {
      context.missing(_cardKindMeta);
    }
    if (data.containsKey('constraints')) {
      context.handle(
          _constraintsMeta,
          constraints.isAcceptableOrUnknown(
              data['constraints']!, _constraintsMeta));
    } else if (isInserting) {
      context.missing(_constraintsMeta);
    }
    if (data.containsKey('pre_context')) {
      context.handle(
          _preContextMeta,
          preContext.isAcceptableOrUnknown(
              data['pre_context']!, _preContextMeta));
    }
    if (data.containsKey('question')) {
      context.handle(_questionMeta,
          question.isAcceptableOrUnknown(data['question']!, _questionMeta));
    }
    if (data.containsKey('suggestions')) {
      context.handle(
          _suggestionsMeta,
          suggestions.isAcceptableOrUnknown(
              data['suggestions']!, _suggestionsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BrainstormingCellItemData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BrainstormingCellItemData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      whiteboardId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}whiteboard_id'])!,
      cellId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cell_id'])!,
      offsetDx: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}offset_dx'])!,
      offsetDy: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}offset_dy'])!,
      width: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}width']),
      preferredWidth: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}preferred_width']),
      height: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}height']),
      preferredHeight: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}preferred_height']),
      layer: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}layer'])!,
      selected: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}selected'])!,
      color: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}color'])!,
      cardKind: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}card_kind'])!,
      constraints: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}constraints'])!,
      preContext: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pre_context']),
      question: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}question']),
      suggestions: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}suggestions']),
    );
  }

  @override
  $BrainstormingCellItemTable createAlias(String alias) {
    return $BrainstormingCellItemTable(attachedDatabase, alias);
  }
}

class BrainstormingCellItemData extends DataClass
    implements Insertable<BrainstormingCellItemData> {
  final int id;

  /// Identity related
  final String whiteboardId;
  final String cellId;

  /// Position related
  final double offsetDx;
  final double offsetDy;
  final double? width;
  final double? preferredWidth;
  final double? height;
  final double? preferredHeight;

  /// Decoration related
  final int layer;
  final bool selected;
  final String color;
  final String cardKind;
  final bool constraints;
  final String? preContext;
  final String? question;
  final String? suggestions;
  const BrainstormingCellItemData(
      {required this.id,
      required this.whiteboardId,
      required this.cellId,
      required this.offsetDx,
      required this.offsetDy,
      this.width,
      this.preferredWidth,
      this.height,
      this.preferredHeight,
      required this.layer,
      required this.selected,
      required this.color,
      required this.cardKind,
      required this.constraints,
      this.preContext,
      this.question,
      this.suggestions});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['whiteboard_id'] = Variable<String>(whiteboardId);
    map['cell_id'] = Variable<String>(cellId);
    map['offset_dx'] = Variable<double>(offsetDx);
    map['offset_dy'] = Variable<double>(offsetDy);
    if (!nullToAbsent || width != null) {
      map['width'] = Variable<double>(width);
    }
    if (!nullToAbsent || preferredWidth != null) {
      map['preferred_width'] = Variable<double>(preferredWidth);
    }
    if (!nullToAbsent || height != null) {
      map['height'] = Variable<double>(height);
    }
    if (!nullToAbsent || preferredHeight != null) {
      map['preferred_height'] = Variable<double>(preferredHeight);
    }
    map['layer'] = Variable<int>(layer);
    map['selected'] = Variable<bool>(selected);
    map['color'] = Variable<String>(color);
    map['card_kind'] = Variable<String>(cardKind);
    map['constraints'] = Variable<bool>(constraints);
    if (!nullToAbsent || preContext != null) {
      map['pre_context'] = Variable<String>(preContext);
    }
    if (!nullToAbsent || question != null) {
      map['question'] = Variable<String>(question);
    }
    if (!nullToAbsent || suggestions != null) {
      map['suggestions'] = Variable<String>(suggestions);
    }
    return map;
  }

  BrainstormingCellItemCompanion toCompanion(bool nullToAbsent) {
    return BrainstormingCellItemCompanion(
      id: Value(id),
      whiteboardId: Value(whiteboardId),
      cellId: Value(cellId),
      offsetDx: Value(offsetDx),
      offsetDy: Value(offsetDy),
      width:
          width == null && nullToAbsent ? const Value.absent() : Value(width),
      preferredWidth: preferredWidth == null && nullToAbsent
          ? const Value.absent()
          : Value(preferredWidth),
      height:
          height == null && nullToAbsent ? const Value.absent() : Value(height),
      preferredHeight: preferredHeight == null && nullToAbsent
          ? const Value.absent()
          : Value(preferredHeight),
      layer: Value(layer),
      selected: Value(selected),
      color: Value(color),
      cardKind: Value(cardKind),
      constraints: Value(constraints),
      preContext: preContext == null && nullToAbsent
          ? const Value.absent()
          : Value(preContext),
      question: question == null && nullToAbsent
          ? const Value.absent()
          : Value(question),
      suggestions: suggestions == null && nullToAbsent
          ? const Value.absent()
          : Value(suggestions),
    );
  }

  factory BrainstormingCellItemData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BrainstormingCellItemData(
      id: serializer.fromJson<int>(json['id']),
      whiteboardId: serializer.fromJson<String>(json['whiteboardId']),
      cellId: serializer.fromJson<String>(json['cellId']),
      offsetDx: serializer.fromJson<double>(json['offsetDx']),
      offsetDy: serializer.fromJson<double>(json['offsetDy']),
      width: serializer.fromJson<double?>(json['width']),
      preferredWidth: serializer.fromJson<double?>(json['preferredWidth']),
      height: serializer.fromJson<double?>(json['height']),
      preferredHeight: serializer.fromJson<double?>(json['preferredHeight']),
      layer: serializer.fromJson<int>(json['layer']),
      selected: serializer.fromJson<bool>(json['selected']),
      color: serializer.fromJson<String>(json['color']),
      cardKind: serializer.fromJson<String>(json['cardKind']),
      constraints: serializer.fromJson<bool>(json['constraints']),
      preContext: serializer.fromJson<String?>(json['preContext']),
      question: serializer.fromJson<String?>(json['question']),
      suggestions: serializer.fromJson<String?>(json['suggestions']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'whiteboardId': serializer.toJson<String>(whiteboardId),
      'cellId': serializer.toJson<String>(cellId),
      'offsetDx': serializer.toJson<double>(offsetDx),
      'offsetDy': serializer.toJson<double>(offsetDy),
      'width': serializer.toJson<double?>(width),
      'preferredWidth': serializer.toJson<double?>(preferredWidth),
      'height': serializer.toJson<double?>(height),
      'preferredHeight': serializer.toJson<double?>(preferredHeight),
      'layer': serializer.toJson<int>(layer),
      'selected': serializer.toJson<bool>(selected),
      'color': serializer.toJson<String>(color),
      'cardKind': serializer.toJson<String>(cardKind),
      'constraints': serializer.toJson<bool>(constraints),
      'preContext': serializer.toJson<String?>(preContext),
      'question': serializer.toJson<String?>(question),
      'suggestions': serializer.toJson<String?>(suggestions),
    };
  }

  BrainstormingCellItemData copyWith(
          {int? id,
          String? whiteboardId,
          String? cellId,
          double? offsetDx,
          double? offsetDy,
          Value<double?> width = const Value.absent(),
          Value<double?> preferredWidth = const Value.absent(),
          Value<double?> height = const Value.absent(),
          Value<double?> preferredHeight = const Value.absent(),
          int? layer,
          bool? selected,
          String? color,
          String? cardKind,
          bool? constraints,
          Value<String?> preContext = const Value.absent(),
          Value<String?> question = const Value.absent(),
          Value<String?> suggestions = const Value.absent()}) =>
      BrainstormingCellItemData(
        id: id ?? this.id,
        whiteboardId: whiteboardId ?? this.whiteboardId,
        cellId: cellId ?? this.cellId,
        offsetDx: offsetDx ?? this.offsetDx,
        offsetDy: offsetDy ?? this.offsetDy,
        width: width.present ? width.value : this.width,
        preferredWidth:
            preferredWidth.present ? preferredWidth.value : this.preferredWidth,
        height: height.present ? height.value : this.height,
        preferredHeight: preferredHeight.present
            ? preferredHeight.value
            : this.preferredHeight,
        layer: layer ?? this.layer,
        selected: selected ?? this.selected,
        color: color ?? this.color,
        cardKind: cardKind ?? this.cardKind,
        constraints: constraints ?? this.constraints,
        preContext: preContext.present ? preContext.value : this.preContext,
        question: question.present ? question.value : this.question,
        suggestions: suggestions.present ? suggestions.value : this.suggestions,
      );
  BrainstormingCellItemData copyWithCompanion(
      BrainstormingCellItemCompanion data) {
    return BrainstormingCellItemData(
      id: data.id.present ? data.id.value : this.id,
      whiteboardId: data.whiteboardId.present
          ? data.whiteboardId.value
          : this.whiteboardId,
      cellId: data.cellId.present ? data.cellId.value : this.cellId,
      offsetDx: data.offsetDx.present ? data.offsetDx.value : this.offsetDx,
      offsetDy: data.offsetDy.present ? data.offsetDy.value : this.offsetDy,
      width: data.width.present ? data.width.value : this.width,
      preferredWidth: data.preferredWidth.present
          ? data.preferredWidth.value
          : this.preferredWidth,
      height: data.height.present ? data.height.value : this.height,
      preferredHeight: data.preferredHeight.present
          ? data.preferredHeight.value
          : this.preferredHeight,
      layer: data.layer.present ? data.layer.value : this.layer,
      selected: data.selected.present ? data.selected.value : this.selected,
      color: data.color.present ? data.color.value : this.color,
      cardKind: data.cardKind.present ? data.cardKind.value : this.cardKind,
      constraints:
          data.constraints.present ? data.constraints.value : this.constraints,
      preContext:
          data.preContext.present ? data.preContext.value : this.preContext,
      question: data.question.present ? data.question.value : this.question,
      suggestions:
          data.suggestions.present ? data.suggestions.value : this.suggestions,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BrainstormingCellItemData(')
          ..write('id: $id, ')
          ..write('whiteboardId: $whiteboardId, ')
          ..write('cellId: $cellId, ')
          ..write('offsetDx: $offsetDx, ')
          ..write('offsetDy: $offsetDy, ')
          ..write('width: $width, ')
          ..write('preferredWidth: $preferredWidth, ')
          ..write('height: $height, ')
          ..write('preferredHeight: $preferredHeight, ')
          ..write('layer: $layer, ')
          ..write('selected: $selected, ')
          ..write('color: $color, ')
          ..write('cardKind: $cardKind, ')
          ..write('constraints: $constraints, ')
          ..write('preContext: $preContext, ')
          ..write('question: $question, ')
          ..write('suggestions: $suggestions')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      whiteboardId,
      cellId,
      offsetDx,
      offsetDy,
      width,
      preferredWidth,
      height,
      preferredHeight,
      layer,
      selected,
      color,
      cardKind,
      constraints,
      preContext,
      question,
      suggestions);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BrainstormingCellItemData &&
          other.id == this.id &&
          other.whiteboardId == this.whiteboardId &&
          other.cellId == this.cellId &&
          other.offsetDx == this.offsetDx &&
          other.offsetDy == this.offsetDy &&
          other.width == this.width &&
          other.preferredWidth == this.preferredWidth &&
          other.height == this.height &&
          other.preferredHeight == this.preferredHeight &&
          other.layer == this.layer &&
          other.selected == this.selected &&
          other.color == this.color &&
          other.cardKind == this.cardKind &&
          other.constraints == this.constraints &&
          other.preContext == this.preContext &&
          other.question == this.question &&
          other.suggestions == this.suggestions);
}

class BrainstormingCellItemCompanion
    extends UpdateCompanion<BrainstormingCellItemData> {
  final Value<int> id;
  final Value<String> whiteboardId;
  final Value<String> cellId;
  final Value<double> offsetDx;
  final Value<double> offsetDy;
  final Value<double?> width;
  final Value<double?> preferredWidth;
  final Value<double?> height;
  final Value<double?> preferredHeight;
  final Value<int> layer;
  final Value<bool> selected;
  final Value<String> color;
  final Value<String> cardKind;
  final Value<bool> constraints;
  final Value<String?> preContext;
  final Value<String?> question;
  final Value<String?> suggestions;
  const BrainstormingCellItemCompanion({
    this.id = const Value.absent(),
    this.whiteboardId = const Value.absent(),
    this.cellId = const Value.absent(),
    this.offsetDx = const Value.absent(),
    this.offsetDy = const Value.absent(),
    this.width = const Value.absent(),
    this.preferredWidth = const Value.absent(),
    this.height = const Value.absent(),
    this.preferredHeight = const Value.absent(),
    this.layer = const Value.absent(),
    this.selected = const Value.absent(),
    this.color = const Value.absent(),
    this.cardKind = const Value.absent(),
    this.constraints = const Value.absent(),
    this.preContext = const Value.absent(),
    this.question = const Value.absent(),
    this.suggestions = const Value.absent(),
  });
  BrainstormingCellItemCompanion.insert({
    this.id = const Value.absent(),
    required String whiteboardId,
    required String cellId,
    required double offsetDx,
    required double offsetDy,
    this.width = const Value.absent(),
    this.preferredWidth = const Value.absent(),
    this.height = const Value.absent(),
    this.preferredHeight = const Value.absent(),
    required int layer,
    required bool selected,
    required String color,
    required String cardKind,
    required bool constraints,
    this.preContext = const Value.absent(),
    this.question = const Value.absent(),
    this.suggestions = const Value.absent(),
  })  : whiteboardId = Value(whiteboardId),
        cellId = Value(cellId),
        offsetDx = Value(offsetDx),
        offsetDy = Value(offsetDy),
        layer = Value(layer),
        selected = Value(selected),
        color = Value(color),
        cardKind = Value(cardKind),
        constraints = Value(constraints);
  static Insertable<BrainstormingCellItemData> custom({
    Expression<int>? id,
    Expression<String>? whiteboardId,
    Expression<String>? cellId,
    Expression<double>? offsetDx,
    Expression<double>? offsetDy,
    Expression<double>? width,
    Expression<double>? preferredWidth,
    Expression<double>? height,
    Expression<double>? preferredHeight,
    Expression<int>? layer,
    Expression<bool>? selected,
    Expression<String>? color,
    Expression<String>? cardKind,
    Expression<bool>? constraints,
    Expression<String>? preContext,
    Expression<String>? question,
    Expression<String>? suggestions,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (whiteboardId != null) 'whiteboard_id': whiteboardId,
      if (cellId != null) 'cell_id': cellId,
      if (offsetDx != null) 'offset_dx': offsetDx,
      if (offsetDy != null) 'offset_dy': offsetDy,
      if (width != null) 'width': width,
      if (preferredWidth != null) 'preferred_width': preferredWidth,
      if (height != null) 'height': height,
      if (preferredHeight != null) 'preferred_height': preferredHeight,
      if (layer != null) 'layer': layer,
      if (selected != null) 'selected': selected,
      if (color != null) 'color': color,
      if (cardKind != null) 'card_kind': cardKind,
      if (constraints != null) 'constraints': constraints,
      if (preContext != null) 'pre_context': preContext,
      if (question != null) 'question': question,
      if (suggestions != null) 'suggestions': suggestions,
    });
  }

  BrainstormingCellItemCompanion copyWith(
      {Value<int>? id,
      Value<String>? whiteboardId,
      Value<String>? cellId,
      Value<double>? offsetDx,
      Value<double>? offsetDy,
      Value<double?>? width,
      Value<double?>? preferredWidth,
      Value<double?>? height,
      Value<double?>? preferredHeight,
      Value<int>? layer,
      Value<bool>? selected,
      Value<String>? color,
      Value<String>? cardKind,
      Value<bool>? constraints,
      Value<String?>? preContext,
      Value<String?>? question,
      Value<String?>? suggestions}) {
    return BrainstormingCellItemCompanion(
      id: id ?? this.id,
      whiteboardId: whiteboardId ?? this.whiteboardId,
      cellId: cellId ?? this.cellId,
      offsetDx: offsetDx ?? this.offsetDx,
      offsetDy: offsetDy ?? this.offsetDy,
      width: width ?? this.width,
      preferredWidth: preferredWidth ?? this.preferredWidth,
      height: height ?? this.height,
      preferredHeight: preferredHeight ?? this.preferredHeight,
      layer: layer ?? this.layer,
      selected: selected ?? this.selected,
      color: color ?? this.color,
      cardKind: cardKind ?? this.cardKind,
      constraints: constraints ?? this.constraints,
      preContext: preContext ?? this.preContext,
      question: question ?? this.question,
      suggestions: suggestions ?? this.suggestions,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (whiteboardId.present) {
      map['whiteboard_id'] = Variable<String>(whiteboardId.value);
    }
    if (cellId.present) {
      map['cell_id'] = Variable<String>(cellId.value);
    }
    if (offsetDx.present) {
      map['offset_dx'] = Variable<double>(offsetDx.value);
    }
    if (offsetDy.present) {
      map['offset_dy'] = Variable<double>(offsetDy.value);
    }
    if (width.present) {
      map['width'] = Variable<double>(width.value);
    }
    if (preferredWidth.present) {
      map['preferred_width'] = Variable<double>(preferredWidth.value);
    }
    if (height.present) {
      map['height'] = Variable<double>(height.value);
    }
    if (preferredHeight.present) {
      map['preferred_height'] = Variable<double>(preferredHeight.value);
    }
    if (layer.present) {
      map['layer'] = Variable<int>(layer.value);
    }
    if (selected.present) {
      map['selected'] = Variable<bool>(selected.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (cardKind.present) {
      map['card_kind'] = Variable<String>(cardKind.value);
    }
    if (constraints.present) {
      map['constraints'] = Variable<bool>(constraints.value);
    }
    if (preContext.present) {
      map['pre_context'] = Variable<String>(preContext.value);
    }
    if (question.present) {
      map['question'] = Variable<String>(question.value);
    }
    if (suggestions.present) {
      map['suggestions'] = Variable<String>(suggestions.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BrainstormingCellItemCompanion(')
          ..write('id: $id, ')
          ..write('whiteboardId: $whiteboardId, ')
          ..write('cellId: $cellId, ')
          ..write('offsetDx: $offsetDx, ')
          ..write('offsetDy: $offsetDy, ')
          ..write('width: $width, ')
          ..write('preferredWidth: $preferredWidth, ')
          ..write('height: $height, ')
          ..write('preferredHeight: $preferredHeight, ')
          ..write('layer: $layer, ')
          ..write('selected: $selected, ')
          ..write('color: $color, ')
          ..write('cardKind: $cardKind, ')
          ..write('constraints: $constraints, ')
          ..write('preContext: $preContext, ')
          ..write('question: $question, ')
          ..write('suggestions: $suggestions')
          ..write(')'))
        .toString();
  }
}

class $EditableCellItemTable extends EditableCellItem
    with TableInfo<$EditableCellItemTable, EditableCellItemData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EditableCellItemTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _whiteboardIdMeta =
      const VerificationMeta('whiteboardId');
  @override
  late final GeneratedColumn<String> whiteboardId = GeneratedColumn<String>(
      'whiteboard_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cellIdMeta = const VerificationMeta('cellId');
  @override
  late final GeneratedColumn<String> cellId = GeneratedColumn<String>(
      'cell_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _offsetDxMeta =
      const VerificationMeta('offsetDx');
  @override
  late final GeneratedColumn<double> offsetDx = GeneratedColumn<double>(
      'offset_dx', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _offsetDyMeta =
      const VerificationMeta('offsetDy');
  @override
  late final GeneratedColumn<double> offsetDy = GeneratedColumn<double>(
      'offset_dy', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _widthMeta = const VerificationMeta('width');
  @override
  late final GeneratedColumn<double> width = GeneratedColumn<double>(
      'width', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _preferredWidthMeta =
      const VerificationMeta('preferredWidth');
  @override
  late final GeneratedColumn<double> preferredWidth = GeneratedColumn<double>(
      'preferred_width', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<double> height = GeneratedColumn<double>(
      'height', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _preferredHeightMeta =
      const VerificationMeta('preferredHeight');
  @override
  late final GeneratedColumn<double> preferredHeight = GeneratedColumn<double>(
      'preferred_height', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _layerMeta = const VerificationMeta('layer');
  @override
  late final GeneratedColumn<int> layer = GeneratedColumn<int>(
      'layer', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _selectedMeta =
      const VerificationMeta('selected');
  @override
  late final GeneratedColumn<bool> selected = GeneratedColumn<bool>(
      'selected', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("selected" IN (0, 1))'));
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
      'color', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cardKindMeta =
      const VerificationMeta('cardKind');
  @override
  late final GeneratedColumn<String> cardKind = GeneratedColumn<String>(
      'card_kind', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _constraintsMeta =
      const VerificationMeta('constraints');
  @override
  late final GeneratedColumn<bool> constraints = GeneratedColumn<bool>(
      'constraints', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("constraints" IN (0, 1))'));
  static const VerificationMeta _preContextMeta =
      const VerificationMeta('preContext');
  @override
  late final GeneratedColumn<String> preContext = GeneratedColumn<String>(
      'pre_context', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        whiteboardId,
        cellId,
        offsetDx,
        offsetDy,
        width,
        preferredWidth,
        height,
        preferredHeight,
        layer,
        selected,
        color,
        cardKind,
        constraints,
        preContext,
        title,
        content
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'editable_cell_item';
  @override
  VerificationContext validateIntegrity(
      Insertable<EditableCellItemData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('whiteboard_id')) {
      context.handle(
          _whiteboardIdMeta,
          whiteboardId.isAcceptableOrUnknown(
              data['whiteboard_id']!, _whiteboardIdMeta));
    } else if (isInserting) {
      context.missing(_whiteboardIdMeta);
    }
    if (data.containsKey('cell_id')) {
      context.handle(_cellIdMeta,
          cellId.isAcceptableOrUnknown(data['cell_id']!, _cellIdMeta));
    } else if (isInserting) {
      context.missing(_cellIdMeta);
    }
    if (data.containsKey('offset_dx')) {
      context.handle(_offsetDxMeta,
          offsetDx.isAcceptableOrUnknown(data['offset_dx']!, _offsetDxMeta));
    } else if (isInserting) {
      context.missing(_offsetDxMeta);
    }
    if (data.containsKey('offset_dy')) {
      context.handle(_offsetDyMeta,
          offsetDy.isAcceptableOrUnknown(data['offset_dy']!, _offsetDyMeta));
    } else if (isInserting) {
      context.missing(_offsetDyMeta);
    }
    if (data.containsKey('width')) {
      context.handle(
          _widthMeta, width.isAcceptableOrUnknown(data['width']!, _widthMeta));
    }
    if (data.containsKey('preferred_width')) {
      context.handle(
          _preferredWidthMeta,
          preferredWidth.isAcceptableOrUnknown(
              data['preferred_width']!, _preferredWidthMeta));
    }
    if (data.containsKey('height')) {
      context.handle(_heightMeta,
          height.isAcceptableOrUnknown(data['height']!, _heightMeta));
    }
    if (data.containsKey('preferred_height')) {
      context.handle(
          _preferredHeightMeta,
          preferredHeight.isAcceptableOrUnknown(
              data['preferred_height']!, _preferredHeightMeta));
    }
    if (data.containsKey('layer')) {
      context.handle(
          _layerMeta, layer.isAcceptableOrUnknown(data['layer']!, _layerMeta));
    } else if (isInserting) {
      context.missing(_layerMeta);
    }
    if (data.containsKey('selected')) {
      context.handle(_selectedMeta,
          selected.isAcceptableOrUnknown(data['selected']!, _selectedMeta));
    } else if (isInserting) {
      context.missing(_selectedMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    if (data.containsKey('card_kind')) {
      context.handle(_cardKindMeta,
          cardKind.isAcceptableOrUnknown(data['card_kind']!, _cardKindMeta));
    } else if (isInserting) {
      context.missing(_cardKindMeta);
    }
    if (data.containsKey('constraints')) {
      context.handle(
          _constraintsMeta,
          constraints.isAcceptableOrUnknown(
              data['constraints']!, _constraintsMeta));
    } else if (isInserting) {
      context.missing(_constraintsMeta);
    }
    if (data.containsKey('pre_context')) {
      context.handle(
          _preContextMeta,
          preContext.isAcceptableOrUnknown(
              data['pre_context']!, _preContextMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EditableCellItemData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EditableCellItemData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      whiteboardId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}whiteboard_id'])!,
      cellId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cell_id'])!,
      offsetDx: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}offset_dx'])!,
      offsetDy: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}offset_dy'])!,
      width: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}width']),
      preferredWidth: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}preferred_width']),
      height: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}height']),
      preferredHeight: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}preferred_height']),
      layer: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}layer'])!,
      selected: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}selected'])!,
      color: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}color'])!,
      cardKind: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}card_kind'])!,
      constraints: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}constraints'])!,
      preContext: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pre_context']),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
    );
  }

  @override
  $EditableCellItemTable createAlias(String alias) {
    return $EditableCellItemTable(attachedDatabase, alias);
  }
}

class EditableCellItemData extends DataClass
    implements Insertable<EditableCellItemData> {
  final int id;

  /// Identity related
  final String whiteboardId;
  final String cellId;

  /// Position related
  final double offsetDx;
  final double offsetDy;
  final double? width;
  final double? preferredWidth;
  final double? height;
  final double? preferredHeight;

  /// Decoration related
  final int layer;
  final bool selected;
  final String color;
  final String cardKind;
  final bool constraints;
  final String? preContext;
  final String title;
  final String content;
  const EditableCellItemData(
      {required this.id,
      required this.whiteboardId,
      required this.cellId,
      required this.offsetDx,
      required this.offsetDy,
      this.width,
      this.preferredWidth,
      this.height,
      this.preferredHeight,
      required this.layer,
      required this.selected,
      required this.color,
      required this.cardKind,
      required this.constraints,
      this.preContext,
      required this.title,
      required this.content});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['whiteboard_id'] = Variable<String>(whiteboardId);
    map['cell_id'] = Variable<String>(cellId);
    map['offset_dx'] = Variable<double>(offsetDx);
    map['offset_dy'] = Variable<double>(offsetDy);
    if (!nullToAbsent || width != null) {
      map['width'] = Variable<double>(width);
    }
    if (!nullToAbsent || preferredWidth != null) {
      map['preferred_width'] = Variable<double>(preferredWidth);
    }
    if (!nullToAbsent || height != null) {
      map['height'] = Variable<double>(height);
    }
    if (!nullToAbsent || preferredHeight != null) {
      map['preferred_height'] = Variable<double>(preferredHeight);
    }
    map['layer'] = Variable<int>(layer);
    map['selected'] = Variable<bool>(selected);
    map['color'] = Variable<String>(color);
    map['card_kind'] = Variable<String>(cardKind);
    map['constraints'] = Variable<bool>(constraints);
    if (!nullToAbsent || preContext != null) {
      map['pre_context'] = Variable<String>(preContext);
    }
    map['title'] = Variable<String>(title);
    map['content'] = Variable<String>(content);
    return map;
  }

  EditableCellItemCompanion toCompanion(bool nullToAbsent) {
    return EditableCellItemCompanion(
      id: Value(id),
      whiteboardId: Value(whiteboardId),
      cellId: Value(cellId),
      offsetDx: Value(offsetDx),
      offsetDy: Value(offsetDy),
      width:
          width == null && nullToAbsent ? const Value.absent() : Value(width),
      preferredWidth: preferredWidth == null && nullToAbsent
          ? const Value.absent()
          : Value(preferredWidth),
      height:
          height == null && nullToAbsent ? const Value.absent() : Value(height),
      preferredHeight: preferredHeight == null && nullToAbsent
          ? const Value.absent()
          : Value(preferredHeight),
      layer: Value(layer),
      selected: Value(selected),
      color: Value(color),
      cardKind: Value(cardKind),
      constraints: Value(constraints),
      preContext: preContext == null && nullToAbsent
          ? const Value.absent()
          : Value(preContext),
      title: Value(title),
      content: Value(content),
    );
  }

  factory EditableCellItemData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EditableCellItemData(
      id: serializer.fromJson<int>(json['id']),
      whiteboardId: serializer.fromJson<String>(json['whiteboardId']),
      cellId: serializer.fromJson<String>(json['cellId']),
      offsetDx: serializer.fromJson<double>(json['offsetDx']),
      offsetDy: serializer.fromJson<double>(json['offsetDy']),
      width: serializer.fromJson<double?>(json['width']),
      preferredWidth: serializer.fromJson<double?>(json['preferredWidth']),
      height: serializer.fromJson<double?>(json['height']),
      preferredHeight: serializer.fromJson<double?>(json['preferredHeight']),
      layer: serializer.fromJson<int>(json['layer']),
      selected: serializer.fromJson<bool>(json['selected']),
      color: serializer.fromJson<String>(json['color']),
      cardKind: serializer.fromJson<String>(json['cardKind']),
      constraints: serializer.fromJson<bool>(json['constraints']),
      preContext: serializer.fromJson<String?>(json['preContext']),
      title: serializer.fromJson<String>(json['title']),
      content: serializer.fromJson<String>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'whiteboardId': serializer.toJson<String>(whiteboardId),
      'cellId': serializer.toJson<String>(cellId),
      'offsetDx': serializer.toJson<double>(offsetDx),
      'offsetDy': serializer.toJson<double>(offsetDy),
      'width': serializer.toJson<double?>(width),
      'preferredWidth': serializer.toJson<double?>(preferredWidth),
      'height': serializer.toJson<double?>(height),
      'preferredHeight': serializer.toJson<double?>(preferredHeight),
      'layer': serializer.toJson<int>(layer),
      'selected': serializer.toJson<bool>(selected),
      'color': serializer.toJson<String>(color),
      'cardKind': serializer.toJson<String>(cardKind),
      'constraints': serializer.toJson<bool>(constraints),
      'preContext': serializer.toJson<String?>(preContext),
      'title': serializer.toJson<String>(title),
      'content': serializer.toJson<String>(content),
    };
  }

  EditableCellItemData copyWith(
          {int? id,
          String? whiteboardId,
          String? cellId,
          double? offsetDx,
          double? offsetDy,
          Value<double?> width = const Value.absent(),
          Value<double?> preferredWidth = const Value.absent(),
          Value<double?> height = const Value.absent(),
          Value<double?> preferredHeight = const Value.absent(),
          int? layer,
          bool? selected,
          String? color,
          String? cardKind,
          bool? constraints,
          Value<String?> preContext = const Value.absent(),
          String? title,
          String? content}) =>
      EditableCellItemData(
        id: id ?? this.id,
        whiteboardId: whiteboardId ?? this.whiteboardId,
        cellId: cellId ?? this.cellId,
        offsetDx: offsetDx ?? this.offsetDx,
        offsetDy: offsetDy ?? this.offsetDy,
        width: width.present ? width.value : this.width,
        preferredWidth:
            preferredWidth.present ? preferredWidth.value : this.preferredWidth,
        height: height.present ? height.value : this.height,
        preferredHeight: preferredHeight.present
            ? preferredHeight.value
            : this.preferredHeight,
        layer: layer ?? this.layer,
        selected: selected ?? this.selected,
        color: color ?? this.color,
        cardKind: cardKind ?? this.cardKind,
        constraints: constraints ?? this.constraints,
        preContext: preContext.present ? preContext.value : this.preContext,
        title: title ?? this.title,
        content: content ?? this.content,
      );
  EditableCellItemData copyWithCompanion(EditableCellItemCompanion data) {
    return EditableCellItemData(
      id: data.id.present ? data.id.value : this.id,
      whiteboardId: data.whiteboardId.present
          ? data.whiteboardId.value
          : this.whiteboardId,
      cellId: data.cellId.present ? data.cellId.value : this.cellId,
      offsetDx: data.offsetDx.present ? data.offsetDx.value : this.offsetDx,
      offsetDy: data.offsetDy.present ? data.offsetDy.value : this.offsetDy,
      width: data.width.present ? data.width.value : this.width,
      preferredWidth: data.preferredWidth.present
          ? data.preferredWidth.value
          : this.preferredWidth,
      height: data.height.present ? data.height.value : this.height,
      preferredHeight: data.preferredHeight.present
          ? data.preferredHeight.value
          : this.preferredHeight,
      layer: data.layer.present ? data.layer.value : this.layer,
      selected: data.selected.present ? data.selected.value : this.selected,
      color: data.color.present ? data.color.value : this.color,
      cardKind: data.cardKind.present ? data.cardKind.value : this.cardKind,
      constraints:
          data.constraints.present ? data.constraints.value : this.constraints,
      preContext:
          data.preContext.present ? data.preContext.value : this.preContext,
      title: data.title.present ? data.title.value : this.title,
      content: data.content.present ? data.content.value : this.content,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EditableCellItemData(')
          ..write('id: $id, ')
          ..write('whiteboardId: $whiteboardId, ')
          ..write('cellId: $cellId, ')
          ..write('offsetDx: $offsetDx, ')
          ..write('offsetDy: $offsetDy, ')
          ..write('width: $width, ')
          ..write('preferredWidth: $preferredWidth, ')
          ..write('height: $height, ')
          ..write('preferredHeight: $preferredHeight, ')
          ..write('layer: $layer, ')
          ..write('selected: $selected, ')
          ..write('color: $color, ')
          ..write('cardKind: $cardKind, ')
          ..write('constraints: $constraints, ')
          ..write('preContext: $preContext, ')
          ..write('title: $title, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      whiteboardId,
      cellId,
      offsetDx,
      offsetDy,
      width,
      preferredWidth,
      height,
      preferredHeight,
      layer,
      selected,
      color,
      cardKind,
      constraints,
      preContext,
      title,
      content);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EditableCellItemData &&
          other.id == this.id &&
          other.whiteboardId == this.whiteboardId &&
          other.cellId == this.cellId &&
          other.offsetDx == this.offsetDx &&
          other.offsetDy == this.offsetDy &&
          other.width == this.width &&
          other.preferredWidth == this.preferredWidth &&
          other.height == this.height &&
          other.preferredHeight == this.preferredHeight &&
          other.layer == this.layer &&
          other.selected == this.selected &&
          other.color == this.color &&
          other.cardKind == this.cardKind &&
          other.constraints == this.constraints &&
          other.preContext == this.preContext &&
          other.title == this.title &&
          other.content == this.content);
}

class EditableCellItemCompanion extends UpdateCompanion<EditableCellItemData> {
  final Value<int> id;
  final Value<String> whiteboardId;
  final Value<String> cellId;
  final Value<double> offsetDx;
  final Value<double> offsetDy;
  final Value<double?> width;
  final Value<double?> preferredWidth;
  final Value<double?> height;
  final Value<double?> preferredHeight;
  final Value<int> layer;
  final Value<bool> selected;
  final Value<String> color;
  final Value<String> cardKind;
  final Value<bool> constraints;
  final Value<String?> preContext;
  final Value<String> title;
  final Value<String> content;
  const EditableCellItemCompanion({
    this.id = const Value.absent(),
    this.whiteboardId = const Value.absent(),
    this.cellId = const Value.absent(),
    this.offsetDx = const Value.absent(),
    this.offsetDy = const Value.absent(),
    this.width = const Value.absent(),
    this.preferredWidth = const Value.absent(),
    this.height = const Value.absent(),
    this.preferredHeight = const Value.absent(),
    this.layer = const Value.absent(),
    this.selected = const Value.absent(),
    this.color = const Value.absent(),
    this.cardKind = const Value.absent(),
    this.constraints = const Value.absent(),
    this.preContext = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
  });
  EditableCellItemCompanion.insert({
    this.id = const Value.absent(),
    required String whiteboardId,
    required String cellId,
    required double offsetDx,
    required double offsetDy,
    this.width = const Value.absent(),
    this.preferredWidth = const Value.absent(),
    this.height = const Value.absent(),
    this.preferredHeight = const Value.absent(),
    required int layer,
    required bool selected,
    required String color,
    required String cardKind,
    required bool constraints,
    this.preContext = const Value.absent(),
    required String title,
    required String content,
  })  : whiteboardId = Value(whiteboardId),
        cellId = Value(cellId),
        offsetDx = Value(offsetDx),
        offsetDy = Value(offsetDy),
        layer = Value(layer),
        selected = Value(selected),
        color = Value(color),
        cardKind = Value(cardKind),
        constraints = Value(constraints),
        title = Value(title),
        content = Value(content);
  static Insertable<EditableCellItemData> custom({
    Expression<int>? id,
    Expression<String>? whiteboardId,
    Expression<String>? cellId,
    Expression<double>? offsetDx,
    Expression<double>? offsetDy,
    Expression<double>? width,
    Expression<double>? preferredWidth,
    Expression<double>? height,
    Expression<double>? preferredHeight,
    Expression<int>? layer,
    Expression<bool>? selected,
    Expression<String>? color,
    Expression<String>? cardKind,
    Expression<bool>? constraints,
    Expression<String>? preContext,
    Expression<String>? title,
    Expression<String>? content,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (whiteboardId != null) 'whiteboard_id': whiteboardId,
      if (cellId != null) 'cell_id': cellId,
      if (offsetDx != null) 'offset_dx': offsetDx,
      if (offsetDy != null) 'offset_dy': offsetDy,
      if (width != null) 'width': width,
      if (preferredWidth != null) 'preferred_width': preferredWidth,
      if (height != null) 'height': height,
      if (preferredHeight != null) 'preferred_height': preferredHeight,
      if (layer != null) 'layer': layer,
      if (selected != null) 'selected': selected,
      if (color != null) 'color': color,
      if (cardKind != null) 'card_kind': cardKind,
      if (constraints != null) 'constraints': constraints,
      if (preContext != null) 'pre_context': preContext,
      if (title != null) 'title': title,
      if (content != null) 'content': content,
    });
  }

  EditableCellItemCompanion copyWith(
      {Value<int>? id,
      Value<String>? whiteboardId,
      Value<String>? cellId,
      Value<double>? offsetDx,
      Value<double>? offsetDy,
      Value<double?>? width,
      Value<double?>? preferredWidth,
      Value<double?>? height,
      Value<double?>? preferredHeight,
      Value<int>? layer,
      Value<bool>? selected,
      Value<String>? color,
      Value<String>? cardKind,
      Value<bool>? constraints,
      Value<String?>? preContext,
      Value<String>? title,
      Value<String>? content}) {
    return EditableCellItemCompanion(
      id: id ?? this.id,
      whiteboardId: whiteboardId ?? this.whiteboardId,
      cellId: cellId ?? this.cellId,
      offsetDx: offsetDx ?? this.offsetDx,
      offsetDy: offsetDy ?? this.offsetDy,
      width: width ?? this.width,
      preferredWidth: preferredWidth ?? this.preferredWidth,
      height: height ?? this.height,
      preferredHeight: preferredHeight ?? this.preferredHeight,
      layer: layer ?? this.layer,
      selected: selected ?? this.selected,
      color: color ?? this.color,
      cardKind: cardKind ?? this.cardKind,
      constraints: constraints ?? this.constraints,
      preContext: preContext ?? this.preContext,
      title: title ?? this.title,
      content: content ?? this.content,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (whiteboardId.present) {
      map['whiteboard_id'] = Variable<String>(whiteboardId.value);
    }
    if (cellId.present) {
      map['cell_id'] = Variable<String>(cellId.value);
    }
    if (offsetDx.present) {
      map['offset_dx'] = Variable<double>(offsetDx.value);
    }
    if (offsetDy.present) {
      map['offset_dy'] = Variable<double>(offsetDy.value);
    }
    if (width.present) {
      map['width'] = Variable<double>(width.value);
    }
    if (preferredWidth.present) {
      map['preferred_width'] = Variable<double>(preferredWidth.value);
    }
    if (height.present) {
      map['height'] = Variable<double>(height.value);
    }
    if (preferredHeight.present) {
      map['preferred_height'] = Variable<double>(preferredHeight.value);
    }
    if (layer.present) {
      map['layer'] = Variable<int>(layer.value);
    }
    if (selected.present) {
      map['selected'] = Variable<bool>(selected.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (cardKind.present) {
      map['card_kind'] = Variable<String>(cardKind.value);
    }
    if (constraints.present) {
      map['constraints'] = Variable<bool>(constraints.value);
    }
    if (preContext.present) {
      map['pre_context'] = Variable<String>(preContext.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EditableCellItemCompanion(')
          ..write('id: $id, ')
          ..write('whiteboardId: $whiteboardId, ')
          ..write('cellId: $cellId, ')
          ..write('offsetDx: $offsetDx, ')
          ..write('offsetDy: $offsetDy, ')
          ..write('width: $width, ')
          ..write('preferredWidth: $preferredWidth, ')
          ..write('height: $height, ')
          ..write('preferredHeight: $preferredHeight, ')
          ..write('layer: $layer, ')
          ..write('selected: $selected, ')
          ..write('color: $color, ')
          ..write('cardKind: $cardKind, ')
          ..write('constraints: $constraints, ')
          ..write('preContext: $preContext, ')
          ..write('title: $title, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }
}

class $ImageCellItemTable extends ImageCellItem
    with TableInfo<$ImageCellItemTable, ImageCellItemData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ImageCellItemTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _whiteboardIdMeta =
      const VerificationMeta('whiteboardId');
  @override
  late final GeneratedColumn<String> whiteboardId = GeneratedColumn<String>(
      'whiteboard_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cellIdMeta = const VerificationMeta('cellId');
  @override
  late final GeneratedColumn<String> cellId = GeneratedColumn<String>(
      'cell_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _offsetDxMeta =
      const VerificationMeta('offsetDx');
  @override
  late final GeneratedColumn<double> offsetDx = GeneratedColumn<double>(
      'offset_dx', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _offsetDyMeta =
      const VerificationMeta('offsetDy');
  @override
  late final GeneratedColumn<double> offsetDy = GeneratedColumn<double>(
      'offset_dy', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _widthMeta = const VerificationMeta('width');
  @override
  late final GeneratedColumn<double> width = GeneratedColumn<double>(
      'width', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _preferredWidthMeta =
      const VerificationMeta('preferredWidth');
  @override
  late final GeneratedColumn<double> preferredWidth = GeneratedColumn<double>(
      'preferred_width', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<double> height = GeneratedColumn<double>(
      'height', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _preferredHeightMeta =
      const VerificationMeta('preferredHeight');
  @override
  late final GeneratedColumn<double> preferredHeight = GeneratedColumn<double>(
      'preferred_height', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _layerMeta = const VerificationMeta('layer');
  @override
  late final GeneratedColumn<int> layer = GeneratedColumn<int>(
      'layer', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _selectedMeta =
      const VerificationMeta('selected');
  @override
  late final GeneratedColumn<bool> selected = GeneratedColumn<bool>(
      'selected', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("selected" IN (0, 1))'));
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
      'color', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cardKindMeta =
      const VerificationMeta('cardKind');
  @override
  late final GeneratedColumn<String> cardKind = GeneratedColumn<String>(
      'card_kind', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _constraintsMeta =
      const VerificationMeta('constraints');
  @override
  late final GeneratedColumn<bool> constraints = GeneratedColumn<bool>(
      'constraints', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("constraints" IN (0, 1))'));
  static const VerificationMeta _preContextMeta =
      const VerificationMeta('preContext');
  @override
  late final GeneratedColumn<String> preContext = GeneratedColumn<String>(
      'pre_context', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        whiteboardId,
        cellId,
        offsetDx,
        offsetDy,
        width,
        preferredWidth,
        height,
        preferredHeight,
        layer,
        selected,
        color,
        cardKind,
        constraints,
        preContext,
        url
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'image_cell_item';
  @override
  VerificationContext validateIntegrity(Insertable<ImageCellItemData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('whiteboard_id')) {
      context.handle(
          _whiteboardIdMeta,
          whiteboardId.isAcceptableOrUnknown(
              data['whiteboard_id']!, _whiteboardIdMeta));
    } else if (isInserting) {
      context.missing(_whiteboardIdMeta);
    }
    if (data.containsKey('cell_id')) {
      context.handle(_cellIdMeta,
          cellId.isAcceptableOrUnknown(data['cell_id']!, _cellIdMeta));
    } else if (isInserting) {
      context.missing(_cellIdMeta);
    }
    if (data.containsKey('offset_dx')) {
      context.handle(_offsetDxMeta,
          offsetDx.isAcceptableOrUnknown(data['offset_dx']!, _offsetDxMeta));
    } else if (isInserting) {
      context.missing(_offsetDxMeta);
    }
    if (data.containsKey('offset_dy')) {
      context.handle(_offsetDyMeta,
          offsetDy.isAcceptableOrUnknown(data['offset_dy']!, _offsetDyMeta));
    } else if (isInserting) {
      context.missing(_offsetDyMeta);
    }
    if (data.containsKey('width')) {
      context.handle(
          _widthMeta, width.isAcceptableOrUnknown(data['width']!, _widthMeta));
    }
    if (data.containsKey('preferred_width')) {
      context.handle(
          _preferredWidthMeta,
          preferredWidth.isAcceptableOrUnknown(
              data['preferred_width']!, _preferredWidthMeta));
    }
    if (data.containsKey('height')) {
      context.handle(_heightMeta,
          height.isAcceptableOrUnknown(data['height']!, _heightMeta));
    }
    if (data.containsKey('preferred_height')) {
      context.handle(
          _preferredHeightMeta,
          preferredHeight.isAcceptableOrUnknown(
              data['preferred_height']!, _preferredHeightMeta));
    }
    if (data.containsKey('layer')) {
      context.handle(
          _layerMeta, layer.isAcceptableOrUnknown(data['layer']!, _layerMeta));
    } else if (isInserting) {
      context.missing(_layerMeta);
    }
    if (data.containsKey('selected')) {
      context.handle(_selectedMeta,
          selected.isAcceptableOrUnknown(data['selected']!, _selectedMeta));
    } else if (isInserting) {
      context.missing(_selectedMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    if (data.containsKey('card_kind')) {
      context.handle(_cardKindMeta,
          cardKind.isAcceptableOrUnknown(data['card_kind']!, _cardKindMeta));
    } else if (isInserting) {
      context.missing(_cardKindMeta);
    }
    if (data.containsKey('constraints')) {
      context.handle(
          _constraintsMeta,
          constraints.isAcceptableOrUnknown(
              data['constraints']!, _constraintsMeta));
    } else if (isInserting) {
      context.missing(_constraintsMeta);
    }
    if (data.containsKey('pre_context')) {
      context.handle(
          _preContextMeta,
          preContext.isAcceptableOrUnknown(
              data['pre_context']!, _preContextMeta));
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ImageCellItemData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ImageCellItemData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      whiteboardId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}whiteboard_id'])!,
      cellId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cell_id'])!,
      offsetDx: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}offset_dx'])!,
      offsetDy: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}offset_dy'])!,
      width: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}width']),
      preferredWidth: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}preferred_width']),
      height: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}height']),
      preferredHeight: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}preferred_height']),
      layer: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}layer'])!,
      selected: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}selected'])!,
      color: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}color'])!,
      cardKind: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}card_kind'])!,
      constraints: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}constraints'])!,
      preContext: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pre_context']),
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url'])!,
    );
  }

  @override
  $ImageCellItemTable createAlias(String alias) {
    return $ImageCellItemTable(attachedDatabase, alias);
  }
}

class ImageCellItemData extends DataClass
    implements Insertable<ImageCellItemData> {
  final int id;

  /// Identity related
  final String whiteboardId;
  final String cellId;

  /// Position related
  final double offsetDx;
  final double offsetDy;
  final double? width;
  final double? preferredWidth;
  final double? height;
  final double? preferredHeight;

  /// Decoration related
  final int layer;
  final bool selected;
  final String color;
  final String cardKind;
  final bool constraints;
  final String? preContext;
  final String url;
  const ImageCellItemData(
      {required this.id,
      required this.whiteboardId,
      required this.cellId,
      required this.offsetDx,
      required this.offsetDy,
      this.width,
      this.preferredWidth,
      this.height,
      this.preferredHeight,
      required this.layer,
      required this.selected,
      required this.color,
      required this.cardKind,
      required this.constraints,
      this.preContext,
      required this.url});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['whiteboard_id'] = Variable<String>(whiteboardId);
    map['cell_id'] = Variable<String>(cellId);
    map['offset_dx'] = Variable<double>(offsetDx);
    map['offset_dy'] = Variable<double>(offsetDy);
    if (!nullToAbsent || width != null) {
      map['width'] = Variable<double>(width);
    }
    if (!nullToAbsent || preferredWidth != null) {
      map['preferred_width'] = Variable<double>(preferredWidth);
    }
    if (!nullToAbsent || height != null) {
      map['height'] = Variable<double>(height);
    }
    if (!nullToAbsent || preferredHeight != null) {
      map['preferred_height'] = Variable<double>(preferredHeight);
    }
    map['layer'] = Variable<int>(layer);
    map['selected'] = Variable<bool>(selected);
    map['color'] = Variable<String>(color);
    map['card_kind'] = Variable<String>(cardKind);
    map['constraints'] = Variable<bool>(constraints);
    if (!nullToAbsent || preContext != null) {
      map['pre_context'] = Variable<String>(preContext);
    }
    map['url'] = Variable<String>(url);
    return map;
  }

  ImageCellItemCompanion toCompanion(bool nullToAbsent) {
    return ImageCellItemCompanion(
      id: Value(id),
      whiteboardId: Value(whiteboardId),
      cellId: Value(cellId),
      offsetDx: Value(offsetDx),
      offsetDy: Value(offsetDy),
      width:
          width == null && nullToAbsent ? const Value.absent() : Value(width),
      preferredWidth: preferredWidth == null && nullToAbsent
          ? const Value.absent()
          : Value(preferredWidth),
      height:
          height == null && nullToAbsent ? const Value.absent() : Value(height),
      preferredHeight: preferredHeight == null && nullToAbsent
          ? const Value.absent()
          : Value(preferredHeight),
      layer: Value(layer),
      selected: Value(selected),
      color: Value(color),
      cardKind: Value(cardKind),
      constraints: Value(constraints),
      preContext: preContext == null && nullToAbsent
          ? const Value.absent()
          : Value(preContext),
      url: Value(url),
    );
  }

  factory ImageCellItemData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ImageCellItemData(
      id: serializer.fromJson<int>(json['id']),
      whiteboardId: serializer.fromJson<String>(json['whiteboardId']),
      cellId: serializer.fromJson<String>(json['cellId']),
      offsetDx: serializer.fromJson<double>(json['offsetDx']),
      offsetDy: serializer.fromJson<double>(json['offsetDy']),
      width: serializer.fromJson<double?>(json['width']),
      preferredWidth: serializer.fromJson<double?>(json['preferredWidth']),
      height: serializer.fromJson<double?>(json['height']),
      preferredHeight: serializer.fromJson<double?>(json['preferredHeight']),
      layer: serializer.fromJson<int>(json['layer']),
      selected: serializer.fromJson<bool>(json['selected']),
      color: serializer.fromJson<String>(json['color']),
      cardKind: serializer.fromJson<String>(json['cardKind']),
      constraints: serializer.fromJson<bool>(json['constraints']),
      preContext: serializer.fromJson<String?>(json['preContext']),
      url: serializer.fromJson<String>(json['url']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'whiteboardId': serializer.toJson<String>(whiteboardId),
      'cellId': serializer.toJson<String>(cellId),
      'offsetDx': serializer.toJson<double>(offsetDx),
      'offsetDy': serializer.toJson<double>(offsetDy),
      'width': serializer.toJson<double?>(width),
      'preferredWidth': serializer.toJson<double?>(preferredWidth),
      'height': serializer.toJson<double?>(height),
      'preferredHeight': serializer.toJson<double?>(preferredHeight),
      'layer': serializer.toJson<int>(layer),
      'selected': serializer.toJson<bool>(selected),
      'color': serializer.toJson<String>(color),
      'cardKind': serializer.toJson<String>(cardKind),
      'constraints': serializer.toJson<bool>(constraints),
      'preContext': serializer.toJson<String?>(preContext),
      'url': serializer.toJson<String>(url),
    };
  }

  ImageCellItemData copyWith(
          {int? id,
          String? whiteboardId,
          String? cellId,
          double? offsetDx,
          double? offsetDy,
          Value<double?> width = const Value.absent(),
          Value<double?> preferredWidth = const Value.absent(),
          Value<double?> height = const Value.absent(),
          Value<double?> preferredHeight = const Value.absent(),
          int? layer,
          bool? selected,
          String? color,
          String? cardKind,
          bool? constraints,
          Value<String?> preContext = const Value.absent(),
          String? url}) =>
      ImageCellItemData(
        id: id ?? this.id,
        whiteboardId: whiteboardId ?? this.whiteboardId,
        cellId: cellId ?? this.cellId,
        offsetDx: offsetDx ?? this.offsetDx,
        offsetDy: offsetDy ?? this.offsetDy,
        width: width.present ? width.value : this.width,
        preferredWidth:
            preferredWidth.present ? preferredWidth.value : this.preferredWidth,
        height: height.present ? height.value : this.height,
        preferredHeight: preferredHeight.present
            ? preferredHeight.value
            : this.preferredHeight,
        layer: layer ?? this.layer,
        selected: selected ?? this.selected,
        color: color ?? this.color,
        cardKind: cardKind ?? this.cardKind,
        constraints: constraints ?? this.constraints,
        preContext: preContext.present ? preContext.value : this.preContext,
        url: url ?? this.url,
      );
  ImageCellItemData copyWithCompanion(ImageCellItemCompanion data) {
    return ImageCellItemData(
      id: data.id.present ? data.id.value : this.id,
      whiteboardId: data.whiteboardId.present
          ? data.whiteboardId.value
          : this.whiteboardId,
      cellId: data.cellId.present ? data.cellId.value : this.cellId,
      offsetDx: data.offsetDx.present ? data.offsetDx.value : this.offsetDx,
      offsetDy: data.offsetDy.present ? data.offsetDy.value : this.offsetDy,
      width: data.width.present ? data.width.value : this.width,
      preferredWidth: data.preferredWidth.present
          ? data.preferredWidth.value
          : this.preferredWidth,
      height: data.height.present ? data.height.value : this.height,
      preferredHeight: data.preferredHeight.present
          ? data.preferredHeight.value
          : this.preferredHeight,
      layer: data.layer.present ? data.layer.value : this.layer,
      selected: data.selected.present ? data.selected.value : this.selected,
      color: data.color.present ? data.color.value : this.color,
      cardKind: data.cardKind.present ? data.cardKind.value : this.cardKind,
      constraints:
          data.constraints.present ? data.constraints.value : this.constraints,
      preContext:
          data.preContext.present ? data.preContext.value : this.preContext,
      url: data.url.present ? data.url.value : this.url,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ImageCellItemData(')
          ..write('id: $id, ')
          ..write('whiteboardId: $whiteboardId, ')
          ..write('cellId: $cellId, ')
          ..write('offsetDx: $offsetDx, ')
          ..write('offsetDy: $offsetDy, ')
          ..write('width: $width, ')
          ..write('preferredWidth: $preferredWidth, ')
          ..write('height: $height, ')
          ..write('preferredHeight: $preferredHeight, ')
          ..write('layer: $layer, ')
          ..write('selected: $selected, ')
          ..write('color: $color, ')
          ..write('cardKind: $cardKind, ')
          ..write('constraints: $constraints, ')
          ..write('preContext: $preContext, ')
          ..write('url: $url')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      whiteboardId,
      cellId,
      offsetDx,
      offsetDy,
      width,
      preferredWidth,
      height,
      preferredHeight,
      layer,
      selected,
      color,
      cardKind,
      constraints,
      preContext,
      url);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ImageCellItemData &&
          other.id == this.id &&
          other.whiteboardId == this.whiteboardId &&
          other.cellId == this.cellId &&
          other.offsetDx == this.offsetDx &&
          other.offsetDy == this.offsetDy &&
          other.width == this.width &&
          other.preferredWidth == this.preferredWidth &&
          other.height == this.height &&
          other.preferredHeight == this.preferredHeight &&
          other.layer == this.layer &&
          other.selected == this.selected &&
          other.color == this.color &&
          other.cardKind == this.cardKind &&
          other.constraints == this.constraints &&
          other.preContext == this.preContext &&
          other.url == this.url);
}

class ImageCellItemCompanion extends UpdateCompanion<ImageCellItemData> {
  final Value<int> id;
  final Value<String> whiteboardId;
  final Value<String> cellId;
  final Value<double> offsetDx;
  final Value<double> offsetDy;
  final Value<double?> width;
  final Value<double?> preferredWidth;
  final Value<double?> height;
  final Value<double?> preferredHeight;
  final Value<int> layer;
  final Value<bool> selected;
  final Value<String> color;
  final Value<String> cardKind;
  final Value<bool> constraints;
  final Value<String?> preContext;
  final Value<String> url;
  const ImageCellItemCompanion({
    this.id = const Value.absent(),
    this.whiteboardId = const Value.absent(),
    this.cellId = const Value.absent(),
    this.offsetDx = const Value.absent(),
    this.offsetDy = const Value.absent(),
    this.width = const Value.absent(),
    this.preferredWidth = const Value.absent(),
    this.height = const Value.absent(),
    this.preferredHeight = const Value.absent(),
    this.layer = const Value.absent(),
    this.selected = const Value.absent(),
    this.color = const Value.absent(),
    this.cardKind = const Value.absent(),
    this.constraints = const Value.absent(),
    this.preContext = const Value.absent(),
    this.url = const Value.absent(),
  });
  ImageCellItemCompanion.insert({
    this.id = const Value.absent(),
    required String whiteboardId,
    required String cellId,
    required double offsetDx,
    required double offsetDy,
    this.width = const Value.absent(),
    this.preferredWidth = const Value.absent(),
    this.height = const Value.absent(),
    this.preferredHeight = const Value.absent(),
    required int layer,
    required bool selected,
    required String color,
    required String cardKind,
    required bool constraints,
    this.preContext = const Value.absent(),
    required String url,
  })  : whiteboardId = Value(whiteboardId),
        cellId = Value(cellId),
        offsetDx = Value(offsetDx),
        offsetDy = Value(offsetDy),
        layer = Value(layer),
        selected = Value(selected),
        color = Value(color),
        cardKind = Value(cardKind),
        constraints = Value(constraints),
        url = Value(url);
  static Insertable<ImageCellItemData> custom({
    Expression<int>? id,
    Expression<String>? whiteboardId,
    Expression<String>? cellId,
    Expression<double>? offsetDx,
    Expression<double>? offsetDy,
    Expression<double>? width,
    Expression<double>? preferredWidth,
    Expression<double>? height,
    Expression<double>? preferredHeight,
    Expression<int>? layer,
    Expression<bool>? selected,
    Expression<String>? color,
    Expression<String>? cardKind,
    Expression<bool>? constraints,
    Expression<String>? preContext,
    Expression<String>? url,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (whiteboardId != null) 'whiteboard_id': whiteboardId,
      if (cellId != null) 'cell_id': cellId,
      if (offsetDx != null) 'offset_dx': offsetDx,
      if (offsetDy != null) 'offset_dy': offsetDy,
      if (width != null) 'width': width,
      if (preferredWidth != null) 'preferred_width': preferredWidth,
      if (height != null) 'height': height,
      if (preferredHeight != null) 'preferred_height': preferredHeight,
      if (layer != null) 'layer': layer,
      if (selected != null) 'selected': selected,
      if (color != null) 'color': color,
      if (cardKind != null) 'card_kind': cardKind,
      if (constraints != null) 'constraints': constraints,
      if (preContext != null) 'pre_context': preContext,
      if (url != null) 'url': url,
    });
  }

  ImageCellItemCompanion copyWith(
      {Value<int>? id,
      Value<String>? whiteboardId,
      Value<String>? cellId,
      Value<double>? offsetDx,
      Value<double>? offsetDy,
      Value<double?>? width,
      Value<double?>? preferredWidth,
      Value<double?>? height,
      Value<double?>? preferredHeight,
      Value<int>? layer,
      Value<bool>? selected,
      Value<String>? color,
      Value<String>? cardKind,
      Value<bool>? constraints,
      Value<String?>? preContext,
      Value<String>? url}) {
    return ImageCellItemCompanion(
      id: id ?? this.id,
      whiteboardId: whiteboardId ?? this.whiteboardId,
      cellId: cellId ?? this.cellId,
      offsetDx: offsetDx ?? this.offsetDx,
      offsetDy: offsetDy ?? this.offsetDy,
      width: width ?? this.width,
      preferredWidth: preferredWidth ?? this.preferredWidth,
      height: height ?? this.height,
      preferredHeight: preferredHeight ?? this.preferredHeight,
      layer: layer ?? this.layer,
      selected: selected ?? this.selected,
      color: color ?? this.color,
      cardKind: cardKind ?? this.cardKind,
      constraints: constraints ?? this.constraints,
      preContext: preContext ?? this.preContext,
      url: url ?? this.url,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (whiteboardId.present) {
      map['whiteboard_id'] = Variable<String>(whiteboardId.value);
    }
    if (cellId.present) {
      map['cell_id'] = Variable<String>(cellId.value);
    }
    if (offsetDx.present) {
      map['offset_dx'] = Variable<double>(offsetDx.value);
    }
    if (offsetDy.present) {
      map['offset_dy'] = Variable<double>(offsetDy.value);
    }
    if (width.present) {
      map['width'] = Variable<double>(width.value);
    }
    if (preferredWidth.present) {
      map['preferred_width'] = Variable<double>(preferredWidth.value);
    }
    if (height.present) {
      map['height'] = Variable<double>(height.value);
    }
    if (preferredHeight.present) {
      map['preferred_height'] = Variable<double>(preferredHeight.value);
    }
    if (layer.present) {
      map['layer'] = Variable<int>(layer.value);
    }
    if (selected.present) {
      map['selected'] = Variable<bool>(selected.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (cardKind.present) {
      map['card_kind'] = Variable<String>(cardKind.value);
    }
    if (constraints.present) {
      map['constraints'] = Variable<bool>(constraints.value);
    }
    if (preContext.present) {
      map['pre_context'] = Variable<String>(preContext.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ImageCellItemCompanion(')
          ..write('id: $id, ')
          ..write('whiteboardId: $whiteboardId, ')
          ..write('cellId: $cellId, ')
          ..write('offsetDx: $offsetDx, ')
          ..write('offsetDy: $offsetDy, ')
          ..write('width: $width, ')
          ..write('preferredWidth: $preferredWidth, ')
          ..write('height: $height, ')
          ..write('preferredHeight: $preferredHeight, ')
          ..write('layer: $layer, ')
          ..write('selected: $selected, ')
          ..write('color: $color, ')
          ..write('cardKind: $cardKind, ')
          ..write('constraints: $constraints, ')
          ..write('preContext: $preContext, ')
          ..write('url: $url')
          ..write(')'))
        .toString();
  }
}

class $ArticleCellItemTable extends ArticleCellItem
    with TableInfo<$ArticleCellItemTable, ArticleCellItemData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ArticleCellItemTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _whiteboardIdMeta =
      const VerificationMeta('whiteboardId');
  @override
  late final GeneratedColumn<String> whiteboardId = GeneratedColumn<String>(
      'whiteboard_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cellIdMeta = const VerificationMeta('cellId');
  @override
  late final GeneratedColumn<String> cellId = GeneratedColumn<String>(
      'cell_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _offsetDxMeta =
      const VerificationMeta('offsetDx');
  @override
  late final GeneratedColumn<double> offsetDx = GeneratedColumn<double>(
      'offset_dx', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _offsetDyMeta =
      const VerificationMeta('offsetDy');
  @override
  late final GeneratedColumn<double> offsetDy = GeneratedColumn<double>(
      'offset_dy', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _widthMeta = const VerificationMeta('width');
  @override
  late final GeneratedColumn<double> width = GeneratedColumn<double>(
      'width', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _preferredWidthMeta =
      const VerificationMeta('preferredWidth');
  @override
  late final GeneratedColumn<double> preferredWidth = GeneratedColumn<double>(
      'preferred_width', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<double> height = GeneratedColumn<double>(
      'height', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _preferredHeightMeta =
      const VerificationMeta('preferredHeight');
  @override
  late final GeneratedColumn<double> preferredHeight = GeneratedColumn<double>(
      'preferred_height', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _layerMeta = const VerificationMeta('layer');
  @override
  late final GeneratedColumn<int> layer = GeneratedColumn<int>(
      'layer', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _selectedMeta =
      const VerificationMeta('selected');
  @override
  late final GeneratedColumn<bool> selected = GeneratedColumn<bool>(
      'selected', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("selected" IN (0, 1))'));
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
      'color', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cardKindMeta =
      const VerificationMeta('cardKind');
  @override
  late final GeneratedColumn<String> cardKind = GeneratedColumn<String>(
      'card_kind', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _constraintsMeta =
      const VerificationMeta('constraints');
  @override
  late final GeneratedColumn<bool> constraints = GeneratedColumn<bool>(
      'constraints', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("constraints" IN (0, 1))'));
  static const VerificationMeta _preContextMeta =
      const VerificationMeta('preContext');
  @override
  late final GeneratedColumn<String> preContext = GeneratedColumn<String>(
      'pre_context', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        whiteboardId,
        cellId,
        offsetDx,
        offsetDy,
        width,
        preferredWidth,
        height,
        preferredHeight,
        layer,
        selected,
        color,
        cardKind,
        constraints,
        preContext,
        title,
        content
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'article_cell_item';
  @override
  VerificationContext validateIntegrity(
      Insertable<ArticleCellItemData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('whiteboard_id')) {
      context.handle(
          _whiteboardIdMeta,
          whiteboardId.isAcceptableOrUnknown(
              data['whiteboard_id']!, _whiteboardIdMeta));
    } else if (isInserting) {
      context.missing(_whiteboardIdMeta);
    }
    if (data.containsKey('cell_id')) {
      context.handle(_cellIdMeta,
          cellId.isAcceptableOrUnknown(data['cell_id']!, _cellIdMeta));
    } else if (isInserting) {
      context.missing(_cellIdMeta);
    }
    if (data.containsKey('offset_dx')) {
      context.handle(_offsetDxMeta,
          offsetDx.isAcceptableOrUnknown(data['offset_dx']!, _offsetDxMeta));
    } else if (isInserting) {
      context.missing(_offsetDxMeta);
    }
    if (data.containsKey('offset_dy')) {
      context.handle(_offsetDyMeta,
          offsetDy.isAcceptableOrUnknown(data['offset_dy']!, _offsetDyMeta));
    } else if (isInserting) {
      context.missing(_offsetDyMeta);
    }
    if (data.containsKey('width')) {
      context.handle(
          _widthMeta, width.isAcceptableOrUnknown(data['width']!, _widthMeta));
    }
    if (data.containsKey('preferred_width')) {
      context.handle(
          _preferredWidthMeta,
          preferredWidth.isAcceptableOrUnknown(
              data['preferred_width']!, _preferredWidthMeta));
    }
    if (data.containsKey('height')) {
      context.handle(_heightMeta,
          height.isAcceptableOrUnknown(data['height']!, _heightMeta));
    }
    if (data.containsKey('preferred_height')) {
      context.handle(
          _preferredHeightMeta,
          preferredHeight.isAcceptableOrUnknown(
              data['preferred_height']!, _preferredHeightMeta));
    }
    if (data.containsKey('layer')) {
      context.handle(
          _layerMeta, layer.isAcceptableOrUnknown(data['layer']!, _layerMeta));
    } else if (isInserting) {
      context.missing(_layerMeta);
    }
    if (data.containsKey('selected')) {
      context.handle(_selectedMeta,
          selected.isAcceptableOrUnknown(data['selected']!, _selectedMeta));
    } else if (isInserting) {
      context.missing(_selectedMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    if (data.containsKey('card_kind')) {
      context.handle(_cardKindMeta,
          cardKind.isAcceptableOrUnknown(data['card_kind']!, _cardKindMeta));
    } else if (isInserting) {
      context.missing(_cardKindMeta);
    }
    if (data.containsKey('constraints')) {
      context.handle(
          _constraintsMeta,
          constraints.isAcceptableOrUnknown(
              data['constraints']!, _constraintsMeta));
    } else if (isInserting) {
      context.missing(_constraintsMeta);
    }
    if (data.containsKey('pre_context')) {
      context.handle(
          _preContextMeta,
          preContext.isAcceptableOrUnknown(
              data['pre_context']!, _preContextMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ArticleCellItemData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ArticleCellItemData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      whiteboardId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}whiteboard_id'])!,
      cellId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cell_id'])!,
      offsetDx: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}offset_dx'])!,
      offsetDy: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}offset_dy'])!,
      width: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}width']),
      preferredWidth: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}preferred_width']),
      height: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}height']),
      preferredHeight: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}preferred_height']),
      layer: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}layer'])!,
      selected: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}selected'])!,
      color: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}color'])!,
      cardKind: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}card_kind'])!,
      constraints: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}constraints'])!,
      preContext: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pre_context']),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
    );
  }

  @override
  $ArticleCellItemTable createAlias(String alias) {
    return $ArticleCellItemTable(attachedDatabase, alias);
  }
}

class ArticleCellItemData extends DataClass
    implements Insertable<ArticleCellItemData> {
  final int id;

  /// Identity related
  final String whiteboardId;
  final String cellId;

  /// Position related
  final double offsetDx;
  final double offsetDy;
  final double? width;
  final double? preferredWidth;
  final double? height;
  final double? preferredHeight;

  /// Decoration related
  final int layer;
  final bool selected;
  final String color;
  final String cardKind;
  final bool constraints;
  final String? preContext;
  final String title;
  final String content;
  const ArticleCellItemData(
      {required this.id,
      required this.whiteboardId,
      required this.cellId,
      required this.offsetDx,
      required this.offsetDy,
      this.width,
      this.preferredWidth,
      this.height,
      this.preferredHeight,
      required this.layer,
      required this.selected,
      required this.color,
      required this.cardKind,
      required this.constraints,
      this.preContext,
      required this.title,
      required this.content});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['whiteboard_id'] = Variable<String>(whiteboardId);
    map['cell_id'] = Variable<String>(cellId);
    map['offset_dx'] = Variable<double>(offsetDx);
    map['offset_dy'] = Variable<double>(offsetDy);
    if (!nullToAbsent || width != null) {
      map['width'] = Variable<double>(width);
    }
    if (!nullToAbsent || preferredWidth != null) {
      map['preferred_width'] = Variable<double>(preferredWidth);
    }
    if (!nullToAbsent || height != null) {
      map['height'] = Variable<double>(height);
    }
    if (!nullToAbsent || preferredHeight != null) {
      map['preferred_height'] = Variable<double>(preferredHeight);
    }
    map['layer'] = Variable<int>(layer);
    map['selected'] = Variable<bool>(selected);
    map['color'] = Variable<String>(color);
    map['card_kind'] = Variable<String>(cardKind);
    map['constraints'] = Variable<bool>(constraints);
    if (!nullToAbsent || preContext != null) {
      map['pre_context'] = Variable<String>(preContext);
    }
    map['title'] = Variable<String>(title);
    map['content'] = Variable<String>(content);
    return map;
  }

  ArticleCellItemCompanion toCompanion(bool nullToAbsent) {
    return ArticleCellItemCompanion(
      id: Value(id),
      whiteboardId: Value(whiteboardId),
      cellId: Value(cellId),
      offsetDx: Value(offsetDx),
      offsetDy: Value(offsetDy),
      width:
          width == null && nullToAbsent ? const Value.absent() : Value(width),
      preferredWidth: preferredWidth == null && nullToAbsent
          ? const Value.absent()
          : Value(preferredWidth),
      height:
          height == null && nullToAbsent ? const Value.absent() : Value(height),
      preferredHeight: preferredHeight == null && nullToAbsent
          ? const Value.absent()
          : Value(preferredHeight),
      layer: Value(layer),
      selected: Value(selected),
      color: Value(color),
      cardKind: Value(cardKind),
      constraints: Value(constraints),
      preContext: preContext == null && nullToAbsent
          ? const Value.absent()
          : Value(preContext),
      title: Value(title),
      content: Value(content),
    );
  }

  factory ArticleCellItemData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ArticleCellItemData(
      id: serializer.fromJson<int>(json['id']),
      whiteboardId: serializer.fromJson<String>(json['whiteboardId']),
      cellId: serializer.fromJson<String>(json['cellId']),
      offsetDx: serializer.fromJson<double>(json['offsetDx']),
      offsetDy: serializer.fromJson<double>(json['offsetDy']),
      width: serializer.fromJson<double?>(json['width']),
      preferredWidth: serializer.fromJson<double?>(json['preferredWidth']),
      height: serializer.fromJson<double?>(json['height']),
      preferredHeight: serializer.fromJson<double?>(json['preferredHeight']),
      layer: serializer.fromJson<int>(json['layer']),
      selected: serializer.fromJson<bool>(json['selected']),
      color: serializer.fromJson<String>(json['color']),
      cardKind: serializer.fromJson<String>(json['cardKind']),
      constraints: serializer.fromJson<bool>(json['constraints']),
      preContext: serializer.fromJson<String?>(json['preContext']),
      title: serializer.fromJson<String>(json['title']),
      content: serializer.fromJson<String>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'whiteboardId': serializer.toJson<String>(whiteboardId),
      'cellId': serializer.toJson<String>(cellId),
      'offsetDx': serializer.toJson<double>(offsetDx),
      'offsetDy': serializer.toJson<double>(offsetDy),
      'width': serializer.toJson<double?>(width),
      'preferredWidth': serializer.toJson<double?>(preferredWidth),
      'height': serializer.toJson<double?>(height),
      'preferredHeight': serializer.toJson<double?>(preferredHeight),
      'layer': serializer.toJson<int>(layer),
      'selected': serializer.toJson<bool>(selected),
      'color': serializer.toJson<String>(color),
      'cardKind': serializer.toJson<String>(cardKind),
      'constraints': serializer.toJson<bool>(constraints),
      'preContext': serializer.toJson<String?>(preContext),
      'title': serializer.toJson<String>(title),
      'content': serializer.toJson<String>(content),
    };
  }

  ArticleCellItemData copyWith(
          {int? id,
          String? whiteboardId,
          String? cellId,
          double? offsetDx,
          double? offsetDy,
          Value<double?> width = const Value.absent(),
          Value<double?> preferredWidth = const Value.absent(),
          Value<double?> height = const Value.absent(),
          Value<double?> preferredHeight = const Value.absent(),
          int? layer,
          bool? selected,
          String? color,
          String? cardKind,
          bool? constraints,
          Value<String?> preContext = const Value.absent(),
          String? title,
          String? content}) =>
      ArticleCellItemData(
        id: id ?? this.id,
        whiteboardId: whiteboardId ?? this.whiteboardId,
        cellId: cellId ?? this.cellId,
        offsetDx: offsetDx ?? this.offsetDx,
        offsetDy: offsetDy ?? this.offsetDy,
        width: width.present ? width.value : this.width,
        preferredWidth:
            preferredWidth.present ? preferredWidth.value : this.preferredWidth,
        height: height.present ? height.value : this.height,
        preferredHeight: preferredHeight.present
            ? preferredHeight.value
            : this.preferredHeight,
        layer: layer ?? this.layer,
        selected: selected ?? this.selected,
        color: color ?? this.color,
        cardKind: cardKind ?? this.cardKind,
        constraints: constraints ?? this.constraints,
        preContext: preContext.present ? preContext.value : this.preContext,
        title: title ?? this.title,
        content: content ?? this.content,
      );
  ArticleCellItemData copyWithCompanion(ArticleCellItemCompanion data) {
    return ArticleCellItemData(
      id: data.id.present ? data.id.value : this.id,
      whiteboardId: data.whiteboardId.present
          ? data.whiteboardId.value
          : this.whiteboardId,
      cellId: data.cellId.present ? data.cellId.value : this.cellId,
      offsetDx: data.offsetDx.present ? data.offsetDx.value : this.offsetDx,
      offsetDy: data.offsetDy.present ? data.offsetDy.value : this.offsetDy,
      width: data.width.present ? data.width.value : this.width,
      preferredWidth: data.preferredWidth.present
          ? data.preferredWidth.value
          : this.preferredWidth,
      height: data.height.present ? data.height.value : this.height,
      preferredHeight: data.preferredHeight.present
          ? data.preferredHeight.value
          : this.preferredHeight,
      layer: data.layer.present ? data.layer.value : this.layer,
      selected: data.selected.present ? data.selected.value : this.selected,
      color: data.color.present ? data.color.value : this.color,
      cardKind: data.cardKind.present ? data.cardKind.value : this.cardKind,
      constraints:
          data.constraints.present ? data.constraints.value : this.constraints,
      preContext:
          data.preContext.present ? data.preContext.value : this.preContext,
      title: data.title.present ? data.title.value : this.title,
      content: data.content.present ? data.content.value : this.content,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ArticleCellItemData(')
          ..write('id: $id, ')
          ..write('whiteboardId: $whiteboardId, ')
          ..write('cellId: $cellId, ')
          ..write('offsetDx: $offsetDx, ')
          ..write('offsetDy: $offsetDy, ')
          ..write('width: $width, ')
          ..write('preferredWidth: $preferredWidth, ')
          ..write('height: $height, ')
          ..write('preferredHeight: $preferredHeight, ')
          ..write('layer: $layer, ')
          ..write('selected: $selected, ')
          ..write('color: $color, ')
          ..write('cardKind: $cardKind, ')
          ..write('constraints: $constraints, ')
          ..write('preContext: $preContext, ')
          ..write('title: $title, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      whiteboardId,
      cellId,
      offsetDx,
      offsetDy,
      width,
      preferredWidth,
      height,
      preferredHeight,
      layer,
      selected,
      color,
      cardKind,
      constraints,
      preContext,
      title,
      content);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ArticleCellItemData &&
          other.id == this.id &&
          other.whiteboardId == this.whiteboardId &&
          other.cellId == this.cellId &&
          other.offsetDx == this.offsetDx &&
          other.offsetDy == this.offsetDy &&
          other.width == this.width &&
          other.preferredWidth == this.preferredWidth &&
          other.height == this.height &&
          other.preferredHeight == this.preferredHeight &&
          other.layer == this.layer &&
          other.selected == this.selected &&
          other.color == this.color &&
          other.cardKind == this.cardKind &&
          other.constraints == this.constraints &&
          other.preContext == this.preContext &&
          other.title == this.title &&
          other.content == this.content);
}

class ArticleCellItemCompanion extends UpdateCompanion<ArticleCellItemData> {
  final Value<int> id;
  final Value<String> whiteboardId;
  final Value<String> cellId;
  final Value<double> offsetDx;
  final Value<double> offsetDy;
  final Value<double?> width;
  final Value<double?> preferredWidth;
  final Value<double?> height;
  final Value<double?> preferredHeight;
  final Value<int> layer;
  final Value<bool> selected;
  final Value<String> color;
  final Value<String> cardKind;
  final Value<bool> constraints;
  final Value<String?> preContext;
  final Value<String> title;
  final Value<String> content;
  const ArticleCellItemCompanion({
    this.id = const Value.absent(),
    this.whiteboardId = const Value.absent(),
    this.cellId = const Value.absent(),
    this.offsetDx = const Value.absent(),
    this.offsetDy = const Value.absent(),
    this.width = const Value.absent(),
    this.preferredWidth = const Value.absent(),
    this.height = const Value.absent(),
    this.preferredHeight = const Value.absent(),
    this.layer = const Value.absent(),
    this.selected = const Value.absent(),
    this.color = const Value.absent(),
    this.cardKind = const Value.absent(),
    this.constraints = const Value.absent(),
    this.preContext = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
  });
  ArticleCellItemCompanion.insert({
    this.id = const Value.absent(),
    required String whiteboardId,
    required String cellId,
    required double offsetDx,
    required double offsetDy,
    this.width = const Value.absent(),
    this.preferredWidth = const Value.absent(),
    this.height = const Value.absent(),
    this.preferredHeight = const Value.absent(),
    required int layer,
    required bool selected,
    required String color,
    required String cardKind,
    required bool constraints,
    this.preContext = const Value.absent(),
    required String title,
    required String content,
  })  : whiteboardId = Value(whiteboardId),
        cellId = Value(cellId),
        offsetDx = Value(offsetDx),
        offsetDy = Value(offsetDy),
        layer = Value(layer),
        selected = Value(selected),
        color = Value(color),
        cardKind = Value(cardKind),
        constraints = Value(constraints),
        title = Value(title),
        content = Value(content);
  static Insertable<ArticleCellItemData> custom({
    Expression<int>? id,
    Expression<String>? whiteboardId,
    Expression<String>? cellId,
    Expression<double>? offsetDx,
    Expression<double>? offsetDy,
    Expression<double>? width,
    Expression<double>? preferredWidth,
    Expression<double>? height,
    Expression<double>? preferredHeight,
    Expression<int>? layer,
    Expression<bool>? selected,
    Expression<String>? color,
    Expression<String>? cardKind,
    Expression<bool>? constraints,
    Expression<String>? preContext,
    Expression<String>? title,
    Expression<String>? content,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (whiteboardId != null) 'whiteboard_id': whiteboardId,
      if (cellId != null) 'cell_id': cellId,
      if (offsetDx != null) 'offset_dx': offsetDx,
      if (offsetDy != null) 'offset_dy': offsetDy,
      if (width != null) 'width': width,
      if (preferredWidth != null) 'preferred_width': preferredWidth,
      if (height != null) 'height': height,
      if (preferredHeight != null) 'preferred_height': preferredHeight,
      if (layer != null) 'layer': layer,
      if (selected != null) 'selected': selected,
      if (color != null) 'color': color,
      if (cardKind != null) 'card_kind': cardKind,
      if (constraints != null) 'constraints': constraints,
      if (preContext != null) 'pre_context': preContext,
      if (title != null) 'title': title,
      if (content != null) 'content': content,
    });
  }

  ArticleCellItemCompanion copyWith(
      {Value<int>? id,
      Value<String>? whiteboardId,
      Value<String>? cellId,
      Value<double>? offsetDx,
      Value<double>? offsetDy,
      Value<double?>? width,
      Value<double?>? preferredWidth,
      Value<double?>? height,
      Value<double?>? preferredHeight,
      Value<int>? layer,
      Value<bool>? selected,
      Value<String>? color,
      Value<String>? cardKind,
      Value<bool>? constraints,
      Value<String?>? preContext,
      Value<String>? title,
      Value<String>? content}) {
    return ArticleCellItemCompanion(
      id: id ?? this.id,
      whiteboardId: whiteboardId ?? this.whiteboardId,
      cellId: cellId ?? this.cellId,
      offsetDx: offsetDx ?? this.offsetDx,
      offsetDy: offsetDy ?? this.offsetDy,
      width: width ?? this.width,
      preferredWidth: preferredWidth ?? this.preferredWidth,
      height: height ?? this.height,
      preferredHeight: preferredHeight ?? this.preferredHeight,
      layer: layer ?? this.layer,
      selected: selected ?? this.selected,
      color: color ?? this.color,
      cardKind: cardKind ?? this.cardKind,
      constraints: constraints ?? this.constraints,
      preContext: preContext ?? this.preContext,
      title: title ?? this.title,
      content: content ?? this.content,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (whiteboardId.present) {
      map['whiteboard_id'] = Variable<String>(whiteboardId.value);
    }
    if (cellId.present) {
      map['cell_id'] = Variable<String>(cellId.value);
    }
    if (offsetDx.present) {
      map['offset_dx'] = Variable<double>(offsetDx.value);
    }
    if (offsetDy.present) {
      map['offset_dy'] = Variable<double>(offsetDy.value);
    }
    if (width.present) {
      map['width'] = Variable<double>(width.value);
    }
    if (preferredWidth.present) {
      map['preferred_width'] = Variable<double>(preferredWidth.value);
    }
    if (height.present) {
      map['height'] = Variable<double>(height.value);
    }
    if (preferredHeight.present) {
      map['preferred_height'] = Variable<double>(preferredHeight.value);
    }
    if (layer.present) {
      map['layer'] = Variable<int>(layer.value);
    }
    if (selected.present) {
      map['selected'] = Variable<bool>(selected.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (cardKind.present) {
      map['card_kind'] = Variable<String>(cardKind.value);
    }
    if (constraints.present) {
      map['constraints'] = Variable<bool>(constraints.value);
    }
    if (preContext.present) {
      map['pre_context'] = Variable<String>(preContext.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ArticleCellItemCompanion(')
          ..write('id: $id, ')
          ..write('whiteboardId: $whiteboardId, ')
          ..write('cellId: $cellId, ')
          ..write('offsetDx: $offsetDx, ')
          ..write('offsetDy: $offsetDy, ')
          ..write('width: $width, ')
          ..write('preferredWidth: $preferredWidth, ')
          ..write('height: $height, ')
          ..write('preferredHeight: $preferredHeight, ')
          ..write('layer: $layer, ')
          ..write('selected: $selected, ')
          ..write('color: $color, ')
          ..write('cardKind: $cardKind, ')
          ..write('constraints: $constraints, ')
          ..write('preContext: $preContext, ')
          ..write('title: $title, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }
}

class $UrlCellItemTable extends UrlCellItem
    with TableInfo<$UrlCellItemTable, UrlCellItemData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UrlCellItemTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _whiteboardIdMeta =
      const VerificationMeta('whiteboardId');
  @override
  late final GeneratedColumn<String> whiteboardId = GeneratedColumn<String>(
      'whiteboard_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cellIdMeta = const VerificationMeta('cellId');
  @override
  late final GeneratedColumn<String> cellId = GeneratedColumn<String>(
      'cell_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _offsetDxMeta =
      const VerificationMeta('offsetDx');
  @override
  late final GeneratedColumn<double> offsetDx = GeneratedColumn<double>(
      'offset_dx', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _offsetDyMeta =
      const VerificationMeta('offsetDy');
  @override
  late final GeneratedColumn<double> offsetDy = GeneratedColumn<double>(
      'offset_dy', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _widthMeta = const VerificationMeta('width');
  @override
  late final GeneratedColumn<double> width = GeneratedColumn<double>(
      'width', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _preferredWidthMeta =
      const VerificationMeta('preferredWidth');
  @override
  late final GeneratedColumn<double> preferredWidth = GeneratedColumn<double>(
      'preferred_width', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<double> height = GeneratedColumn<double>(
      'height', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _preferredHeightMeta =
      const VerificationMeta('preferredHeight');
  @override
  late final GeneratedColumn<double> preferredHeight = GeneratedColumn<double>(
      'preferred_height', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _layerMeta = const VerificationMeta('layer');
  @override
  late final GeneratedColumn<int> layer = GeneratedColumn<int>(
      'layer', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _selectedMeta =
      const VerificationMeta('selected');
  @override
  late final GeneratedColumn<bool> selected = GeneratedColumn<bool>(
      'selected', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("selected" IN (0, 1))'));
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
      'color', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cardKindMeta =
      const VerificationMeta('cardKind');
  @override
  late final GeneratedColumn<String> cardKind = GeneratedColumn<String>(
      'card_kind', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _constraintsMeta =
      const VerificationMeta('constraints');
  @override
  late final GeneratedColumn<bool> constraints = GeneratedColumn<bool>(
      'constraints', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("constraints" IN (0, 1))'));
  static const VerificationMeta _preContextMeta =
      const VerificationMeta('preContext');
  @override
  late final GeneratedColumn<String> preContext = GeneratedColumn<String>(
      'pre_context', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        whiteboardId,
        cellId,
        offsetDx,
        offsetDy,
        width,
        preferredWidth,
        height,
        preferredHeight,
        layer,
        selected,
        color,
        cardKind,
        constraints,
        preContext,
        url
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'url_cell_item';
  @override
  VerificationContext validateIntegrity(Insertable<UrlCellItemData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('whiteboard_id')) {
      context.handle(
          _whiteboardIdMeta,
          whiteboardId.isAcceptableOrUnknown(
              data['whiteboard_id']!, _whiteboardIdMeta));
    } else if (isInserting) {
      context.missing(_whiteboardIdMeta);
    }
    if (data.containsKey('cell_id')) {
      context.handle(_cellIdMeta,
          cellId.isAcceptableOrUnknown(data['cell_id']!, _cellIdMeta));
    } else if (isInserting) {
      context.missing(_cellIdMeta);
    }
    if (data.containsKey('offset_dx')) {
      context.handle(_offsetDxMeta,
          offsetDx.isAcceptableOrUnknown(data['offset_dx']!, _offsetDxMeta));
    } else if (isInserting) {
      context.missing(_offsetDxMeta);
    }
    if (data.containsKey('offset_dy')) {
      context.handle(_offsetDyMeta,
          offsetDy.isAcceptableOrUnknown(data['offset_dy']!, _offsetDyMeta));
    } else if (isInserting) {
      context.missing(_offsetDyMeta);
    }
    if (data.containsKey('width')) {
      context.handle(
          _widthMeta, width.isAcceptableOrUnknown(data['width']!, _widthMeta));
    }
    if (data.containsKey('preferred_width')) {
      context.handle(
          _preferredWidthMeta,
          preferredWidth.isAcceptableOrUnknown(
              data['preferred_width']!, _preferredWidthMeta));
    }
    if (data.containsKey('height')) {
      context.handle(_heightMeta,
          height.isAcceptableOrUnknown(data['height']!, _heightMeta));
    }
    if (data.containsKey('preferred_height')) {
      context.handle(
          _preferredHeightMeta,
          preferredHeight.isAcceptableOrUnknown(
              data['preferred_height']!, _preferredHeightMeta));
    }
    if (data.containsKey('layer')) {
      context.handle(
          _layerMeta, layer.isAcceptableOrUnknown(data['layer']!, _layerMeta));
    } else if (isInserting) {
      context.missing(_layerMeta);
    }
    if (data.containsKey('selected')) {
      context.handle(_selectedMeta,
          selected.isAcceptableOrUnknown(data['selected']!, _selectedMeta));
    } else if (isInserting) {
      context.missing(_selectedMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    if (data.containsKey('card_kind')) {
      context.handle(_cardKindMeta,
          cardKind.isAcceptableOrUnknown(data['card_kind']!, _cardKindMeta));
    } else if (isInserting) {
      context.missing(_cardKindMeta);
    }
    if (data.containsKey('constraints')) {
      context.handle(
          _constraintsMeta,
          constraints.isAcceptableOrUnknown(
              data['constraints']!, _constraintsMeta));
    } else if (isInserting) {
      context.missing(_constraintsMeta);
    }
    if (data.containsKey('pre_context')) {
      context.handle(
          _preContextMeta,
          preContext.isAcceptableOrUnknown(
              data['pre_context']!, _preContextMeta));
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UrlCellItemData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UrlCellItemData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      whiteboardId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}whiteboard_id'])!,
      cellId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cell_id'])!,
      offsetDx: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}offset_dx'])!,
      offsetDy: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}offset_dy'])!,
      width: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}width']),
      preferredWidth: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}preferred_width']),
      height: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}height']),
      preferredHeight: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}preferred_height']),
      layer: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}layer'])!,
      selected: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}selected'])!,
      color: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}color'])!,
      cardKind: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}card_kind'])!,
      constraints: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}constraints'])!,
      preContext: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pre_context']),
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url'])!,
    );
  }

  @override
  $UrlCellItemTable createAlias(String alias) {
    return $UrlCellItemTable(attachedDatabase, alias);
  }
}

class UrlCellItemData extends DataClass implements Insertable<UrlCellItemData> {
  final int id;

  /// Identity related
  final String whiteboardId;
  final String cellId;

  /// Position related
  final double offsetDx;
  final double offsetDy;
  final double? width;
  final double? preferredWidth;
  final double? height;
  final double? preferredHeight;

  /// Decoration related
  final int layer;
  final bool selected;
  final String color;
  final String cardKind;
  final bool constraints;
  final String? preContext;
  final String url;
  const UrlCellItemData(
      {required this.id,
      required this.whiteboardId,
      required this.cellId,
      required this.offsetDx,
      required this.offsetDy,
      this.width,
      this.preferredWidth,
      this.height,
      this.preferredHeight,
      required this.layer,
      required this.selected,
      required this.color,
      required this.cardKind,
      required this.constraints,
      this.preContext,
      required this.url});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['whiteboard_id'] = Variable<String>(whiteboardId);
    map['cell_id'] = Variable<String>(cellId);
    map['offset_dx'] = Variable<double>(offsetDx);
    map['offset_dy'] = Variable<double>(offsetDy);
    if (!nullToAbsent || width != null) {
      map['width'] = Variable<double>(width);
    }
    if (!nullToAbsent || preferredWidth != null) {
      map['preferred_width'] = Variable<double>(preferredWidth);
    }
    if (!nullToAbsent || height != null) {
      map['height'] = Variable<double>(height);
    }
    if (!nullToAbsent || preferredHeight != null) {
      map['preferred_height'] = Variable<double>(preferredHeight);
    }
    map['layer'] = Variable<int>(layer);
    map['selected'] = Variable<bool>(selected);
    map['color'] = Variable<String>(color);
    map['card_kind'] = Variable<String>(cardKind);
    map['constraints'] = Variable<bool>(constraints);
    if (!nullToAbsent || preContext != null) {
      map['pre_context'] = Variable<String>(preContext);
    }
    map['url'] = Variable<String>(url);
    return map;
  }

  UrlCellItemCompanion toCompanion(bool nullToAbsent) {
    return UrlCellItemCompanion(
      id: Value(id),
      whiteboardId: Value(whiteboardId),
      cellId: Value(cellId),
      offsetDx: Value(offsetDx),
      offsetDy: Value(offsetDy),
      width:
          width == null && nullToAbsent ? const Value.absent() : Value(width),
      preferredWidth: preferredWidth == null && nullToAbsent
          ? const Value.absent()
          : Value(preferredWidth),
      height:
          height == null && nullToAbsent ? const Value.absent() : Value(height),
      preferredHeight: preferredHeight == null && nullToAbsent
          ? const Value.absent()
          : Value(preferredHeight),
      layer: Value(layer),
      selected: Value(selected),
      color: Value(color),
      cardKind: Value(cardKind),
      constraints: Value(constraints),
      preContext: preContext == null && nullToAbsent
          ? const Value.absent()
          : Value(preContext),
      url: Value(url),
    );
  }

  factory UrlCellItemData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UrlCellItemData(
      id: serializer.fromJson<int>(json['id']),
      whiteboardId: serializer.fromJson<String>(json['whiteboardId']),
      cellId: serializer.fromJson<String>(json['cellId']),
      offsetDx: serializer.fromJson<double>(json['offsetDx']),
      offsetDy: serializer.fromJson<double>(json['offsetDy']),
      width: serializer.fromJson<double?>(json['width']),
      preferredWidth: serializer.fromJson<double?>(json['preferredWidth']),
      height: serializer.fromJson<double?>(json['height']),
      preferredHeight: serializer.fromJson<double?>(json['preferredHeight']),
      layer: serializer.fromJson<int>(json['layer']),
      selected: serializer.fromJson<bool>(json['selected']),
      color: serializer.fromJson<String>(json['color']),
      cardKind: serializer.fromJson<String>(json['cardKind']),
      constraints: serializer.fromJson<bool>(json['constraints']),
      preContext: serializer.fromJson<String?>(json['preContext']),
      url: serializer.fromJson<String>(json['url']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'whiteboardId': serializer.toJson<String>(whiteboardId),
      'cellId': serializer.toJson<String>(cellId),
      'offsetDx': serializer.toJson<double>(offsetDx),
      'offsetDy': serializer.toJson<double>(offsetDy),
      'width': serializer.toJson<double?>(width),
      'preferredWidth': serializer.toJson<double?>(preferredWidth),
      'height': serializer.toJson<double?>(height),
      'preferredHeight': serializer.toJson<double?>(preferredHeight),
      'layer': serializer.toJson<int>(layer),
      'selected': serializer.toJson<bool>(selected),
      'color': serializer.toJson<String>(color),
      'cardKind': serializer.toJson<String>(cardKind),
      'constraints': serializer.toJson<bool>(constraints),
      'preContext': serializer.toJson<String?>(preContext),
      'url': serializer.toJson<String>(url),
    };
  }

  UrlCellItemData copyWith(
          {int? id,
          String? whiteboardId,
          String? cellId,
          double? offsetDx,
          double? offsetDy,
          Value<double?> width = const Value.absent(),
          Value<double?> preferredWidth = const Value.absent(),
          Value<double?> height = const Value.absent(),
          Value<double?> preferredHeight = const Value.absent(),
          int? layer,
          bool? selected,
          String? color,
          String? cardKind,
          bool? constraints,
          Value<String?> preContext = const Value.absent(),
          String? url}) =>
      UrlCellItemData(
        id: id ?? this.id,
        whiteboardId: whiteboardId ?? this.whiteboardId,
        cellId: cellId ?? this.cellId,
        offsetDx: offsetDx ?? this.offsetDx,
        offsetDy: offsetDy ?? this.offsetDy,
        width: width.present ? width.value : this.width,
        preferredWidth:
            preferredWidth.present ? preferredWidth.value : this.preferredWidth,
        height: height.present ? height.value : this.height,
        preferredHeight: preferredHeight.present
            ? preferredHeight.value
            : this.preferredHeight,
        layer: layer ?? this.layer,
        selected: selected ?? this.selected,
        color: color ?? this.color,
        cardKind: cardKind ?? this.cardKind,
        constraints: constraints ?? this.constraints,
        preContext: preContext.present ? preContext.value : this.preContext,
        url: url ?? this.url,
      );
  UrlCellItemData copyWithCompanion(UrlCellItemCompanion data) {
    return UrlCellItemData(
      id: data.id.present ? data.id.value : this.id,
      whiteboardId: data.whiteboardId.present
          ? data.whiteboardId.value
          : this.whiteboardId,
      cellId: data.cellId.present ? data.cellId.value : this.cellId,
      offsetDx: data.offsetDx.present ? data.offsetDx.value : this.offsetDx,
      offsetDy: data.offsetDy.present ? data.offsetDy.value : this.offsetDy,
      width: data.width.present ? data.width.value : this.width,
      preferredWidth: data.preferredWidth.present
          ? data.preferredWidth.value
          : this.preferredWidth,
      height: data.height.present ? data.height.value : this.height,
      preferredHeight: data.preferredHeight.present
          ? data.preferredHeight.value
          : this.preferredHeight,
      layer: data.layer.present ? data.layer.value : this.layer,
      selected: data.selected.present ? data.selected.value : this.selected,
      color: data.color.present ? data.color.value : this.color,
      cardKind: data.cardKind.present ? data.cardKind.value : this.cardKind,
      constraints:
          data.constraints.present ? data.constraints.value : this.constraints,
      preContext:
          data.preContext.present ? data.preContext.value : this.preContext,
      url: data.url.present ? data.url.value : this.url,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UrlCellItemData(')
          ..write('id: $id, ')
          ..write('whiteboardId: $whiteboardId, ')
          ..write('cellId: $cellId, ')
          ..write('offsetDx: $offsetDx, ')
          ..write('offsetDy: $offsetDy, ')
          ..write('width: $width, ')
          ..write('preferredWidth: $preferredWidth, ')
          ..write('height: $height, ')
          ..write('preferredHeight: $preferredHeight, ')
          ..write('layer: $layer, ')
          ..write('selected: $selected, ')
          ..write('color: $color, ')
          ..write('cardKind: $cardKind, ')
          ..write('constraints: $constraints, ')
          ..write('preContext: $preContext, ')
          ..write('url: $url')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      whiteboardId,
      cellId,
      offsetDx,
      offsetDy,
      width,
      preferredWidth,
      height,
      preferredHeight,
      layer,
      selected,
      color,
      cardKind,
      constraints,
      preContext,
      url);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UrlCellItemData &&
          other.id == this.id &&
          other.whiteboardId == this.whiteboardId &&
          other.cellId == this.cellId &&
          other.offsetDx == this.offsetDx &&
          other.offsetDy == this.offsetDy &&
          other.width == this.width &&
          other.preferredWidth == this.preferredWidth &&
          other.height == this.height &&
          other.preferredHeight == this.preferredHeight &&
          other.layer == this.layer &&
          other.selected == this.selected &&
          other.color == this.color &&
          other.cardKind == this.cardKind &&
          other.constraints == this.constraints &&
          other.preContext == this.preContext &&
          other.url == this.url);
}

class UrlCellItemCompanion extends UpdateCompanion<UrlCellItemData> {
  final Value<int> id;
  final Value<String> whiteboardId;
  final Value<String> cellId;
  final Value<double> offsetDx;
  final Value<double> offsetDy;
  final Value<double?> width;
  final Value<double?> preferredWidth;
  final Value<double?> height;
  final Value<double?> preferredHeight;
  final Value<int> layer;
  final Value<bool> selected;
  final Value<String> color;
  final Value<String> cardKind;
  final Value<bool> constraints;
  final Value<String?> preContext;
  final Value<String> url;
  const UrlCellItemCompanion({
    this.id = const Value.absent(),
    this.whiteboardId = const Value.absent(),
    this.cellId = const Value.absent(),
    this.offsetDx = const Value.absent(),
    this.offsetDy = const Value.absent(),
    this.width = const Value.absent(),
    this.preferredWidth = const Value.absent(),
    this.height = const Value.absent(),
    this.preferredHeight = const Value.absent(),
    this.layer = const Value.absent(),
    this.selected = const Value.absent(),
    this.color = const Value.absent(),
    this.cardKind = const Value.absent(),
    this.constraints = const Value.absent(),
    this.preContext = const Value.absent(),
    this.url = const Value.absent(),
  });
  UrlCellItemCompanion.insert({
    this.id = const Value.absent(),
    required String whiteboardId,
    required String cellId,
    required double offsetDx,
    required double offsetDy,
    this.width = const Value.absent(),
    this.preferredWidth = const Value.absent(),
    this.height = const Value.absent(),
    this.preferredHeight = const Value.absent(),
    required int layer,
    required bool selected,
    required String color,
    required String cardKind,
    required bool constraints,
    this.preContext = const Value.absent(),
    required String url,
  })  : whiteboardId = Value(whiteboardId),
        cellId = Value(cellId),
        offsetDx = Value(offsetDx),
        offsetDy = Value(offsetDy),
        layer = Value(layer),
        selected = Value(selected),
        color = Value(color),
        cardKind = Value(cardKind),
        constraints = Value(constraints),
        url = Value(url);
  static Insertable<UrlCellItemData> custom({
    Expression<int>? id,
    Expression<String>? whiteboardId,
    Expression<String>? cellId,
    Expression<double>? offsetDx,
    Expression<double>? offsetDy,
    Expression<double>? width,
    Expression<double>? preferredWidth,
    Expression<double>? height,
    Expression<double>? preferredHeight,
    Expression<int>? layer,
    Expression<bool>? selected,
    Expression<String>? color,
    Expression<String>? cardKind,
    Expression<bool>? constraints,
    Expression<String>? preContext,
    Expression<String>? url,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (whiteboardId != null) 'whiteboard_id': whiteboardId,
      if (cellId != null) 'cell_id': cellId,
      if (offsetDx != null) 'offset_dx': offsetDx,
      if (offsetDy != null) 'offset_dy': offsetDy,
      if (width != null) 'width': width,
      if (preferredWidth != null) 'preferred_width': preferredWidth,
      if (height != null) 'height': height,
      if (preferredHeight != null) 'preferred_height': preferredHeight,
      if (layer != null) 'layer': layer,
      if (selected != null) 'selected': selected,
      if (color != null) 'color': color,
      if (cardKind != null) 'card_kind': cardKind,
      if (constraints != null) 'constraints': constraints,
      if (preContext != null) 'pre_context': preContext,
      if (url != null) 'url': url,
    });
  }

  UrlCellItemCompanion copyWith(
      {Value<int>? id,
      Value<String>? whiteboardId,
      Value<String>? cellId,
      Value<double>? offsetDx,
      Value<double>? offsetDy,
      Value<double?>? width,
      Value<double?>? preferredWidth,
      Value<double?>? height,
      Value<double?>? preferredHeight,
      Value<int>? layer,
      Value<bool>? selected,
      Value<String>? color,
      Value<String>? cardKind,
      Value<bool>? constraints,
      Value<String?>? preContext,
      Value<String>? url}) {
    return UrlCellItemCompanion(
      id: id ?? this.id,
      whiteboardId: whiteboardId ?? this.whiteboardId,
      cellId: cellId ?? this.cellId,
      offsetDx: offsetDx ?? this.offsetDx,
      offsetDy: offsetDy ?? this.offsetDy,
      width: width ?? this.width,
      preferredWidth: preferredWidth ?? this.preferredWidth,
      height: height ?? this.height,
      preferredHeight: preferredHeight ?? this.preferredHeight,
      layer: layer ?? this.layer,
      selected: selected ?? this.selected,
      color: color ?? this.color,
      cardKind: cardKind ?? this.cardKind,
      constraints: constraints ?? this.constraints,
      preContext: preContext ?? this.preContext,
      url: url ?? this.url,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (whiteboardId.present) {
      map['whiteboard_id'] = Variable<String>(whiteboardId.value);
    }
    if (cellId.present) {
      map['cell_id'] = Variable<String>(cellId.value);
    }
    if (offsetDx.present) {
      map['offset_dx'] = Variable<double>(offsetDx.value);
    }
    if (offsetDy.present) {
      map['offset_dy'] = Variable<double>(offsetDy.value);
    }
    if (width.present) {
      map['width'] = Variable<double>(width.value);
    }
    if (preferredWidth.present) {
      map['preferred_width'] = Variable<double>(preferredWidth.value);
    }
    if (height.present) {
      map['height'] = Variable<double>(height.value);
    }
    if (preferredHeight.present) {
      map['preferred_height'] = Variable<double>(preferredHeight.value);
    }
    if (layer.present) {
      map['layer'] = Variable<int>(layer.value);
    }
    if (selected.present) {
      map['selected'] = Variable<bool>(selected.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (cardKind.present) {
      map['card_kind'] = Variable<String>(cardKind.value);
    }
    if (constraints.present) {
      map['constraints'] = Variable<bool>(constraints.value);
    }
    if (preContext.present) {
      map['pre_context'] = Variable<String>(preContext.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UrlCellItemCompanion(')
          ..write('id: $id, ')
          ..write('whiteboardId: $whiteboardId, ')
          ..write('cellId: $cellId, ')
          ..write('offsetDx: $offsetDx, ')
          ..write('offsetDy: $offsetDy, ')
          ..write('width: $width, ')
          ..write('preferredWidth: $preferredWidth, ')
          ..write('height: $height, ')
          ..write('preferredHeight: $preferredHeight, ')
          ..write('layer: $layer, ')
          ..write('selected: $selected, ')
          ..write('color: $color, ')
          ..write('cardKind: $cardKind, ')
          ..write('constraints: $constraints, ')
          ..write('preContext: $preContext, ')
          ..write('url: $url')
          ..write(')'))
        .toString();
  }
}

class $HeaderCellItemTable extends HeaderCellItem
    with TableInfo<$HeaderCellItemTable, HeaderCellItemData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HeaderCellItemTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _whiteboardIdMeta =
      const VerificationMeta('whiteboardId');
  @override
  late final GeneratedColumn<String> whiteboardId = GeneratedColumn<String>(
      'whiteboard_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cellIdMeta = const VerificationMeta('cellId');
  @override
  late final GeneratedColumn<String> cellId = GeneratedColumn<String>(
      'cell_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _offsetDxMeta =
      const VerificationMeta('offsetDx');
  @override
  late final GeneratedColumn<double> offsetDx = GeneratedColumn<double>(
      'offset_dx', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _offsetDyMeta =
      const VerificationMeta('offsetDy');
  @override
  late final GeneratedColumn<double> offsetDy = GeneratedColumn<double>(
      'offset_dy', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _widthMeta = const VerificationMeta('width');
  @override
  late final GeneratedColumn<double> width = GeneratedColumn<double>(
      'width', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _preferredWidthMeta =
      const VerificationMeta('preferredWidth');
  @override
  late final GeneratedColumn<double> preferredWidth = GeneratedColumn<double>(
      'preferred_width', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<double> height = GeneratedColumn<double>(
      'height', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _preferredHeightMeta =
      const VerificationMeta('preferredHeight');
  @override
  late final GeneratedColumn<double> preferredHeight = GeneratedColumn<double>(
      'preferred_height', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _layerMeta = const VerificationMeta('layer');
  @override
  late final GeneratedColumn<int> layer = GeneratedColumn<int>(
      'layer', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _selectedMeta =
      const VerificationMeta('selected');
  @override
  late final GeneratedColumn<bool> selected = GeneratedColumn<bool>(
      'selected', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("selected" IN (0, 1))'));
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
      'color', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cardKindMeta =
      const VerificationMeta('cardKind');
  @override
  late final GeneratedColumn<String> cardKind = GeneratedColumn<String>(
      'card_kind', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _constraintsMeta =
      const VerificationMeta('constraints');
  @override
  late final GeneratedColumn<bool> constraints = GeneratedColumn<bool>(
      'constraints', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("constraints" IN (0, 1))'));
  static const VerificationMeta _preContextMeta =
      const VerificationMeta('preContext');
  @override
  late final GeneratedColumn<String> preContext = GeneratedColumn<String>(
      'pre_context', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        whiteboardId,
        cellId,
        offsetDx,
        offsetDy,
        width,
        preferredWidth,
        height,
        preferredHeight,
        layer,
        selected,
        color,
        cardKind,
        constraints,
        preContext,
        title
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'header_cell_item';
  @override
  VerificationContext validateIntegrity(Insertable<HeaderCellItemData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('whiteboard_id')) {
      context.handle(
          _whiteboardIdMeta,
          whiteboardId.isAcceptableOrUnknown(
              data['whiteboard_id']!, _whiteboardIdMeta));
    } else if (isInserting) {
      context.missing(_whiteboardIdMeta);
    }
    if (data.containsKey('cell_id')) {
      context.handle(_cellIdMeta,
          cellId.isAcceptableOrUnknown(data['cell_id']!, _cellIdMeta));
    } else if (isInserting) {
      context.missing(_cellIdMeta);
    }
    if (data.containsKey('offset_dx')) {
      context.handle(_offsetDxMeta,
          offsetDx.isAcceptableOrUnknown(data['offset_dx']!, _offsetDxMeta));
    } else if (isInserting) {
      context.missing(_offsetDxMeta);
    }
    if (data.containsKey('offset_dy')) {
      context.handle(_offsetDyMeta,
          offsetDy.isAcceptableOrUnknown(data['offset_dy']!, _offsetDyMeta));
    } else if (isInserting) {
      context.missing(_offsetDyMeta);
    }
    if (data.containsKey('width')) {
      context.handle(
          _widthMeta, width.isAcceptableOrUnknown(data['width']!, _widthMeta));
    }
    if (data.containsKey('preferred_width')) {
      context.handle(
          _preferredWidthMeta,
          preferredWidth.isAcceptableOrUnknown(
              data['preferred_width']!, _preferredWidthMeta));
    }
    if (data.containsKey('height')) {
      context.handle(_heightMeta,
          height.isAcceptableOrUnknown(data['height']!, _heightMeta));
    }
    if (data.containsKey('preferred_height')) {
      context.handle(
          _preferredHeightMeta,
          preferredHeight.isAcceptableOrUnknown(
              data['preferred_height']!, _preferredHeightMeta));
    }
    if (data.containsKey('layer')) {
      context.handle(
          _layerMeta, layer.isAcceptableOrUnknown(data['layer']!, _layerMeta));
    } else if (isInserting) {
      context.missing(_layerMeta);
    }
    if (data.containsKey('selected')) {
      context.handle(_selectedMeta,
          selected.isAcceptableOrUnknown(data['selected']!, _selectedMeta));
    } else if (isInserting) {
      context.missing(_selectedMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    if (data.containsKey('card_kind')) {
      context.handle(_cardKindMeta,
          cardKind.isAcceptableOrUnknown(data['card_kind']!, _cardKindMeta));
    } else if (isInserting) {
      context.missing(_cardKindMeta);
    }
    if (data.containsKey('constraints')) {
      context.handle(
          _constraintsMeta,
          constraints.isAcceptableOrUnknown(
              data['constraints']!, _constraintsMeta));
    } else if (isInserting) {
      context.missing(_constraintsMeta);
    }
    if (data.containsKey('pre_context')) {
      context.handle(
          _preContextMeta,
          preContext.isAcceptableOrUnknown(
              data['pre_context']!, _preContextMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  HeaderCellItemData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HeaderCellItemData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      whiteboardId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}whiteboard_id'])!,
      cellId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cell_id'])!,
      offsetDx: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}offset_dx'])!,
      offsetDy: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}offset_dy'])!,
      width: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}width']),
      preferredWidth: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}preferred_width']),
      height: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}height']),
      preferredHeight: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}preferred_height']),
      layer: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}layer'])!,
      selected: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}selected'])!,
      color: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}color'])!,
      cardKind: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}card_kind'])!,
      constraints: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}constraints'])!,
      preContext: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pre_context']),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
    );
  }

  @override
  $HeaderCellItemTable createAlias(String alias) {
    return $HeaderCellItemTable(attachedDatabase, alias);
  }
}

class HeaderCellItemData extends DataClass
    implements Insertable<HeaderCellItemData> {
  final int id;

  /// Identity related
  final String whiteboardId;
  final String cellId;

  /// Position related
  final double offsetDx;
  final double offsetDy;
  final double? width;
  final double? preferredWidth;
  final double? height;
  final double? preferredHeight;

  /// Decoration related
  final int layer;
  final bool selected;
  final String color;
  final String cardKind;
  final bool constraints;
  final String? preContext;
  final String title;
  const HeaderCellItemData(
      {required this.id,
      required this.whiteboardId,
      required this.cellId,
      required this.offsetDx,
      required this.offsetDy,
      this.width,
      this.preferredWidth,
      this.height,
      this.preferredHeight,
      required this.layer,
      required this.selected,
      required this.color,
      required this.cardKind,
      required this.constraints,
      this.preContext,
      required this.title});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['whiteboard_id'] = Variable<String>(whiteboardId);
    map['cell_id'] = Variable<String>(cellId);
    map['offset_dx'] = Variable<double>(offsetDx);
    map['offset_dy'] = Variable<double>(offsetDy);
    if (!nullToAbsent || width != null) {
      map['width'] = Variable<double>(width);
    }
    if (!nullToAbsent || preferredWidth != null) {
      map['preferred_width'] = Variable<double>(preferredWidth);
    }
    if (!nullToAbsent || height != null) {
      map['height'] = Variable<double>(height);
    }
    if (!nullToAbsent || preferredHeight != null) {
      map['preferred_height'] = Variable<double>(preferredHeight);
    }
    map['layer'] = Variable<int>(layer);
    map['selected'] = Variable<bool>(selected);
    map['color'] = Variable<String>(color);
    map['card_kind'] = Variable<String>(cardKind);
    map['constraints'] = Variable<bool>(constraints);
    if (!nullToAbsent || preContext != null) {
      map['pre_context'] = Variable<String>(preContext);
    }
    map['title'] = Variable<String>(title);
    return map;
  }

  HeaderCellItemCompanion toCompanion(bool nullToAbsent) {
    return HeaderCellItemCompanion(
      id: Value(id),
      whiteboardId: Value(whiteboardId),
      cellId: Value(cellId),
      offsetDx: Value(offsetDx),
      offsetDy: Value(offsetDy),
      width:
          width == null && nullToAbsent ? const Value.absent() : Value(width),
      preferredWidth: preferredWidth == null && nullToAbsent
          ? const Value.absent()
          : Value(preferredWidth),
      height:
          height == null && nullToAbsent ? const Value.absent() : Value(height),
      preferredHeight: preferredHeight == null && nullToAbsent
          ? const Value.absent()
          : Value(preferredHeight),
      layer: Value(layer),
      selected: Value(selected),
      color: Value(color),
      cardKind: Value(cardKind),
      constraints: Value(constraints),
      preContext: preContext == null && nullToAbsent
          ? const Value.absent()
          : Value(preContext),
      title: Value(title),
    );
  }

  factory HeaderCellItemData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HeaderCellItemData(
      id: serializer.fromJson<int>(json['id']),
      whiteboardId: serializer.fromJson<String>(json['whiteboardId']),
      cellId: serializer.fromJson<String>(json['cellId']),
      offsetDx: serializer.fromJson<double>(json['offsetDx']),
      offsetDy: serializer.fromJson<double>(json['offsetDy']),
      width: serializer.fromJson<double?>(json['width']),
      preferredWidth: serializer.fromJson<double?>(json['preferredWidth']),
      height: serializer.fromJson<double?>(json['height']),
      preferredHeight: serializer.fromJson<double?>(json['preferredHeight']),
      layer: serializer.fromJson<int>(json['layer']),
      selected: serializer.fromJson<bool>(json['selected']),
      color: serializer.fromJson<String>(json['color']),
      cardKind: serializer.fromJson<String>(json['cardKind']),
      constraints: serializer.fromJson<bool>(json['constraints']),
      preContext: serializer.fromJson<String?>(json['preContext']),
      title: serializer.fromJson<String>(json['title']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'whiteboardId': serializer.toJson<String>(whiteboardId),
      'cellId': serializer.toJson<String>(cellId),
      'offsetDx': serializer.toJson<double>(offsetDx),
      'offsetDy': serializer.toJson<double>(offsetDy),
      'width': serializer.toJson<double?>(width),
      'preferredWidth': serializer.toJson<double?>(preferredWidth),
      'height': serializer.toJson<double?>(height),
      'preferredHeight': serializer.toJson<double?>(preferredHeight),
      'layer': serializer.toJson<int>(layer),
      'selected': serializer.toJson<bool>(selected),
      'color': serializer.toJson<String>(color),
      'cardKind': serializer.toJson<String>(cardKind),
      'constraints': serializer.toJson<bool>(constraints),
      'preContext': serializer.toJson<String?>(preContext),
      'title': serializer.toJson<String>(title),
    };
  }

  HeaderCellItemData copyWith(
          {int? id,
          String? whiteboardId,
          String? cellId,
          double? offsetDx,
          double? offsetDy,
          Value<double?> width = const Value.absent(),
          Value<double?> preferredWidth = const Value.absent(),
          Value<double?> height = const Value.absent(),
          Value<double?> preferredHeight = const Value.absent(),
          int? layer,
          bool? selected,
          String? color,
          String? cardKind,
          bool? constraints,
          Value<String?> preContext = const Value.absent(),
          String? title}) =>
      HeaderCellItemData(
        id: id ?? this.id,
        whiteboardId: whiteboardId ?? this.whiteboardId,
        cellId: cellId ?? this.cellId,
        offsetDx: offsetDx ?? this.offsetDx,
        offsetDy: offsetDy ?? this.offsetDy,
        width: width.present ? width.value : this.width,
        preferredWidth:
            preferredWidth.present ? preferredWidth.value : this.preferredWidth,
        height: height.present ? height.value : this.height,
        preferredHeight: preferredHeight.present
            ? preferredHeight.value
            : this.preferredHeight,
        layer: layer ?? this.layer,
        selected: selected ?? this.selected,
        color: color ?? this.color,
        cardKind: cardKind ?? this.cardKind,
        constraints: constraints ?? this.constraints,
        preContext: preContext.present ? preContext.value : this.preContext,
        title: title ?? this.title,
      );
  HeaderCellItemData copyWithCompanion(HeaderCellItemCompanion data) {
    return HeaderCellItemData(
      id: data.id.present ? data.id.value : this.id,
      whiteboardId: data.whiteboardId.present
          ? data.whiteboardId.value
          : this.whiteboardId,
      cellId: data.cellId.present ? data.cellId.value : this.cellId,
      offsetDx: data.offsetDx.present ? data.offsetDx.value : this.offsetDx,
      offsetDy: data.offsetDy.present ? data.offsetDy.value : this.offsetDy,
      width: data.width.present ? data.width.value : this.width,
      preferredWidth: data.preferredWidth.present
          ? data.preferredWidth.value
          : this.preferredWidth,
      height: data.height.present ? data.height.value : this.height,
      preferredHeight: data.preferredHeight.present
          ? data.preferredHeight.value
          : this.preferredHeight,
      layer: data.layer.present ? data.layer.value : this.layer,
      selected: data.selected.present ? data.selected.value : this.selected,
      color: data.color.present ? data.color.value : this.color,
      cardKind: data.cardKind.present ? data.cardKind.value : this.cardKind,
      constraints:
          data.constraints.present ? data.constraints.value : this.constraints,
      preContext:
          data.preContext.present ? data.preContext.value : this.preContext,
      title: data.title.present ? data.title.value : this.title,
    );
  }

  @override
  String toString() {
    return (StringBuffer('HeaderCellItemData(')
          ..write('id: $id, ')
          ..write('whiteboardId: $whiteboardId, ')
          ..write('cellId: $cellId, ')
          ..write('offsetDx: $offsetDx, ')
          ..write('offsetDy: $offsetDy, ')
          ..write('width: $width, ')
          ..write('preferredWidth: $preferredWidth, ')
          ..write('height: $height, ')
          ..write('preferredHeight: $preferredHeight, ')
          ..write('layer: $layer, ')
          ..write('selected: $selected, ')
          ..write('color: $color, ')
          ..write('cardKind: $cardKind, ')
          ..write('constraints: $constraints, ')
          ..write('preContext: $preContext, ')
          ..write('title: $title')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      whiteboardId,
      cellId,
      offsetDx,
      offsetDy,
      width,
      preferredWidth,
      height,
      preferredHeight,
      layer,
      selected,
      color,
      cardKind,
      constraints,
      preContext,
      title);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HeaderCellItemData &&
          other.id == this.id &&
          other.whiteboardId == this.whiteboardId &&
          other.cellId == this.cellId &&
          other.offsetDx == this.offsetDx &&
          other.offsetDy == this.offsetDy &&
          other.width == this.width &&
          other.preferredWidth == this.preferredWidth &&
          other.height == this.height &&
          other.preferredHeight == this.preferredHeight &&
          other.layer == this.layer &&
          other.selected == this.selected &&
          other.color == this.color &&
          other.cardKind == this.cardKind &&
          other.constraints == this.constraints &&
          other.preContext == this.preContext &&
          other.title == this.title);
}

class HeaderCellItemCompanion extends UpdateCompanion<HeaderCellItemData> {
  final Value<int> id;
  final Value<String> whiteboardId;
  final Value<String> cellId;
  final Value<double> offsetDx;
  final Value<double> offsetDy;
  final Value<double?> width;
  final Value<double?> preferredWidth;
  final Value<double?> height;
  final Value<double?> preferredHeight;
  final Value<int> layer;
  final Value<bool> selected;
  final Value<String> color;
  final Value<String> cardKind;
  final Value<bool> constraints;
  final Value<String?> preContext;
  final Value<String> title;
  const HeaderCellItemCompanion({
    this.id = const Value.absent(),
    this.whiteboardId = const Value.absent(),
    this.cellId = const Value.absent(),
    this.offsetDx = const Value.absent(),
    this.offsetDy = const Value.absent(),
    this.width = const Value.absent(),
    this.preferredWidth = const Value.absent(),
    this.height = const Value.absent(),
    this.preferredHeight = const Value.absent(),
    this.layer = const Value.absent(),
    this.selected = const Value.absent(),
    this.color = const Value.absent(),
    this.cardKind = const Value.absent(),
    this.constraints = const Value.absent(),
    this.preContext = const Value.absent(),
    this.title = const Value.absent(),
  });
  HeaderCellItemCompanion.insert({
    this.id = const Value.absent(),
    required String whiteboardId,
    required String cellId,
    required double offsetDx,
    required double offsetDy,
    this.width = const Value.absent(),
    this.preferredWidth = const Value.absent(),
    this.height = const Value.absent(),
    this.preferredHeight = const Value.absent(),
    required int layer,
    required bool selected,
    required String color,
    required String cardKind,
    required bool constraints,
    this.preContext = const Value.absent(),
    required String title,
  })  : whiteboardId = Value(whiteboardId),
        cellId = Value(cellId),
        offsetDx = Value(offsetDx),
        offsetDy = Value(offsetDy),
        layer = Value(layer),
        selected = Value(selected),
        color = Value(color),
        cardKind = Value(cardKind),
        constraints = Value(constraints),
        title = Value(title);
  static Insertable<HeaderCellItemData> custom({
    Expression<int>? id,
    Expression<String>? whiteboardId,
    Expression<String>? cellId,
    Expression<double>? offsetDx,
    Expression<double>? offsetDy,
    Expression<double>? width,
    Expression<double>? preferredWidth,
    Expression<double>? height,
    Expression<double>? preferredHeight,
    Expression<int>? layer,
    Expression<bool>? selected,
    Expression<String>? color,
    Expression<String>? cardKind,
    Expression<bool>? constraints,
    Expression<String>? preContext,
    Expression<String>? title,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (whiteboardId != null) 'whiteboard_id': whiteboardId,
      if (cellId != null) 'cell_id': cellId,
      if (offsetDx != null) 'offset_dx': offsetDx,
      if (offsetDy != null) 'offset_dy': offsetDy,
      if (width != null) 'width': width,
      if (preferredWidth != null) 'preferred_width': preferredWidth,
      if (height != null) 'height': height,
      if (preferredHeight != null) 'preferred_height': preferredHeight,
      if (layer != null) 'layer': layer,
      if (selected != null) 'selected': selected,
      if (color != null) 'color': color,
      if (cardKind != null) 'card_kind': cardKind,
      if (constraints != null) 'constraints': constraints,
      if (preContext != null) 'pre_context': preContext,
      if (title != null) 'title': title,
    });
  }

  HeaderCellItemCompanion copyWith(
      {Value<int>? id,
      Value<String>? whiteboardId,
      Value<String>? cellId,
      Value<double>? offsetDx,
      Value<double>? offsetDy,
      Value<double?>? width,
      Value<double?>? preferredWidth,
      Value<double?>? height,
      Value<double?>? preferredHeight,
      Value<int>? layer,
      Value<bool>? selected,
      Value<String>? color,
      Value<String>? cardKind,
      Value<bool>? constraints,
      Value<String?>? preContext,
      Value<String>? title}) {
    return HeaderCellItemCompanion(
      id: id ?? this.id,
      whiteboardId: whiteboardId ?? this.whiteboardId,
      cellId: cellId ?? this.cellId,
      offsetDx: offsetDx ?? this.offsetDx,
      offsetDy: offsetDy ?? this.offsetDy,
      width: width ?? this.width,
      preferredWidth: preferredWidth ?? this.preferredWidth,
      height: height ?? this.height,
      preferredHeight: preferredHeight ?? this.preferredHeight,
      layer: layer ?? this.layer,
      selected: selected ?? this.selected,
      color: color ?? this.color,
      cardKind: cardKind ?? this.cardKind,
      constraints: constraints ?? this.constraints,
      preContext: preContext ?? this.preContext,
      title: title ?? this.title,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (whiteboardId.present) {
      map['whiteboard_id'] = Variable<String>(whiteboardId.value);
    }
    if (cellId.present) {
      map['cell_id'] = Variable<String>(cellId.value);
    }
    if (offsetDx.present) {
      map['offset_dx'] = Variable<double>(offsetDx.value);
    }
    if (offsetDy.present) {
      map['offset_dy'] = Variable<double>(offsetDy.value);
    }
    if (width.present) {
      map['width'] = Variable<double>(width.value);
    }
    if (preferredWidth.present) {
      map['preferred_width'] = Variable<double>(preferredWidth.value);
    }
    if (height.present) {
      map['height'] = Variable<double>(height.value);
    }
    if (preferredHeight.present) {
      map['preferred_height'] = Variable<double>(preferredHeight.value);
    }
    if (layer.present) {
      map['layer'] = Variable<int>(layer.value);
    }
    if (selected.present) {
      map['selected'] = Variable<bool>(selected.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (cardKind.present) {
      map['card_kind'] = Variable<String>(cardKind.value);
    }
    if (constraints.present) {
      map['constraints'] = Variable<bool>(constraints.value);
    }
    if (preContext.present) {
      map['pre_context'] = Variable<String>(preContext.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HeaderCellItemCompanion(')
          ..write('id: $id, ')
          ..write('whiteboardId: $whiteboardId, ')
          ..write('cellId: $cellId, ')
          ..write('offsetDx: $offsetDx, ')
          ..write('offsetDy: $offsetDy, ')
          ..write('width: $width, ')
          ..write('preferredWidth: $preferredWidth, ')
          ..write('height: $height, ')
          ..write('preferredHeight: $preferredHeight, ')
          ..write('layer: $layer, ')
          ..write('selected: $selected, ')
          ..write('color: $color, ')
          ..write('cardKind: $cardKind, ')
          ..write('constraints: $constraints, ')
          ..write('preContext: $preContext, ')
          ..write('title: $title')
          ..write(')'))
        .toString();
  }
}

abstract class _$CellDatabase extends GeneratedDatabase {
  _$CellDatabase(QueryExecutor e) : super(e);
  $CellDatabaseManager get managers => $CellDatabaseManager(this);
  late final $BrainstormingCellItemTable brainstormingCellItem =
      $BrainstormingCellItemTable(this);
  late final $EditableCellItemTable editableCellItem =
      $EditableCellItemTable(this);
  late final $ImageCellItemTable imageCellItem = $ImageCellItemTable(this);
  late final $ArticleCellItemTable articleCellItem =
      $ArticleCellItemTable(this);
  late final $UrlCellItemTable urlCellItem = $UrlCellItemTable(this);
  late final $HeaderCellItemTable headerCellItem = $HeaderCellItemTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        brainstormingCellItem,
        editableCellItem,
        imageCellItem,
        articleCellItem,
        urlCellItem,
        headerCellItem
      ];
}

typedef $$BrainstormingCellItemTableCreateCompanionBuilder
    = BrainstormingCellItemCompanion Function({
  Value<int> id,
  required String whiteboardId,
  required String cellId,
  required double offsetDx,
  required double offsetDy,
  Value<double?> width,
  Value<double?> preferredWidth,
  Value<double?> height,
  Value<double?> preferredHeight,
  required int layer,
  required bool selected,
  required String color,
  required String cardKind,
  required bool constraints,
  Value<String?> preContext,
  Value<String?> question,
  Value<String?> suggestions,
});
typedef $$BrainstormingCellItemTableUpdateCompanionBuilder
    = BrainstormingCellItemCompanion Function({
  Value<int> id,
  Value<String> whiteboardId,
  Value<String> cellId,
  Value<double> offsetDx,
  Value<double> offsetDy,
  Value<double?> width,
  Value<double?> preferredWidth,
  Value<double?> height,
  Value<double?> preferredHeight,
  Value<int> layer,
  Value<bool> selected,
  Value<String> color,
  Value<String> cardKind,
  Value<bool> constraints,
  Value<String?> preContext,
  Value<String?> question,
  Value<String?> suggestions,
});

class $$BrainstormingCellItemTableFilterComposer
    extends Composer<_$CellDatabase, $BrainstormingCellItemTable> {
  $$BrainstormingCellItemTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get whiteboardId => $composableBuilder(
      column: $table.whiteboardId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cellId => $composableBuilder(
      column: $table.cellId, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get offsetDx => $composableBuilder(
      column: $table.offsetDx, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get offsetDy => $composableBuilder(
      column: $table.offsetDy, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get width => $composableBuilder(
      column: $table.width, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get preferredWidth => $composableBuilder(
      column: $table.preferredWidth,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get preferredHeight => $composableBuilder(
      column: $table.preferredHeight,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get layer => $composableBuilder(
      column: $table.layer, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get selected => $composableBuilder(
      column: $table.selected, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cardKind => $composableBuilder(
      column: $table.cardKind, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get constraints => $composableBuilder(
      column: $table.constraints, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get preContext => $composableBuilder(
      column: $table.preContext, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get question => $composableBuilder(
      column: $table.question, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get suggestions => $composableBuilder(
      column: $table.suggestions, builder: (column) => ColumnFilters(column));
}

class $$BrainstormingCellItemTableOrderingComposer
    extends Composer<_$CellDatabase, $BrainstormingCellItemTable> {
  $$BrainstormingCellItemTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get whiteboardId => $composableBuilder(
      column: $table.whiteboardId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cellId => $composableBuilder(
      column: $table.cellId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get offsetDx => $composableBuilder(
      column: $table.offsetDx, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get offsetDy => $composableBuilder(
      column: $table.offsetDy, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get width => $composableBuilder(
      column: $table.width, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get preferredWidth => $composableBuilder(
      column: $table.preferredWidth,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get preferredHeight => $composableBuilder(
      column: $table.preferredHeight,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get layer => $composableBuilder(
      column: $table.layer, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get selected => $composableBuilder(
      column: $table.selected, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cardKind => $composableBuilder(
      column: $table.cardKind, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get constraints => $composableBuilder(
      column: $table.constraints, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get preContext => $composableBuilder(
      column: $table.preContext, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get question => $composableBuilder(
      column: $table.question, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get suggestions => $composableBuilder(
      column: $table.suggestions, builder: (column) => ColumnOrderings(column));
}

class $$BrainstormingCellItemTableAnnotationComposer
    extends Composer<_$CellDatabase, $BrainstormingCellItemTable> {
  $$BrainstormingCellItemTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get whiteboardId => $composableBuilder(
      column: $table.whiteboardId, builder: (column) => column);

  GeneratedColumn<String> get cellId =>
      $composableBuilder(column: $table.cellId, builder: (column) => column);

  GeneratedColumn<double> get offsetDx =>
      $composableBuilder(column: $table.offsetDx, builder: (column) => column);

  GeneratedColumn<double> get offsetDy =>
      $composableBuilder(column: $table.offsetDy, builder: (column) => column);

  GeneratedColumn<double> get width =>
      $composableBuilder(column: $table.width, builder: (column) => column);

  GeneratedColumn<double> get preferredWidth => $composableBuilder(
      column: $table.preferredWidth, builder: (column) => column);

  GeneratedColumn<double> get height =>
      $composableBuilder(column: $table.height, builder: (column) => column);

  GeneratedColumn<double> get preferredHeight => $composableBuilder(
      column: $table.preferredHeight, builder: (column) => column);

  GeneratedColumn<int> get layer =>
      $composableBuilder(column: $table.layer, builder: (column) => column);

  GeneratedColumn<bool> get selected =>
      $composableBuilder(column: $table.selected, builder: (column) => column);

  GeneratedColumn<String> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<String> get cardKind =>
      $composableBuilder(column: $table.cardKind, builder: (column) => column);

  GeneratedColumn<bool> get constraints => $composableBuilder(
      column: $table.constraints, builder: (column) => column);

  GeneratedColumn<String> get preContext => $composableBuilder(
      column: $table.preContext, builder: (column) => column);

  GeneratedColumn<String> get question =>
      $composableBuilder(column: $table.question, builder: (column) => column);

  GeneratedColumn<String> get suggestions => $composableBuilder(
      column: $table.suggestions, builder: (column) => column);
}

class $$BrainstormingCellItemTableTableManager extends RootTableManager<
    _$CellDatabase,
    $BrainstormingCellItemTable,
    BrainstormingCellItemData,
    $$BrainstormingCellItemTableFilterComposer,
    $$BrainstormingCellItemTableOrderingComposer,
    $$BrainstormingCellItemTableAnnotationComposer,
    $$BrainstormingCellItemTableCreateCompanionBuilder,
    $$BrainstormingCellItemTableUpdateCompanionBuilder,
    (
      BrainstormingCellItemData,
      BaseReferences<_$CellDatabase, $BrainstormingCellItemTable,
          BrainstormingCellItemData>
    ),
    BrainstormingCellItemData,
    PrefetchHooks Function()> {
  $$BrainstormingCellItemTableTableManager(
      _$CellDatabase db, $BrainstormingCellItemTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BrainstormingCellItemTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$BrainstormingCellItemTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BrainstormingCellItemTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> whiteboardId = const Value.absent(),
            Value<String> cellId = const Value.absent(),
            Value<double> offsetDx = const Value.absent(),
            Value<double> offsetDy = const Value.absent(),
            Value<double?> width = const Value.absent(),
            Value<double?> preferredWidth = const Value.absent(),
            Value<double?> height = const Value.absent(),
            Value<double?> preferredHeight = const Value.absent(),
            Value<int> layer = const Value.absent(),
            Value<bool> selected = const Value.absent(),
            Value<String> color = const Value.absent(),
            Value<String> cardKind = const Value.absent(),
            Value<bool> constraints = const Value.absent(),
            Value<String?> preContext = const Value.absent(),
            Value<String?> question = const Value.absent(),
            Value<String?> suggestions = const Value.absent(),
          }) =>
              BrainstormingCellItemCompanion(
            id: id,
            whiteboardId: whiteboardId,
            cellId: cellId,
            offsetDx: offsetDx,
            offsetDy: offsetDy,
            width: width,
            preferredWidth: preferredWidth,
            height: height,
            preferredHeight: preferredHeight,
            layer: layer,
            selected: selected,
            color: color,
            cardKind: cardKind,
            constraints: constraints,
            preContext: preContext,
            question: question,
            suggestions: suggestions,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String whiteboardId,
            required String cellId,
            required double offsetDx,
            required double offsetDy,
            Value<double?> width = const Value.absent(),
            Value<double?> preferredWidth = const Value.absent(),
            Value<double?> height = const Value.absent(),
            Value<double?> preferredHeight = const Value.absent(),
            required int layer,
            required bool selected,
            required String color,
            required String cardKind,
            required bool constraints,
            Value<String?> preContext = const Value.absent(),
            Value<String?> question = const Value.absent(),
            Value<String?> suggestions = const Value.absent(),
          }) =>
              BrainstormingCellItemCompanion.insert(
            id: id,
            whiteboardId: whiteboardId,
            cellId: cellId,
            offsetDx: offsetDx,
            offsetDy: offsetDy,
            width: width,
            preferredWidth: preferredWidth,
            height: height,
            preferredHeight: preferredHeight,
            layer: layer,
            selected: selected,
            color: color,
            cardKind: cardKind,
            constraints: constraints,
            preContext: preContext,
            question: question,
            suggestions: suggestions,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$BrainstormingCellItemTableProcessedTableManager
    = ProcessedTableManager<
        _$CellDatabase,
        $BrainstormingCellItemTable,
        BrainstormingCellItemData,
        $$BrainstormingCellItemTableFilterComposer,
        $$BrainstormingCellItemTableOrderingComposer,
        $$BrainstormingCellItemTableAnnotationComposer,
        $$BrainstormingCellItemTableCreateCompanionBuilder,
        $$BrainstormingCellItemTableUpdateCompanionBuilder,
        (
          BrainstormingCellItemData,
          BaseReferences<_$CellDatabase, $BrainstormingCellItemTable,
              BrainstormingCellItemData>
        ),
        BrainstormingCellItemData,
        PrefetchHooks Function()>;
typedef $$EditableCellItemTableCreateCompanionBuilder
    = EditableCellItemCompanion Function({
  Value<int> id,
  required String whiteboardId,
  required String cellId,
  required double offsetDx,
  required double offsetDy,
  Value<double?> width,
  Value<double?> preferredWidth,
  Value<double?> height,
  Value<double?> preferredHeight,
  required int layer,
  required bool selected,
  required String color,
  required String cardKind,
  required bool constraints,
  Value<String?> preContext,
  required String title,
  required String content,
});
typedef $$EditableCellItemTableUpdateCompanionBuilder
    = EditableCellItemCompanion Function({
  Value<int> id,
  Value<String> whiteboardId,
  Value<String> cellId,
  Value<double> offsetDx,
  Value<double> offsetDy,
  Value<double?> width,
  Value<double?> preferredWidth,
  Value<double?> height,
  Value<double?> preferredHeight,
  Value<int> layer,
  Value<bool> selected,
  Value<String> color,
  Value<String> cardKind,
  Value<bool> constraints,
  Value<String?> preContext,
  Value<String> title,
  Value<String> content,
});

class $$EditableCellItemTableFilterComposer
    extends Composer<_$CellDatabase, $EditableCellItemTable> {
  $$EditableCellItemTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get whiteboardId => $composableBuilder(
      column: $table.whiteboardId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cellId => $composableBuilder(
      column: $table.cellId, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get offsetDx => $composableBuilder(
      column: $table.offsetDx, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get offsetDy => $composableBuilder(
      column: $table.offsetDy, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get width => $composableBuilder(
      column: $table.width, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get preferredWidth => $composableBuilder(
      column: $table.preferredWidth,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get preferredHeight => $composableBuilder(
      column: $table.preferredHeight,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get layer => $composableBuilder(
      column: $table.layer, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get selected => $composableBuilder(
      column: $table.selected, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cardKind => $composableBuilder(
      column: $table.cardKind, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get constraints => $composableBuilder(
      column: $table.constraints, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get preContext => $composableBuilder(
      column: $table.preContext, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => ColumnFilters(column));
}

class $$EditableCellItemTableOrderingComposer
    extends Composer<_$CellDatabase, $EditableCellItemTable> {
  $$EditableCellItemTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get whiteboardId => $composableBuilder(
      column: $table.whiteboardId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cellId => $composableBuilder(
      column: $table.cellId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get offsetDx => $composableBuilder(
      column: $table.offsetDx, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get offsetDy => $composableBuilder(
      column: $table.offsetDy, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get width => $composableBuilder(
      column: $table.width, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get preferredWidth => $composableBuilder(
      column: $table.preferredWidth,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get preferredHeight => $composableBuilder(
      column: $table.preferredHeight,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get layer => $composableBuilder(
      column: $table.layer, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get selected => $composableBuilder(
      column: $table.selected, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cardKind => $composableBuilder(
      column: $table.cardKind, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get constraints => $composableBuilder(
      column: $table.constraints, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get preContext => $composableBuilder(
      column: $table.preContext, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => ColumnOrderings(column));
}

class $$EditableCellItemTableAnnotationComposer
    extends Composer<_$CellDatabase, $EditableCellItemTable> {
  $$EditableCellItemTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get whiteboardId => $composableBuilder(
      column: $table.whiteboardId, builder: (column) => column);

  GeneratedColumn<String> get cellId =>
      $composableBuilder(column: $table.cellId, builder: (column) => column);

  GeneratedColumn<double> get offsetDx =>
      $composableBuilder(column: $table.offsetDx, builder: (column) => column);

  GeneratedColumn<double> get offsetDy =>
      $composableBuilder(column: $table.offsetDy, builder: (column) => column);

  GeneratedColumn<double> get width =>
      $composableBuilder(column: $table.width, builder: (column) => column);

  GeneratedColumn<double> get preferredWidth => $composableBuilder(
      column: $table.preferredWidth, builder: (column) => column);

  GeneratedColumn<double> get height =>
      $composableBuilder(column: $table.height, builder: (column) => column);

  GeneratedColumn<double> get preferredHeight => $composableBuilder(
      column: $table.preferredHeight, builder: (column) => column);

  GeneratedColumn<int> get layer =>
      $composableBuilder(column: $table.layer, builder: (column) => column);

  GeneratedColumn<bool> get selected =>
      $composableBuilder(column: $table.selected, builder: (column) => column);

  GeneratedColumn<String> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<String> get cardKind =>
      $composableBuilder(column: $table.cardKind, builder: (column) => column);

  GeneratedColumn<bool> get constraints => $composableBuilder(
      column: $table.constraints, builder: (column) => column);

  GeneratedColumn<String> get preContext => $composableBuilder(
      column: $table.preContext, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get content =>
      $composableBuilder(column: $table.content, builder: (column) => column);
}

class $$EditableCellItemTableTableManager extends RootTableManager<
    _$CellDatabase,
    $EditableCellItemTable,
    EditableCellItemData,
    $$EditableCellItemTableFilterComposer,
    $$EditableCellItemTableOrderingComposer,
    $$EditableCellItemTableAnnotationComposer,
    $$EditableCellItemTableCreateCompanionBuilder,
    $$EditableCellItemTableUpdateCompanionBuilder,
    (
      EditableCellItemData,
      BaseReferences<_$CellDatabase, $EditableCellItemTable,
          EditableCellItemData>
    ),
    EditableCellItemData,
    PrefetchHooks Function()> {
  $$EditableCellItemTableTableManager(
      _$CellDatabase db, $EditableCellItemTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EditableCellItemTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EditableCellItemTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EditableCellItemTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> whiteboardId = const Value.absent(),
            Value<String> cellId = const Value.absent(),
            Value<double> offsetDx = const Value.absent(),
            Value<double> offsetDy = const Value.absent(),
            Value<double?> width = const Value.absent(),
            Value<double?> preferredWidth = const Value.absent(),
            Value<double?> height = const Value.absent(),
            Value<double?> preferredHeight = const Value.absent(),
            Value<int> layer = const Value.absent(),
            Value<bool> selected = const Value.absent(),
            Value<String> color = const Value.absent(),
            Value<String> cardKind = const Value.absent(),
            Value<bool> constraints = const Value.absent(),
            Value<String?> preContext = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> content = const Value.absent(),
          }) =>
              EditableCellItemCompanion(
            id: id,
            whiteboardId: whiteboardId,
            cellId: cellId,
            offsetDx: offsetDx,
            offsetDy: offsetDy,
            width: width,
            preferredWidth: preferredWidth,
            height: height,
            preferredHeight: preferredHeight,
            layer: layer,
            selected: selected,
            color: color,
            cardKind: cardKind,
            constraints: constraints,
            preContext: preContext,
            title: title,
            content: content,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String whiteboardId,
            required String cellId,
            required double offsetDx,
            required double offsetDy,
            Value<double?> width = const Value.absent(),
            Value<double?> preferredWidth = const Value.absent(),
            Value<double?> height = const Value.absent(),
            Value<double?> preferredHeight = const Value.absent(),
            required int layer,
            required bool selected,
            required String color,
            required String cardKind,
            required bool constraints,
            Value<String?> preContext = const Value.absent(),
            required String title,
            required String content,
          }) =>
              EditableCellItemCompanion.insert(
            id: id,
            whiteboardId: whiteboardId,
            cellId: cellId,
            offsetDx: offsetDx,
            offsetDy: offsetDy,
            width: width,
            preferredWidth: preferredWidth,
            height: height,
            preferredHeight: preferredHeight,
            layer: layer,
            selected: selected,
            color: color,
            cardKind: cardKind,
            constraints: constraints,
            preContext: preContext,
            title: title,
            content: content,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$EditableCellItemTableProcessedTableManager = ProcessedTableManager<
    _$CellDatabase,
    $EditableCellItemTable,
    EditableCellItemData,
    $$EditableCellItemTableFilterComposer,
    $$EditableCellItemTableOrderingComposer,
    $$EditableCellItemTableAnnotationComposer,
    $$EditableCellItemTableCreateCompanionBuilder,
    $$EditableCellItemTableUpdateCompanionBuilder,
    (
      EditableCellItemData,
      BaseReferences<_$CellDatabase, $EditableCellItemTable,
          EditableCellItemData>
    ),
    EditableCellItemData,
    PrefetchHooks Function()>;
typedef $$ImageCellItemTableCreateCompanionBuilder = ImageCellItemCompanion
    Function({
  Value<int> id,
  required String whiteboardId,
  required String cellId,
  required double offsetDx,
  required double offsetDy,
  Value<double?> width,
  Value<double?> preferredWidth,
  Value<double?> height,
  Value<double?> preferredHeight,
  required int layer,
  required bool selected,
  required String color,
  required String cardKind,
  required bool constraints,
  Value<String?> preContext,
  required String url,
});
typedef $$ImageCellItemTableUpdateCompanionBuilder = ImageCellItemCompanion
    Function({
  Value<int> id,
  Value<String> whiteboardId,
  Value<String> cellId,
  Value<double> offsetDx,
  Value<double> offsetDy,
  Value<double?> width,
  Value<double?> preferredWidth,
  Value<double?> height,
  Value<double?> preferredHeight,
  Value<int> layer,
  Value<bool> selected,
  Value<String> color,
  Value<String> cardKind,
  Value<bool> constraints,
  Value<String?> preContext,
  Value<String> url,
});

class $$ImageCellItemTableFilterComposer
    extends Composer<_$CellDatabase, $ImageCellItemTable> {
  $$ImageCellItemTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get whiteboardId => $composableBuilder(
      column: $table.whiteboardId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cellId => $composableBuilder(
      column: $table.cellId, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get offsetDx => $composableBuilder(
      column: $table.offsetDx, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get offsetDy => $composableBuilder(
      column: $table.offsetDy, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get width => $composableBuilder(
      column: $table.width, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get preferredWidth => $composableBuilder(
      column: $table.preferredWidth,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get preferredHeight => $composableBuilder(
      column: $table.preferredHeight,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get layer => $composableBuilder(
      column: $table.layer, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get selected => $composableBuilder(
      column: $table.selected, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cardKind => $composableBuilder(
      column: $table.cardKind, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get constraints => $composableBuilder(
      column: $table.constraints, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get preContext => $composableBuilder(
      column: $table.preContext, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnFilters(column));
}

class $$ImageCellItemTableOrderingComposer
    extends Composer<_$CellDatabase, $ImageCellItemTable> {
  $$ImageCellItemTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get whiteboardId => $composableBuilder(
      column: $table.whiteboardId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cellId => $composableBuilder(
      column: $table.cellId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get offsetDx => $composableBuilder(
      column: $table.offsetDx, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get offsetDy => $composableBuilder(
      column: $table.offsetDy, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get width => $composableBuilder(
      column: $table.width, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get preferredWidth => $composableBuilder(
      column: $table.preferredWidth,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get preferredHeight => $composableBuilder(
      column: $table.preferredHeight,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get layer => $composableBuilder(
      column: $table.layer, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get selected => $composableBuilder(
      column: $table.selected, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cardKind => $composableBuilder(
      column: $table.cardKind, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get constraints => $composableBuilder(
      column: $table.constraints, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get preContext => $composableBuilder(
      column: $table.preContext, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnOrderings(column));
}

class $$ImageCellItemTableAnnotationComposer
    extends Composer<_$CellDatabase, $ImageCellItemTable> {
  $$ImageCellItemTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get whiteboardId => $composableBuilder(
      column: $table.whiteboardId, builder: (column) => column);

  GeneratedColumn<String> get cellId =>
      $composableBuilder(column: $table.cellId, builder: (column) => column);

  GeneratedColumn<double> get offsetDx =>
      $composableBuilder(column: $table.offsetDx, builder: (column) => column);

  GeneratedColumn<double> get offsetDy =>
      $composableBuilder(column: $table.offsetDy, builder: (column) => column);

  GeneratedColumn<double> get width =>
      $composableBuilder(column: $table.width, builder: (column) => column);

  GeneratedColumn<double> get preferredWidth => $composableBuilder(
      column: $table.preferredWidth, builder: (column) => column);

  GeneratedColumn<double> get height =>
      $composableBuilder(column: $table.height, builder: (column) => column);

  GeneratedColumn<double> get preferredHeight => $composableBuilder(
      column: $table.preferredHeight, builder: (column) => column);

  GeneratedColumn<int> get layer =>
      $composableBuilder(column: $table.layer, builder: (column) => column);

  GeneratedColumn<bool> get selected =>
      $composableBuilder(column: $table.selected, builder: (column) => column);

  GeneratedColumn<String> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<String> get cardKind =>
      $composableBuilder(column: $table.cardKind, builder: (column) => column);

  GeneratedColumn<bool> get constraints => $composableBuilder(
      column: $table.constraints, builder: (column) => column);

  GeneratedColumn<String> get preContext => $composableBuilder(
      column: $table.preContext, builder: (column) => column);

  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);
}

class $$ImageCellItemTableTableManager extends RootTableManager<
    _$CellDatabase,
    $ImageCellItemTable,
    ImageCellItemData,
    $$ImageCellItemTableFilterComposer,
    $$ImageCellItemTableOrderingComposer,
    $$ImageCellItemTableAnnotationComposer,
    $$ImageCellItemTableCreateCompanionBuilder,
    $$ImageCellItemTableUpdateCompanionBuilder,
    (
      ImageCellItemData,
      BaseReferences<_$CellDatabase, $ImageCellItemTable, ImageCellItemData>
    ),
    ImageCellItemData,
    PrefetchHooks Function()> {
  $$ImageCellItemTableTableManager(_$CellDatabase db, $ImageCellItemTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ImageCellItemTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ImageCellItemTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ImageCellItemTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> whiteboardId = const Value.absent(),
            Value<String> cellId = const Value.absent(),
            Value<double> offsetDx = const Value.absent(),
            Value<double> offsetDy = const Value.absent(),
            Value<double?> width = const Value.absent(),
            Value<double?> preferredWidth = const Value.absent(),
            Value<double?> height = const Value.absent(),
            Value<double?> preferredHeight = const Value.absent(),
            Value<int> layer = const Value.absent(),
            Value<bool> selected = const Value.absent(),
            Value<String> color = const Value.absent(),
            Value<String> cardKind = const Value.absent(),
            Value<bool> constraints = const Value.absent(),
            Value<String?> preContext = const Value.absent(),
            Value<String> url = const Value.absent(),
          }) =>
              ImageCellItemCompanion(
            id: id,
            whiteboardId: whiteboardId,
            cellId: cellId,
            offsetDx: offsetDx,
            offsetDy: offsetDy,
            width: width,
            preferredWidth: preferredWidth,
            height: height,
            preferredHeight: preferredHeight,
            layer: layer,
            selected: selected,
            color: color,
            cardKind: cardKind,
            constraints: constraints,
            preContext: preContext,
            url: url,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String whiteboardId,
            required String cellId,
            required double offsetDx,
            required double offsetDy,
            Value<double?> width = const Value.absent(),
            Value<double?> preferredWidth = const Value.absent(),
            Value<double?> height = const Value.absent(),
            Value<double?> preferredHeight = const Value.absent(),
            required int layer,
            required bool selected,
            required String color,
            required String cardKind,
            required bool constraints,
            Value<String?> preContext = const Value.absent(),
            required String url,
          }) =>
              ImageCellItemCompanion.insert(
            id: id,
            whiteboardId: whiteboardId,
            cellId: cellId,
            offsetDx: offsetDx,
            offsetDy: offsetDy,
            width: width,
            preferredWidth: preferredWidth,
            height: height,
            preferredHeight: preferredHeight,
            layer: layer,
            selected: selected,
            color: color,
            cardKind: cardKind,
            constraints: constraints,
            preContext: preContext,
            url: url,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ImageCellItemTableProcessedTableManager = ProcessedTableManager<
    _$CellDatabase,
    $ImageCellItemTable,
    ImageCellItemData,
    $$ImageCellItemTableFilterComposer,
    $$ImageCellItemTableOrderingComposer,
    $$ImageCellItemTableAnnotationComposer,
    $$ImageCellItemTableCreateCompanionBuilder,
    $$ImageCellItemTableUpdateCompanionBuilder,
    (
      ImageCellItemData,
      BaseReferences<_$CellDatabase, $ImageCellItemTable, ImageCellItemData>
    ),
    ImageCellItemData,
    PrefetchHooks Function()>;
typedef $$ArticleCellItemTableCreateCompanionBuilder = ArticleCellItemCompanion
    Function({
  Value<int> id,
  required String whiteboardId,
  required String cellId,
  required double offsetDx,
  required double offsetDy,
  Value<double?> width,
  Value<double?> preferredWidth,
  Value<double?> height,
  Value<double?> preferredHeight,
  required int layer,
  required bool selected,
  required String color,
  required String cardKind,
  required bool constraints,
  Value<String?> preContext,
  required String title,
  required String content,
});
typedef $$ArticleCellItemTableUpdateCompanionBuilder = ArticleCellItemCompanion
    Function({
  Value<int> id,
  Value<String> whiteboardId,
  Value<String> cellId,
  Value<double> offsetDx,
  Value<double> offsetDy,
  Value<double?> width,
  Value<double?> preferredWidth,
  Value<double?> height,
  Value<double?> preferredHeight,
  Value<int> layer,
  Value<bool> selected,
  Value<String> color,
  Value<String> cardKind,
  Value<bool> constraints,
  Value<String?> preContext,
  Value<String> title,
  Value<String> content,
});

class $$ArticleCellItemTableFilterComposer
    extends Composer<_$CellDatabase, $ArticleCellItemTable> {
  $$ArticleCellItemTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get whiteboardId => $composableBuilder(
      column: $table.whiteboardId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cellId => $composableBuilder(
      column: $table.cellId, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get offsetDx => $composableBuilder(
      column: $table.offsetDx, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get offsetDy => $composableBuilder(
      column: $table.offsetDy, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get width => $composableBuilder(
      column: $table.width, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get preferredWidth => $composableBuilder(
      column: $table.preferredWidth,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get preferredHeight => $composableBuilder(
      column: $table.preferredHeight,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get layer => $composableBuilder(
      column: $table.layer, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get selected => $composableBuilder(
      column: $table.selected, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cardKind => $composableBuilder(
      column: $table.cardKind, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get constraints => $composableBuilder(
      column: $table.constraints, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get preContext => $composableBuilder(
      column: $table.preContext, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => ColumnFilters(column));
}

class $$ArticleCellItemTableOrderingComposer
    extends Composer<_$CellDatabase, $ArticleCellItemTable> {
  $$ArticleCellItemTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get whiteboardId => $composableBuilder(
      column: $table.whiteboardId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cellId => $composableBuilder(
      column: $table.cellId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get offsetDx => $composableBuilder(
      column: $table.offsetDx, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get offsetDy => $composableBuilder(
      column: $table.offsetDy, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get width => $composableBuilder(
      column: $table.width, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get preferredWidth => $composableBuilder(
      column: $table.preferredWidth,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get preferredHeight => $composableBuilder(
      column: $table.preferredHeight,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get layer => $composableBuilder(
      column: $table.layer, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get selected => $composableBuilder(
      column: $table.selected, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cardKind => $composableBuilder(
      column: $table.cardKind, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get constraints => $composableBuilder(
      column: $table.constraints, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get preContext => $composableBuilder(
      column: $table.preContext, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => ColumnOrderings(column));
}

class $$ArticleCellItemTableAnnotationComposer
    extends Composer<_$CellDatabase, $ArticleCellItemTable> {
  $$ArticleCellItemTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get whiteboardId => $composableBuilder(
      column: $table.whiteboardId, builder: (column) => column);

  GeneratedColumn<String> get cellId =>
      $composableBuilder(column: $table.cellId, builder: (column) => column);

  GeneratedColumn<double> get offsetDx =>
      $composableBuilder(column: $table.offsetDx, builder: (column) => column);

  GeneratedColumn<double> get offsetDy =>
      $composableBuilder(column: $table.offsetDy, builder: (column) => column);

  GeneratedColumn<double> get width =>
      $composableBuilder(column: $table.width, builder: (column) => column);

  GeneratedColumn<double> get preferredWidth => $composableBuilder(
      column: $table.preferredWidth, builder: (column) => column);

  GeneratedColumn<double> get height =>
      $composableBuilder(column: $table.height, builder: (column) => column);

  GeneratedColumn<double> get preferredHeight => $composableBuilder(
      column: $table.preferredHeight, builder: (column) => column);

  GeneratedColumn<int> get layer =>
      $composableBuilder(column: $table.layer, builder: (column) => column);

  GeneratedColumn<bool> get selected =>
      $composableBuilder(column: $table.selected, builder: (column) => column);

  GeneratedColumn<String> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<String> get cardKind =>
      $composableBuilder(column: $table.cardKind, builder: (column) => column);

  GeneratedColumn<bool> get constraints => $composableBuilder(
      column: $table.constraints, builder: (column) => column);

  GeneratedColumn<String> get preContext => $composableBuilder(
      column: $table.preContext, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get content =>
      $composableBuilder(column: $table.content, builder: (column) => column);
}

class $$ArticleCellItemTableTableManager extends RootTableManager<
    _$CellDatabase,
    $ArticleCellItemTable,
    ArticleCellItemData,
    $$ArticleCellItemTableFilterComposer,
    $$ArticleCellItemTableOrderingComposer,
    $$ArticleCellItemTableAnnotationComposer,
    $$ArticleCellItemTableCreateCompanionBuilder,
    $$ArticleCellItemTableUpdateCompanionBuilder,
    (
      ArticleCellItemData,
      BaseReferences<_$CellDatabase, $ArticleCellItemTable, ArticleCellItemData>
    ),
    ArticleCellItemData,
    PrefetchHooks Function()> {
  $$ArticleCellItemTableTableManager(
      _$CellDatabase db, $ArticleCellItemTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ArticleCellItemTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ArticleCellItemTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ArticleCellItemTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> whiteboardId = const Value.absent(),
            Value<String> cellId = const Value.absent(),
            Value<double> offsetDx = const Value.absent(),
            Value<double> offsetDy = const Value.absent(),
            Value<double?> width = const Value.absent(),
            Value<double?> preferredWidth = const Value.absent(),
            Value<double?> height = const Value.absent(),
            Value<double?> preferredHeight = const Value.absent(),
            Value<int> layer = const Value.absent(),
            Value<bool> selected = const Value.absent(),
            Value<String> color = const Value.absent(),
            Value<String> cardKind = const Value.absent(),
            Value<bool> constraints = const Value.absent(),
            Value<String?> preContext = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> content = const Value.absent(),
          }) =>
              ArticleCellItemCompanion(
            id: id,
            whiteboardId: whiteboardId,
            cellId: cellId,
            offsetDx: offsetDx,
            offsetDy: offsetDy,
            width: width,
            preferredWidth: preferredWidth,
            height: height,
            preferredHeight: preferredHeight,
            layer: layer,
            selected: selected,
            color: color,
            cardKind: cardKind,
            constraints: constraints,
            preContext: preContext,
            title: title,
            content: content,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String whiteboardId,
            required String cellId,
            required double offsetDx,
            required double offsetDy,
            Value<double?> width = const Value.absent(),
            Value<double?> preferredWidth = const Value.absent(),
            Value<double?> height = const Value.absent(),
            Value<double?> preferredHeight = const Value.absent(),
            required int layer,
            required bool selected,
            required String color,
            required String cardKind,
            required bool constraints,
            Value<String?> preContext = const Value.absent(),
            required String title,
            required String content,
          }) =>
              ArticleCellItemCompanion.insert(
            id: id,
            whiteboardId: whiteboardId,
            cellId: cellId,
            offsetDx: offsetDx,
            offsetDy: offsetDy,
            width: width,
            preferredWidth: preferredWidth,
            height: height,
            preferredHeight: preferredHeight,
            layer: layer,
            selected: selected,
            color: color,
            cardKind: cardKind,
            constraints: constraints,
            preContext: preContext,
            title: title,
            content: content,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ArticleCellItemTableProcessedTableManager = ProcessedTableManager<
    _$CellDatabase,
    $ArticleCellItemTable,
    ArticleCellItemData,
    $$ArticleCellItemTableFilterComposer,
    $$ArticleCellItemTableOrderingComposer,
    $$ArticleCellItemTableAnnotationComposer,
    $$ArticleCellItemTableCreateCompanionBuilder,
    $$ArticleCellItemTableUpdateCompanionBuilder,
    (
      ArticleCellItemData,
      BaseReferences<_$CellDatabase, $ArticleCellItemTable, ArticleCellItemData>
    ),
    ArticleCellItemData,
    PrefetchHooks Function()>;
typedef $$UrlCellItemTableCreateCompanionBuilder = UrlCellItemCompanion
    Function({
  Value<int> id,
  required String whiteboardId,
  required String cellId,
  required double offsetDx,
  required double offsetDy,
  Value<double?> width,
  Value<double?> preferredWidth,
  Value<double?> height,
  Value<double?> preferredHeight,
  required int layer,
  required bool selected,
  required String color,
  required String cardKind,
  required bool constraints,
  Value<String?> preContext,
  required String url,
});
typedef $$UrlCellItemTableUpdateCompanionBuilder = UrlCellItemCompanion
    Function({
  Value<int> id,
  Value<String> whiteboardId,
  Value<String> cellId,
  Value<double> offsetDx,
  Value<double> offsetDy,
  Value<double?> width,
  Value<double?> preferredWidth,
  Value<double?> height,
  Value<double?> preferredHeight,
  Value<int> layer,
  Value<bool> selected,
  Value<String> color,
  Value<String> cardKind,
  Value<bool> constraints,
  Value<String?> preContext,
  Value<String> url,
});

class $$UrlCellItemTableFilterComposer
    extends Composer<_$CellDatabase, $UrlCellItemTable> {
  $$UrlCellItemTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get whiteboardId => $composableBuilder(
      column: $table.whiteboardId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cellId => $composableBuilder(
      column: $table.cellId, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get offsetDx => $composableBuilder(
      column: $table.offsetDx, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get offsetDy => $composableBuilder(
      column: $table.offsetDy, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get width => $composableBuilder(
      column: $table.width, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get preferredWidth => $composableBuilder(
      column: $table.preferredWidth,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get preferredHeight => $composableBuilder(
      column: $table.preferredHeight,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get layer => $composableBuilder(
      column: $table.layer, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get selected => $composableBuilder(
      column: $table.selected, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cardKind => $composableBuilder(
      column: $table.cardKind, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get constraints => $composableBuilder(
      column: $table.constraints, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get preContext => $composableBuilder(
      column: $table.preContext, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnFilters(column));
}

class $$UrlCellItemTableOrderingComposer
    extends Composer<_$CellDatabase, $UrlCellItemTable> {
  $$UrlCellItemTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get whiteboardId => $composableBuilder(
      column: $table.whiteboardId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cellId => $composableBuilder(
      column: $table.cellId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get offsetDx => $composableBuilder(
      column: $table.offsetDx, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get offsetDy => $composableBuilder(
      column: $table.offsetDy, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get width => $composableBuilder(
      column: $table.width, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get preferredWidth => $composableBuilder(
      column: $table.preferredWidth,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get preferredHeight => $composableBuilder(
      column: $table.preferredHeight,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get layer => $composableBuilder(
      column: $table.layer, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get selected => $composableBuilder(
      column: $table.selected, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cardKind => $composableBuilder(
      column: $table.cardKind, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get constraints => $composableBuilder(
      column: $table.constraints, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get preContext => $composableBuilder(
      column: $table.preContext, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnOrderings(column));
}

class $$UrlCellItemTableAnnotationComposer
    extends Composer<_$CellDatabase, $UrlCellItemTable> {
  $$UrlCellItemTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get whiteboardId => $composableBuilder(
      column: $table.whiteboardId, builder: (column) => column);

  GeneratedColumn<String> get cellId =>
      $composableBuilder(column: $table.cellId, builder: (column) => column);

  GeneratedColumn<double> get offsetDx =>
      $composableBuilder(column: $table.offsetDx, builder: (column) => column);

  GeneratedColumn<double> get offsetDy =>
      $composableBuilder(column: $table.offsetDy, builder: (column) => column);

  GeneratedColumn<double> get width =>
      $composableBuilder(column: $table.width, builder: (column) => column);

  GeneratedColumn<double> get preferredWidth => $composableBuilder(
      column: $table.preferredWidth, builder: (column) => column);

  GeneratedColumn<double> get height =>
      $composableBuilder(column: $table.height, builder: (column) => column);

  GeneratedColumn<double> get preferredHeight => $composableBuilder(
      column: $table.preferredHeight, builder: (column) => column);

  GeneratedColumn<int> get layer =>
      $composableBuilder(column: $table.layer, builder: (column) => column);

  GeneratedColumn<bool> get selected =>
      $composableBuilder(column: $table.selected, builder: (column) => column);

  GeneratedColumn<String> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<String> get cardKind =>
      $composableBuilder(column: $table.cardKind, builder: (column) => column);

  GeneratedColumn<bool> get constraints => $composableBuilder(
      column: $table.constraints, builder: (column) => column);

  GeneratedColumn<String> get preContext => $composableBuilder(
      column: $table.preContext, builder: (column) => column);

  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);
}

class $$UrlCellItemTableTableManager extends RootTableManager<
    _$CellDatabase,
    $UrlCellItemTable,
    UrlCellItemData,
    $$UrlCellItemTableFilterComposer,
    $$UrlCellItemTableOrderingComposer,
    $$UrlCellItemTableAnnotationComposer,
    $$UrlCellItemTableCreateCompanionBuilder,
    $$UrlCellItemTableUpdateCompanionBuilder,
    (
      UrlCellItemData,
      BaseReferences<_$CellDatabase, $UrlCellItemTable, UrlCellItemData>
    ),
    UrlCellItemData,
    PrefetchHooks Function()> {
  $$UrlCellItemTableTableManager(_$CellDatabase db, $UrlCellItemTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UrlCellItemTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UrlCellItemTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UrlCellItemTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> whiteboardId = const Value.absent(),
            Value<String> cellId = const Value.absent(),
            Value<double> offsetDx = const Value.absent(),
            Value<double> offsetDy = const Value.absent(),
            Value<double?> width = const Value.absent(),
            Value<double?> preferredWidth = const Value.absent(),
            Value<double?> height = const Value.absent(),
            Value<double?> preferredHeight = const Value.absent(),
            Value<int> layer = const Value.absent(),
            Value<bool> selected = const Value.absent(),
            Value<String> color = const Value.absent(),
            Value<String> cardKind = const Value.absent(),
            Value<bool> constraints = const Value.absent(),
            Value<String?> preContext = const Value.absent(),
            Value<String> url = const Value.absent(),
          }) =>
              UrlCellItemCompanion(
            id: id,
            whiteboardId: whiteboardId,
            cellId: cellId,
            offsetDx: offsetDx,
            offsetDy: offsetDy,
            width: width,
            preferredWidth: preferredWidth,
            height: height,
            preferredHeight: preferredHeight,
            layer: layer,
            selected: selected,
            color: color,
            cardKind: cardKind,
            constraints: constraints,
            preContext: preContext,
            url: url,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String whiteboardId,
            required String cellId,
            required double offsetDx,
            required double offsetDy,
            Value<double?> width = const Value.absent(),
            Value<double?> preferredWidth = const Value.absent(),
            Value<double?> height = const Value.absent(),
            Value<double?> preferredHeight = const Value.absent(),
            required int layer,
            required bool selected,
            required String color,
            required String cardKind,
            required bool constraints,
            Value<String?> preContext = const Value.absent(),
            required String url,
          }) =>
              UrlCellItemCompanion.insert(
            id: id,
            whiteboardId: whiteboardId,
            cellId: cellId,
            offsetDx: offsetDx,
            offsetDy: offsetDy,
            width: width,
            preferredWidth: preferredWidth,
            height: height,
            preferredHeight: preferredHeight,
            layer: layer,
            selected: selected,
            color: color,
            cardKind: cardKind,
            constraints: constraints,
            preContext: preContext,
            url: url,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UrlCellItemTableProcessedTableManager = ProcessedTableManager<
    _$CellDatabase,
    $UrlCellItemTable,
    UrlCellItemData,
    $$UrlCellItemTableFilterComposer,
    $$UrlCellItemTableOrderingComposer,
    $$UrlCellItemTableAnnotationComposer,
    $$UrlCellItemTableCreateCompanionBuilder,
    $$UrlCellItemTableUpdateCompanionBuilder,
    (
      UrlCellItemData,
      BaseReferences<_$CellDatabase, $UrlCellItemTable, UrlCellItemData>
    ),
    UrlCellItemData,
    PrefetchHooks Function()>;
typedef $$HeaderCellItemTableCreateCompanionBuilder = HeaderCellItemCompanion
    Function({
  Value<int> id,
  required String whiteboardId,
  required String cellId,
  required double offsetDx,
  required double offsetDy,
  Value<double?> width,
  Value<double?> preferredWidth,
  Value<double?> height,
  Value<double?> preferredHeight,
  required int layer,
  required bool selected,
  required String color,
  required String cardKind,
  required bool constraints,
  Value<String?> preContext,
  required String title,
});
typedef $$HeaderCellItemTableUpdateCompanionBuilder = HeaderCellItemCompanion
    Function({
  Value<int> id,
  Value<String> whiteboardId,
  Value<String> cellId,
  Value<double> offsetDx,
  Value<double> offsetDy,
  Value<double?> width,
  Value<double?> preferredWidth,
  Value<double?> height,
  Value<double?> preferredHeight,
  Value<int> layer,
  Value<bool> selected,
  Value<String> color,
  Value<String> cardKind,
  Value<bool> constraints,
  Value<String?> preContext,
  Value<String> title,
});

class $$HeaderCellItemTableFilterComposer
    extends Composer<_$CellDatabase, $HeaderCellItemTable> {
  $$HeaderCellItemTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get whiteboardId => $composableBuilder(
      column: $table.whiteboardId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cellId => $composableBuilder(
      column: $table.cellId, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get offsetDx => $composableBuilder(
      column: $table.offsetDx, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get offsetDy => $composableBuilder(
      column: $table.offsetDy, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get width => $composableBuilder(
      column: $table.width, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get preferredWidth => $composableBuilder(
      column: $table.preferredWidth,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get preferredHeight => $composableBuilder(
      column: $table.preferredHeight,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get layer => $composableBuilder(
      column: $table.layer, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get selected => $composableBuilder(
      column: $table.selected, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cardKind => $composableBuilder(
      column: $table.cardKind, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get constraints => $composableBuilder(
      column: $table.constraints, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get preContext => $composableBuilder(
      column: $table.preContext, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));
}

class $$HeaderCellItemTableOrderingComposer
    extends Composer<_$CellDatabase, $HeaderCellItemTable> {
  $$HeaderCellItemTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get whiteboardId => $composableBuilder(
      column: $table.whiteboardId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cellId => $composableBuilder(
      column: $table.cellId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get offsetDx => $composableBuilder(
      column: $table.offsetDx, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get offsetDy => $composableBuilder(
      column: $table.offsetDy, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get width => $composableBuilder(
      column: $table.width, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get preferredWidth => $composableBuilder(
      column: $table.preferredWidth,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get preferredHeight => $composableBuilder(
      column: $table.preferredHeight,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get layer => $composableBuilder(
      column: $table.layer, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get selected => $composableBuilder(
      column: $table.selected, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cardKind => $composableBuilder(
      column: $table.cardKind, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get constraints => $composableBuilder(
      column: $table.constraints, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get preContext => $composableBuilder(
      column: $table.preContext, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));
}

class $$HeaderCellItemTableAnnotationComposer
    extends Composer<_$CellDatabase, $HeaderCellItemTable> {
  $$HeaderCellItemTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get whiteboardId => $composableBuilder(
      column: $table.whiteboardId, builder: (column) => column);

  GeneratedColumn<String> get cellId =>
      $composableBuilder(column: $table.cellId, builder: (column) => column);

  GeneratedColumn<double> get offsetDx =>
      $composableBuilder(column: $table.offsetDx, builder: (column) => column);

  GeneratedColumn<double> get offsetDy =>
      $composableBuilder(column: $table.offsetDy, builder: (column) => column);

  GeneratedColumn<double> get width =>
      $composableBuilder(column: $table.width, builder: (column) => column);

  GeneratedColumn<double> get preferredWidth => $composableBuilder(
      column: $table.preferredWidth, builder: (column) => column);

  GeneratedColumn<double> get height =>
      $composableBuilder(column: $table.height, builder: (column) => column);

  GeneratedColumn<double> get preferredHeight => $composableBuilder(
      column: $table.preferredHeight, builder: (column) => column);

  GeneratedColumn<int> get layer =>
      $composableBuilder(column: $table.layer, builder: (column) => column);

  GeneratedColumn<bool> get selected =>
      $composableBuilder(column: $table.selected, builder: (column) => column);

  GeneratedColumn<String> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<String> get cardKind =>
      $composableBuilder(column: $table.cardKind, builder: (column) => column);

  GeneratedColumn<bool> get constraints => $composableBuilder(
      column: $table.constraints, builder: (column) => column);

  GeneratedColumn<String> get preContext => $composableBuilder(
      column: $table.preContext, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);
}

class $$HeaderCellItemTableTableManager extends RootTableManager<
    _$CellDatabase,
    $HeaderCellItemTable,
    HeaderCellItemData,
    $$HeaderCellItemTableFilterComposer,
    $$HeaderCellItemTableOrderingComposer,
    $$HeaderCellItemTableAnnotationComposer,
    $$HeaderCellItemTableCreateCompanionBuilder,
    $$HeaderCellItemTableUpdateCompanionBuilder,
    (
      HeaderCellItemData,
      BaseReferences<_$CellDatabase, $HeaderCellItemTable, HeaderCellItemData>
    ),
    HeaderCellItemData,
    PrefetchHooks Function()> {
  $$HeaderCellItemTableTableManager(
      _$CellDatabase db, $HeaderCellItemTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$HeaderCellItemTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$HeaderCellItemTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$HeaderCellItemTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> whiteboardId = const Value.absent(),
            Value<String> cellId = const Value.absent(),
            Value<double> offsetDx = const Value.absent(),
            Value<double> offsetDy = const Value.absent(),
            Value<double?> width = const Value.absent(),
            Value<double?> preferredWidth = const Value.absent(),
            Value<double?> height = const Value.absent(),
            Value<double?> preferredHeight = const Value.absent(),
            Value<int> layer = const Value.absent(),
            Value<bool> selected = const Value.absent(),
            Value<String> color = const Value.absent(),
            Value<String> cardKind = const Value.absent(),
            Value<bool> constraints = const Value.absent(),
            Value<String?> preContext = const Value.absent(),
            Value<String> title = const Value.absent(),
          }) =>
              HeaderCellItemCompanion(
            id: id,
            whiteboardId: whiteboardId,
            cellId: cellId,
            offsetDx: offsetDx,
            offsetDy: offsetDy,
            width: width,
            preferredWidth: preferredWidth,
            height: height,
            preferredHeight: preferredHeight,
            layer: layer,
            selected: selected,
            color: color,
            cardKind: cardKind,
            constraints: constraints,
            preContext: preContext,
            title: title,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String whiteboardId,
            required String cellId,
            required double offsetDx,
            required double offsetDy,
            Value<double?> width = const Value.absent(),
            Value<double?> preferredWidth = const Value.absent(),
            Value<double?> height = const Value.absent(),
            Value<double?> preferredHeight = const Value.absent(),
            required int layer,
            required bool selected,
            required String color,
            required String cardKind,
            required bool constraints,
            Value<String?> preContext = const Value.absent(),
            required String title,
          }) =>
              HeaderCellItemCompanion.insert(
            id: id,
            whiteboardId: whiteboardId,
            cellId: cellId,
            offsetDx: offsetDx,
            offsetDy: offsetDy,
            width: width,
            preferredWidth: preferredWidth,
            height: height,
            preferredHeight: preferredHeight,
            layer: layer,
            selected: selected,
            color: color,
            cardKind: cardKind,
            constraints: constraints,
            preContext: preContext,
            title: title,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$HeaderCellItemTableProcessedTableManager = ProcessedTableManager<
    _$CellDatabase,
    $HeaderCellItemTable,
    HeaderCellItemData,
    $$HeaderCellItemTableFilterComposer,
    $$HeaderCellItemTableOrderingComposer,
    $$HeaderCellItemTableAnnotationComposer,
    $$HeaderCellItemTableCreateCompanionBuilder,
    $$HeaderCellItemTableUpdateCompanionBuilder,
    (
      HeaderCellItemData,
      BaseReferences<_$CellDatabase, $HeaderCellItemTable, HeaderCellItemData>
    ),
    HeaderCellItemData,
    PrefetchHooks Function()>;

class $CellDatabaseManager {
  final _$CellDatabase _db;
  $CellDatabaseManager(this._db);
  $$BrainstormingCellItemTableTableManager get brainstormingCellItem =>
      $$BrainstormingCellItemTableTableManager(_db, _db.brainstormingCellItem);
  $$EditableCellItemTableTableManager get editableCellItem =>
      $$EditableCellItemTableTableManager(_db, _db.editableCellItem);
  $$ImageCellItemTableTableManager get imageCellItem =>
      $$ImageCellItemTableTableManager(_db, _db.imageCellItem);
  $$ArticleCellItemTableTableManager get articleCellItem =>
      $$ArticleCellItemTableTableManager(_db, _db.articleCellItem);
  $$UrlCellItemTableTableManager get urlCellItem =>
      $$UrlCellItemTableTableManager(_db, _db.urlCellItem);
  $$HeaderCellItemTableTableManager get headerCellItem =>
      $$HeaderCellItemTableTableManager(_db, _db.headerCellItem);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cellDatabaseHash() => r'd9091c57e154d9040b647ea43f4501900e09967b';

/// See also [cellDatabase].
@ProviderFor(cellDatabase)
final cellDatabaseProvider = Provider<CellDatabase>.internal(
  cellDatabase,
  name: r'cellDatabaseProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cellDatabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CellDatabaseRef = ProviderRef<CellDatabase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
