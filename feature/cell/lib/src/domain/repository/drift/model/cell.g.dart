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
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
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
      'width', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
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
        height,
        preferredHeight,
        layer,
        selected,
        color,
        cardKind,
        constraints,
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
    } else if (isInserting) {
      context.missing(_widthMeta);
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
          .read(DriftSqlType.double, data['${effectivePrefix}width'])!,
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
  final double width;
  final double? height;
  final double? preferredHeight;

  /// Decoration related
  final int layer;
  final bool selected;
  final String color;
  final String cardKind;
  final bool constraints;
  final String? question;
  final String? suggestions;
  const BrainstormingCellItemData(
      {required this.id,
      required this.whiteboardId,
      required this.cellId,
      required this.offsetDx,
      required this.offsetDy,
      required this.width,
      this.height,
      this.preferredHeight,
      required this.layer,
      required this.selected,
      required this.color,
      required this.cardKind,
      required this.constraints,
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
    map['width'] = Variable<double>(width);
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
      width: Value(width),
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
      width: serializer.fromJson<double>(json['width']),
      height: serializer.fromJson<double?>(json['height']),
      preferredHeight: serializer.fromJson<double?>(json['preferredHeight']),
      layer: serializer.fromJson<int>(json['layer']),
      selected: serializer.fromJson<bool>(json['selected']),
      color: serializer.fromJson<String>(json['color']),
      cardKind: serializer.fromJson<String>(json['cardKind']),
      constraints: serializer.fromJson<bool>(json['constraints']),
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
      'width': serializer.toJson<double>(width),
      'height': serializer.toJson<double?>(height),
      'preferredHeight': serializer.toJson<double?>(preferredHeight),
      'layer': serializer.toJson<int>(layer),
      'selected': serializer.toJson<bool>(selected),
      'color': serializer.toJson<String>(color),
      'cardKind': serializer.toJson<String>(cardKind),
      'constraints': serializer.toJson<bool>(constraints),
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
          double? width,
          Value<double?> height = const Value.absent(),
          Value<double?> preferredHeight = const Value.absent(),
          int? layer,
          bool? selected,
          String? color,
          String? cardKind,
          bool? constraints,
          Value<String?> question = const Value.absent(),
          Value<String?> suggestions = const Value.absent()}) =>
      BrainstormingCellItemData(
        id: id ?? this.id,
        whiteboardId: whiteboardId ?? this.whiteboardId,
        cellId: cellId ?? this.cellId,
        offsetDx: offsetDx ?? this.offsetDx,
        offsetDy: offsetDy ?? this.offsetDy,
        width: width ?? this.width,
        height: height.present ? height.value : this.height,
        preferredHeight: preferredHeight.present
            ? preferredHeight.value
            : this.preferredHeight,
        layer: layer ?? this.layer,
        selected: selected ?? this.selected,
        color: color ?? this.color,
        cardKind: cardKind ?? this.cardKind,
        constraints: constraints ?? this.constraints,
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
          ..write('height: $height, ')
          ..write('preferredHeight: $preferredHeight, ')
          ..write('layer: $layer, ')
          ..write('selected: $selected, ')
          ..write('color: $color, ')
          ..write('cardKind: $cardKind, ')
          ..write('constraints: $constraints, ')
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
      height,
      preferredHeight,
      layer,
      selected,
      color,
      cardKind,
      constraints,
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
          other.height == this.height &&
          other.preferredHeight == this.preferredHeight &&
          other.layer == this.layer &&
          other.selected == this.selected &&
          other.color == this.color &&
          other.cardKind == this.cardKind &&
          other.constraints == this.constraints &&
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
  final Value<double> width;
  final Value<double?> height;
  final Value<double?> preferredHeight;
  final Value<int> layer;
  final Value<bool> selected;
  final Value<String> color;
  final Value<String> cardKind;
  final Value<bool> constraints;
  final Value<String?> question;
  final Value<String?> suggestions;
  const BrainstormingCellItemCompanion({
    this.id = const Value.absent(),
    this.whiteboardId = const Value.absent(),
    this.cellId = const Value.absent(),
    this.offsetDx = const Value.absent(),
    this.offsetDy = const Value.absent(),
    this.width = const Value.absent(),
    this.height = const Value.absent(),
    this.preferredHeight = const Value.absent(),
    this.layer = const Value.absent(),
    this.selected = const Value.absent(),
    this.color = const Value.absent(),
    this.cardKind = const Value.absent(),
    this.constraints = const Value.absent(),
    this.question = const Value.absent(),
    this.suggestions = const Value.absent(),
  });
  BrainstormingCellItemCompanion.insert({
    this.id = const Value.absent(),
    required String whiteboardId,
    required String cellId,
    required double offsetDx,
    required double offsetDy,
    required double width,
    this.height = const Value.absent(),
    this.preferredHeight = const Value.absent(),
    required int layer,
    required bool selected,
    required String color,
    required String cardKind,
    required bool constraints,
    this.question = const Value.absent(),
    this.suggestions = const Value.absent(),
  })  : whiteboardId = Value(whiteboardId),
        cellId = Value(cellId),
        offsetDx = Value(offsetDx),
        offsetDy = Value(offsetDy),
        width = Value(width),
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
    Expression<double>? height,
    Expression<double>? preferredHeight,
    Expression<int>? layer,
    Expression<bool>? selected,
    Expression<String>? color,
    Expression<String>? cardKind,
    Expression<bool>? constraints,
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
      if (height != null) 'height': height,
      if (preferredHeight != null) 'preferred_height': preferredHeight,
      if (layer != null) 'layer': layer,
      if (selected != null) 'selected': selected,
      if (color != null) 'color': color,
      if (cardKind != null) 'card_kind': cardKind,
      if (constraints != null) 'constraints': constraints,
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
      Value<double>? width,
      Value<double?>? height,
      Value<double?>? preferredHeight,
      Value<int>? layer,
      Value<bool>? selected,
      Value<String>? color,
      Value<String>? cardKind,
      Value<bool>? constraints,
      Value<String?>? question,
      Value<String?>? suggestions}) {
    return BrainstormingCellItemCompanion(
      id: id ?? this.id,
      whiteboardId: whiteboardId ?? this.whiteboardId,
      cellId: cellId ?? this.cellId,
      offsetDx: offsetDx ?? this.offsetDx,
      offsetDy: offsetDy ?? this.offsetDy,
      width: width ?? this.width,
      height: height ?? this.height,
      preferredHeight: preferredHeight ?? this.preferredHeight,
      layer: layer ?? this.layer,
      selected: selected ?? this.selected,
      color: color ?? this.color,
      cardKind: cardKind ?? this.cardKind,
      constraints: constraints ?? this.constraints,
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
          ..write('height: $height, ')
          ..write('preferredHeight: $preferredHeight, ')
          ..write('layer: $layer, ')
          ..write('selected: $selected, ')
          ..write('color: $color, ')
          ..write('cardKind: $cardKind, ')
          ..write('constraints: $constraints, ')
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
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
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
      'width', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
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
        height,
        preferredHeight,
        layer,
        selected,
        color,
        cardKind,
        constraints,
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
    } else if (isInserting) {
      context.missing(_widthMeta);
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
          .read(DriftSqlType.double, data['${effectivePrefix}width'])!,
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
  final double width;
  final double? height;
  final double? preferredHeight;

  /// Decoration related
  final int layer;
  final bool selected;
  final String color;
  final String cardKind;
  final bool constraints;
  final String title;
  final String content;
  const EditableCellItemData(
      {required this.id,
      required this.whiteboardId,
      required this.cellId,
      required this.offsetDx,
      required this.offsetDy,
      required this.width,
      this.height,
      this.preferredHeight,
      required this.layer,
      required this.selected,
      required this.color,
      required this.cardKind,
      required this.constraints,
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
    map['width'] = Variable<double>(width);
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
      width: Value(width),
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
      width: serializer.fromJson<double>(json['width']),
      height: serializer.fromJson<double?>(json['height']),
      preferredHeight: serializer.fromJson<double?>(json['preferredHeight']),
      layer: serializer.fromJson<int>(json['layer']),
      selected: serializer.fromJson<bool>(json['selected']),
      color: serializer.fromJson<String>(json['color']),
      cardKind: serializer.fromJson<String>(json['cardKind']),
      constraints: serializer.fromJson<bool>(json['constraints']),
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
      'width': serializer.toJson<double>(width),
      'height': serializer.toJson<double?>(height),
      'preferredHeight': serializer.toJson<double?>(preferredHeight),
      'layer': serializer.toJson<int>(layer),
      'selected': serializer.toJson<bool>(selected),
      'color': serializer.toJson<String>(color),
      'cardKind': serializer.toJson<String>(cardKind),
      'constraints': serializer.toJson<bool>(constraints),
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
          double? width,
          Value<double?> height = const Value.absent(),
          Value<double?> preferredHeight = const Value.absent(),
          int? layer,
          bool? selected,
          String? color,
          String? cardKind,
          bool? constraints,
          String? title,
          String? content}) =>
      EditableCellItemData(
        id: id ?? this.id,
        whiteboardId: whiteboardId ?? this.whiteboardId,
        cellId: cellId ?? this.cellId,
        offsetDx: offsetDx ?? this.offsetDx,
        offsetDy: offsetDy ?? this.offsetDy,
        width: width ?? this.width,
        height: height.present ? height.value : this.height,
        preferredHeight: preferredHeight.present
            ? preferredHeight.value
            : this.preferredHeight,
        layer: layer ?? this.layer,
        selected: selected ?? this.selected,
        color: color ?? this.color,
        cardKind: cardKind ?? this.cardKind,
        constraints: constraints ?? this.constraints,
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
          ..write('height: $height, ')
          ..write('preferredHeight: $preferredHeight, ')
          ..write('layer: $layer, ')
          ..write('selected: $selected, ')
          ..write('color: $color, ')
          ..write('cardKind: $cardKind, ')
          ..write('constraints: $constraints, ')
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
      height,
      preferredHeight,
      layer,
      selected,
      color,
      cardKind,
      constraints,
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
          other.height == this.height &&
          other.preferredHeight == this.preferredHeight &&
          other.layer == this.layer &&
          other.selected == this.selected &&
          other.color == this.color &&
          other.cardKind == this.cardKind &&
          other.constraints == this.constraints &&
          other.title == this.title &&
          other.content == this.content);
}

class EditableCellItemCompanion extends UpdateCompanion<EditableCellItemData> {
  final Value<int> id;
  final Value<String> whiteboardId;
  final Value<String> cellId;
  final Value<double> offsetDx;
  final Value<double> offsetDy;
  final Value<double> width;
  final Value<double?> height;
  final Value<double?> preferredHeight;
  final Value<int> layer;
  final Value<bool> selected;
  final Value<String> color;
  final Value<String> cardKind;
  final Value<bool> constraints;
  final Value<String> title;
  final Value<String> content;
  const EditableCellItemCompanion({
    this.id = const Value.absent(),
    this.whiteboardId = const Value.absent(),
    this.cellId = const Value.absent(),
    this.offsetDx = const Value.absent(),
    this.offsetDy = const Value.absent(),
    this.width = const Value.absent(),
    this.height = const Value.absent(),
    this.preferredHeight = const Value.absent(),
    this.layer = const Value.absent(),
    this.selected = const Value.absent(),
    this.color = const Value.absent(),
    this.cardKind = const Value.absent(),
    this.constraints = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
  });
  EditableCellItemCompanion.insert({
    this.id = const Value.absent(),
    required String whiteboardId,
    required String cellId,
    required double offsetDx,
    required double offsetDy,
    required double width,
    this.height = const Value.absent(),
    this.preferredHeight = const Value.absent(),
    required int layer,
    required bool selected,
    required String color,
    required String cardKind,
    required bool constraints,
    required String title,
    required String content,
  })  : whiteboardId = Value(whiteboardId),
        cellId = Value(cellId),
        offsetDx = Value(offsetDx),
        offsetDy = Value(offsetDy),
        width = Value(width),
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
    Expression<double>? height,
    Expression<double>? preferredHeight,
    Expression<int>? layer,
    Expression<bool>? selected,
    Expression<String>? color,
    Expression<String>? cardKind,
    Expression<bool>? constraints,
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
      if (height != null) 'height': height,
      if (preferredHeight != null) 'preferred_height': preferredHeight,
      if (layer != null) 'layer': layer,
      if (selected != null) 'selected': selected,
      if (color != null) 'color': color,
      if (cardKind != null) 'card_kind': cardKind,
      if (constraints != null) 'constraints': constraints,
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
      Value<double>? width,
      Value<double?>? height,
      Value<double?>? preferredHeight,
      Value<int>? layer,
      Value<bool>? selected,
      Value<String>? color,
      Value<String>? cardKind,
      Value<bool>? constraints,
      Value<String>? title,
      Value<String>? content}) {
    return EditableCellItemCompanion(
      id: id ?? this.id,
      whiteboardId: whiteboardId ?? this.whiteboardId,
      cellId: cellId ?? this.cellId,
      offsetDx: offsetDx ?? this.offsetDx,
      offsetDy: offsetDy ?? this.offsetDy,
      width: width ?? this.width,
      height: height ?? this.height,
      preferredHeight: preferredHeight ?? this.preferredHeight,
      layer: layer ?? this.layer,
      selected: selected ?? this.selected,
      color: color ?? this.color,
      cardKind: cardKind ?? this.cardKind,
      constraints: constraints ?? this.constraints,
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
          ..write('height: $height, ')
          ..write('preferredHeight: $preferredHeight, ')
          ..write('layer: $layer, ')
          ..write('selected: $selected, ')
          ..write('color: $color, ')
          ..write('cardKind: $cardKind, ')
          ..write('constraints: $constraints, ')
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
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
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
      'width', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
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
        height,
        preferredHeight,
        layer,
        selected,
        color,
        cardKind,
        constraints,
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
    } else if (isInserting) {
      context.missing(_widthMeta);
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
          .read(DriftSqlType.double, data['${effectivePrefix}width'])!,
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
  final double width;
  final double? height;
  final double? preferredHeight;

  /// Decoration related
  final int layer;
  final bool selected;
  final String color;
  final String cardKind;
  final bool constraints;
  final String url;
  const ImageCellItemData(
      {required this.id,
      required this.whiteboardId,
      required this.cellId,
      required this.offsetDx,
      required this.offsetDy,
      required this.width,
      this.height,
      this.preferredHeight,
      required this.layer,
      required this.selected,
      required this.color,
      required this.cardKind,
      required this.constraints,
      required this.url});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['whiteboard_id'] = Variable<String>(whiteboardId);
    map['cell_id'] = Variable<String>(cellId);
    map['offset_dx'] = Variable<double>(offsetDx);
    map['offset_dy'] = Variable<double>(offsetDy);
    map['width'] = Variable<double>(width);
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
      width: Value(width),
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
      width: serializer.fromJson<double>(json['width']),
      height: serializer.fromJson<double?>(json['height']),
      preferredHeight: serializer.fromJson<double?>(json['preferredHeight']),
      layer: serializer.fromJson<int>(json['layer']),
      selected: serializer.fromJson<bool>(json['selected']),
      color: serializer.fromJson<String>(json['color']),
      cardKind: serializer.fromJson<String>(json['cardKind']),
      constraints: serializer.fromJson<bool>(json['constraints']),
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
      'width': serializer.toJson<double>(width),
      'height': serializer.toJson<double?>(height),
      'preferredHeight': serializer.toJson<double?>(preferredHeight),
      'layer': serializer.toJson<int>(layer),
      'selected': serializer.toJson<bool>(selected),
      'color': serializer.toJson<String>(color),
      'cardKind': serializer.toJson<String>(cardKind),
      'constraints': serializer.toJson<bool>(constraints),
      'url': serializer.toJson<String>(url),
    };
  }

  ImageCellItemData copyWith(
          {int? id,
          String? whiteboardId,
          String? cellId,
          double? offsetDx,
          double? offsetDy,
          double? width,
          Value<double?> height = const Value.absent(),
          Value<double?> preferredHeight = const Value.absent(),
          int? layer,
          bool? selected,
          String? color,
          String? cardKind,
          bool? constraints,
          String? url}) =>
      ImageCellItemData(
        id: id ?? this.id,
        whiteboardId: whiteboardId ?? this.whiteboardId,
        cellId: cellId ?? this.cellId,
        offsetDx: offsetDx ?? this.offsetDx,
        offsetDy: offsetDy ?? this.offsetDy,
        width: width ?? this.width,
        height: height.present ? height.value : this.height,
        preferredHeight: preferredHeight.present
            ? preferredHeight.value
            : this.preferredHeight,
        layer: layer ?? this.layer,
        selected: selected ?? this.selected,
        color: color ?? this.color,
        cardKind: cardKind ?? this.cardKind,
        constraints: constraints ?? this.constraints,
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
          ..write('height: $height, ')
          ..write('preferredHeight: $preferredHeight, ')
          ..write('layer: $layer, ')
          ..write('selected: $selected, ')
          ..write('color: $color, ')
          ..write('cardKind: $cardKind, ')
          ..write('constraints: $constraints, ')
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
      height,
      preferredHeight,
      layer,
      selected,
      color,
      cardKind,
      constraints,
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
          other.height == this.height &&
          other.preferredHeight == this.preferredHeight &&
          other.layer == this.layer &&
          other.selected == this.selected &&
          other.color == this.color &&
          other.cardKind == this.cardKind &&
          other.constraints == this.constraints &&
          other.url == this.url);
}

class ImageCellItemCompanion extends UpdateCompanion<ImageCellItemData> {
  final Value<int> id;
  final Value<String> whiteboardId;
  final Value<String> cellId;
  final Value<double> offsetDx;
  final Value<double> offsetDy;
  final Value<double> width;
  final Value<double?> height;
  final Value<double?> preferredHeight;
  final Value<int> layer;
  final Value<bool> selected;
  final Value<String> color;
  final Value<String> cardKind;
  final Value<bool> constraints;
  final Value<String> url;
  const ImageCellItemCompanion({
    this.id = const Value.absent(),
    this.whiteboardId = const Value.absent(),
    this.cellId = const Value.absent(),
    this.offsetDx = const Value.absent(),
    this.offsetDy = const Value.absent(),
    this.width = const Value.absent(),
    this.height = const Value.absent(),
    this.preferredHeight = const Value.absent(),
    this.layer = const Value.absent(),
    this.selected = const Value.absent(),
    this.color = const Value.absent(),
    this.cardKind = const Value.absent(),
    this.constraints = const Value.absent(),
    this.url = const Value.absent(),
  });
  ImageCellItemCompanion.insert({
    this.id = const Value.absent(),
    required String whiteboardId,
    required String cellId,
    required double offsetDx,
    required double offsetDy,
    required double width,
    this.height = const Value.absent(),
    this.preferredHeight = const Value.absent(),
    required int layer,
    required bool selected,
    required String color,
    required String cardKind,
    required bool constraints,
    required String url,
  })  : whiteboardId = Value(whiteboardId),
        cellId = Value(cellId),
        offsetDx = Value(offsetDx),
        offsetDy = Value(offsetDy),
        width = Value(width),
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
    Expression<double>? height,
    Expression<double>? preferredHeight,
    Expression<int>? layer,
    Expression<bool>? selected,
    Expression<String>? color,
    Expression<String>? cardKind,
    Expression<bool>? constraints,
    Expression<String>? url,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (whiteboardId != null) 'whiteboard_id': whiteboardId,
      if (cellId != null) 'cell_id': cellId,
      if (offsetDx != null) 'offset_dx': offsetDx,
      if (offsetDy != null) 'offset_dy': offsetDy,
      if (width != null) 'width': width,
      if (height != null) 'height': height,
      if (preferredHeight != null) 'preferred_height': preferredHeight,
      if (layer != null) 'layer': layer,
      if (selected != null) 'selected': selected,
      if (color != null) 'color': color,
      if (cardKind != null) 'card_kind': cardKind,
      if (constraints != null) 'constraints': constraints,
      if (url != null) 'url': url,
    });
  }

  ImageCellItemCompanion copyWith(
      {Value<int>? id,
      Value<String>? whiteboardId,
      Value<String>? cellId,
      Value<double>? offsetDx,
      Value<double>? offsetDy,
      Value<double>? width,
      Value<double?>? height,
      Value<double?>? preferredHeight,
      Value<int>? layer,
      Value<bool>? selected,
      Value<String>? color,
      Value<String>? cardKind,
      Value<bool>? constraints,
      Value<String>? url}) {
    return ImageCellItemCompanion(
      id: id ?? this.id,
      whiteboardId: whiteboardId ?? this.whiteboardId,
      cellId: cellId ?? this.cellId,
      offsetDx: offsetDx ?? this.offsetDx,
      offsetDy: offsetDy ?? this.offsetDy,
      width: width ?? this.width,
      height: height ?? this.height,
      preferredHeight: preferredHeight ?? this.preferredHeight,
      layer: layer ?? this.layer,
      selected: selected ?? this.selected,
      color: color ?? this.color,
      cardKind: cardKind ?? this.cardKind,
      constraints: constraints ?? this.constraints,
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
          ..write('height: $height, ')
          ..write('preferredHeight: $preferredHeight, ')
          ..write('layer: $layer, ')
          ..write('selected: $selected, ')
          ..write('color: $color, ')
          ..write('cardKind: $cardKind, ')
          ..write('constraints: $constraints, ')
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
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
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
      'width', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
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
        height,
        preferredHeight,
        layer,
        selected,
        color,
        cardKind,
        constraints,
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
    } else if (isInserting) {
      context.missing(_widthMeta);
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
          .read(DriftSqlType.double, data['${effectivePrefix}width'])!,
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
  final double width;
  final double? height;
  final double? preferredHeight;

  /// Decoration related
  final int layer;
  final bool selected;
  final String color;
  final String cardKind;
  final bool constraints;
  final String title;
  final String content;
  const ArticleCellItemData(
      {required this.id,
      required this.whiteboardId,
      required this.cellId,
      required this.offsetDx,
      required this.offsetDy,
      required this.width,
      this.height,
      this.preferredHeight,
      required this.layer,
      required this.selected,
      required this.color,
      required this.cardKind,
      required this.constraints,
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
    map['width'] = Variable<double>(width);
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
      width: Value(width),
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
      width: serializer.fromJson<double>(json['width']),
      height: serializer.fromJson<double?>(json['height']),
      preferredHeight: serializer.fromJson<double?>(json['preferredHeight']),
      layer: serializer.fromJson<int>(json['layer']),
      selected: serializer.fromJson<bool>(json['selected']),
      color: serializer.fromJson<String>(json['color']),
      cardKind: serializer.fromJson<String>(json['cardKind']),
      constraints: serializer.fromJson<bool>(json['constraints']),
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
      'width': serializer.toJson<double>(width),
      'height': serializer.toJson<double?>(height),
      'preferredHeight': serializer.toJson<double?>(preferredHeight),
      'layer': serializer.toJson<int>(layer),
      'selected': serializer.toJson<bool>(selected),
      'color': serializer.toJson<String>(color),
      'cardKind': serializer.toJson<String>(cardKind),
      'constraints': serializer.toJson<bool>(constraints),
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
          double? width,
          Value<double?> height = const Value.absent(),
          Value<double?> preferredHeight = const Value.absent(),
          int? layer,
          bool? selected,
          String? color,
          String? cardKind,
          bool? constraints,
          String? title,
          String? content}) =>
      ArticleCellItemData(
        id: id ?? this.id,
        whiteboardId: whiteboardId ?? this.whiteboardId,
        cellId: cellId ?? this.cellId,
        offsetDx: offsetDx ?? this.offsetDx,
        offsetDy: offsetDy ?? this.offsetDy,
        width: width ?? this.width,
        height: height.present ? height.value : this.height,
        preferredHeight: preferredHeight.present
            ? preferredHeight.value
            : this.preferredHeight,
        layer: layer ?? this.layer,
        selected: selected ?? this.selected,
        color: color ?? this.color,
        cardKind: cardKind ?? this.cardKind,
        constraints: constraints ?? this.constraints,
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
          ..write('height: $height, ')
          ..write('preferredHeight: $preferredHeight, ')
          ..write('layer: $layer, ')
          ..write('selected: $selected, ')
          ..write('color: $color, ')
          ..write('cardKind: $cardKind, ')
          ..write('constraints: $constraints, ')
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
      height,
      preferredHeight,
      layer,
      selected,
      color,
      cardKind,
      constraints,
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
          other.height == this.height &&
          other.preferredHeight == this.preferredHeight &&
          other.layer == this.layer &&
          other.selected == this.selected &&
          other.color == this.color &&
          other.cardKind == this.cardKind &&
          other.constraints == this.constraints &&
          other.title == this.title &&
          other.content == this.content);
}

class ArticleCellItemCompanion extends UpdateCompanion<ArticleCellItemData> {
  final Value<int> id;
  final Value<String> whiteboardId;
  final Value<String> cellId;
  final Value<double> offsetDx;
  final Value<double> offsetDy;
  final Value<double> width;
  final Value<double?> height;
  final Value<double?> preferredHeight;
  final Value<int> layer;
  final Value<bool> selected;
  final Value<String> color;
  final Value<String> cardKind;
  final Value<bool> constraints;
  final Value<String> title;
  final Value<String> content;
  const ArticleCellItemCompanion({
    this.id = const Value.absent(),
    this.whiteboardId = const Value.absent(),
    this.cellId = const Value.absent(),
    this.offsetDx = const Value.absent(),
    this.offsetDy = const Value.absent(),
    this.width = const Value.absent(),
    this.height = const Value.absent(),
    this.preferredHeight = const Value.absent(),
    this.layer = const Value.absent(),
    this.selected = const Value.absent(),
    this.color = const Value.absent(),
    this.cardKind = const Value.absent(),
    this.constraints = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
  });
  ArticleCellItemCompanion.insert({
    this.id = const Value.absent(),
    required String whiteboardId,
    required String cellId,
    required double offsetDx,
    required double offsetDy,
    required double width,
    this.height = const Value.absent(),
    this.preferredHeight = const Value.absent(),
    required int layer,
    required bool selected,
    required String color,
    required String cardKind,
    required bool constraints,
    required String title,
    required String content,
  })  : whiteboardId = Value(whiteboardId),
        cellId = Value(cellId),
        offsetDx = Value(offsetDx),
        offsetDy = Value(offsetDy),
        width = Value(width),
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
    Expression<double>? height,
    Expression<double>? preferredHeight,
    Expression<int>? layer,
    Expression<bool>? selected,
    Expression<String>? color,
    Expression<String>? cardKind,
    Expression<bool>? constraints,
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
      if (height != null) 'height': height,
      if (preferredHeight != null) 'preferred_height': preferredHeight,
      if (layer != null) 'layer': layer,
      if (selected != null) 'selected': selected,
      if (color != null) 'color': color,
      if (cardKind != null) 'card_kind': cardKind,
      if (constraints != null) 'constraints': constraints,
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
      Value<double>? width,
      Value<double?>? height,
      Value<double?>? preferredHeight,
      Value<int>? layer,
      Value<bool>? selected,
      Value<String>? color,
      Value<String>? cardKind,
      Value<bool>? constraints,
      Value<String>? title,
      Value<String>? content}) {
    return ArticleCellItemCompanion(
      id: id ?? this.id,
      whiteboardId: whiteboardId ?? this.whiteboardId,
      cellId: cellId ?? this.cellId,
      offsetDx: offsetDx ?? this.offsetDx,
      offsetDy: offsetDy ?? this.offsetDy,
      width: width ?? this.width,
      height: height ?? this.height,
      preferredHeight: preferredHeight ?? this.preferredHeight,
      layer: layer ?? this.layer,
      selected: selected ?? this.selected,
      color: color ?? this.color,
      cardKind: cardKind ?? this.cardKind,
      constraints: constraints ?? this.constraints,
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
          ..write('height: $height, ')
          ..write('preferredHeight: $preferredHeight, ')
          ..write('layer: $layer, ')
          ..write('selected: $selected, ')
          ..write('color: $color, ')
          ..write('cardKind: $cardKind, ')
          ..write('constraints: $constraints, ')
          ..write('title: $title, ')
          ..write('content: $content')
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
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [brainstormingCellItem, editableCellItem, imageCellItem, articleCellItem];
}

typedef $$BrainstormingCellItemTableCreateCompanionBuilder
    = BrainstormingCellItemCompanion Function({
  Value<int> id,
  required String whiteboardId,
  required String cellId,
  required double offsetDx,
  required double offsetDy,
  required double width,
  Value<double?> height,
  Value<double?> preferredHeight,
  required int layer,
  required bool selected,
  required String color,
  required String cardKind,
  required bool constraints,
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
  Value<double> width,
  Value<double?> height,
  Value<double?> preferredHeight,
  Value<int> layer,
  Value<bool> selected,
  Value<String> color,
  Value<String> cardKind,
  Value<bool> constraints,
  Value<String?> question,
  Value<String?> suggestions,
});

class $$BrainstormingCellItemTableTableManager extends RootTableManager<
    _$CellDatabase,
    $BrainstormingCellItemTable,
    BrainstormingCellItemData,
    $$BrainstormingCellItemTableFilterComposer,
    $$BrainstormingCellItemTableOrderingComposer,
    $$BrainstormingCellItemTableCreateCompanionBuilder,
    $$BrainstormingCellItemTableUpdateCompanionBuilder> {
  $$BrainstormingCellItemTableTableManager(
      _$CellDatabase db, $BrainstormingCellItemTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$BrainstormingCellItemTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$BrainstormingCellItemTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> whiteboardId = const Value.absent(),
            Value<String> cellId = const Value.absent(),
            Value<double> offsetDx = const Value.absent(),
            Value<double> offsetDy = const Value.absent(),
            Value<double> width = const Value.absent(),
            Value<double?> height = const Value.absent(),
            Value<double?> preferredHeight = const Value.absent(),
            Value<int> layer = const Value.absent(),
            Value<bool> selected = const Value.absent(),
            Value<String> color = const Value.absent(),
            Value<String> cardKind = const Value.absent(),
            Value<bool> constraints = const Value.absent(),
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
            height: height,
            preferredHeight: preferredHeight,
            layer: layer,
            selected: selected,
            color: color,
            cardKind: cardKind,
            constraints: constraints,
            question: question,
            suggestions: suggestions,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String whiteboardId,
            required String cellId,
            required double offsetDx,
            required double offsetDy,
            required double width,
            Value<double?> height = const Value.absent(),
            Value<double?> preferredHeight = const Value.absent(),
            required int layer,
            required bool selected,
            required String color,
            required String cardKind,
            required bool constraints,
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
            height: height,
            preferredHeight: preferredHeight,
            layer: layer,
            selected: selected,
            color: color,
            cardKind: cardKind,
            constraints: constraints,
            question: question,
            suggestions: suggestions,
          ),
        ));
}

class $$BrainstormingCellItemTableFilterComposer
    extends FilterComposer<_$CellDatabase, $BrainstormingCellItemTable> {
  $$BrainstormingCellItemTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get whiteboardId => $state.composableBuilder(
      column: $state.table.whiteboardId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get cellId => $state.composableBuilder(
      column: $state.table.cellId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get offsetDx => $state.composableBuilder(
      column: $state.table.offsetDx,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get offsetDy => $state.composableBuilder(
      column: $state.table.offsetDy,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get width => $state.composableBuilder(
      column: $state.table.width,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get height => $state.composableBuilder(
      column: $state.table.height,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get preferredHeight => $state.composableBuilder(
      column: $state.table.preferredHeight,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get layer => $state.composableBuilder(
      column: $state.table.layer,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get selected => $state.composableBuilder(
      column: $state.table.selected,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get color => $state.composableBuilder(
      column: $state.table.color,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get cardKind => $state.composableBuilder(
      column: $state.table.cardKind,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get constraints => $state.composableBuilder(
      column: $state.table.constraints,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get question => $state.composableBuilder(
      column: $state.table.question,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get suggestions => $state.composableBuilder(
      column: $state.table.suggestions,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$BrainstormingCellItemTableOrderingComposer
    extends OrderingComposer<_$CellDatabase, $BrainstormingCellItemTable> {
  $$BrainstormingCellItemTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get whiteboardId => $state.composableBuilder(
      column: $state.table.whiteboardId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get cellId => $state.composableBuilder(
      column: $state.table.cellId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get offsetDx => $state.composableBuilder(
      column: $state.table.offsetDx,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get offsetDy => $state.composableBuilder(
      column: $state.table.offsetDy,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get width => $state.composableBuilder(
      column: $state.table.width,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get height => $state.composableBuilder(
      column: $state.table.height,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get preferredHeight => $state.composableBuilder(
      column: $state.table.preferredHeight,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get layer => $state.composableBuilder(
      column: $state.table.layer,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get selected => $state.composableBuilder(
      column: $state.table.selected,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get color => $state.composableBuilder(
      column: $state.table.color,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get cardKind => $state.composableBuilder(
      column: $state.table.cardKind,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get constraints => $state.composableBuilder(
      column: $state.table.constraints,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get question => $state.composableBuilder(
      column: $state.table.question,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get suggestions => $state.composableBuilder(
      column: $state.table.suggestions,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$EditableCellItemTableCreateCompanionBuilder
    = EditableCellItemCompanion Function({
  Value<int> id,
  required String whiteboardId,
  required String cellId,
  required double offsetDx,
  required double offsetDy,
  required double width,
  Value<double?> height,
  Value<double?> preferredHeight,
  required int layer,
  required bool selected,
  required String color,
  required String cardKind,
  required bool constraints,
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
  Value<double> width,
  Value<double?> height,
  Value<double?> preferredHeight,
  Value<int> layer,
  Value<bool> selected,
  Value<String> color,
  Value<String> cardKind,
  Value<bool> constraints,
  Value<String> title,
  Value<String> content,
});

class $$EditableCellItemTableTableManager extends RootTableManager<
    _$CellDatabase,
    $EditableCellItemTable,
    EditableCellItemData,
    $$EditableCellItemTableFilterComposer,
    $$EditableCellItemTableOrderingComposer,
    $$EditableCellItemTableCreateCompanionBuilder,
    $$EditableCellItemTableUpdateCompanionBuilder> {
  $$EditableCellItemTableTableManager(
      _$CellDatabase db, $EditableCellItemTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$EditableCellItemTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$EditableCellItemTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> whiteboardId = const Value.absent(),
            Value<String> cellId = const Value.absent(),
            Value<double> offsetDx = const Value.absent(),
            Value<double> offsetDy = const Value.absent(),
            Value<double> width = const Value.absent(),
            Value<double?> height = const Value.absent(),
            Value<double?> preferredHeight = const Value.absent(),
            Value<int> layer = const Value.absent(),
            Value<bool> selected = const Value.absent(),
            Value<String> color = const Value.absent(),
            Value<String> cardKind = const Value.absent(),
            Value<bool> constraints = const Value.absent(),
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
            height: height,
            preferredHeight: preferredHeight,
            layer: layer,
            selected: selected,
            color: color,
            cardKind: cardKind,
            constraints: constraints,
            title: title,
            content: content,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String whiteboardId,
            required String cellId,
            required double offsetDx,
            required double offsetDy,
            required double width,
            Value<double?> height = const Value.absent(),
            Value<double?> preferredHeight = const Value.absent(),
            required int layer,
            required bool selected,
            required String color,
            required String cardKind,
            required bool constraints,
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
            height: height,
            preferredHeight: preferredHeight,
            layer: layer,
            selected: selected,
            color: color,
            cardKind: cardKind,
            constraints: constraints,
            title: title,
            content: content,
          ),
        ));
}

class $$EditableCellItemTableFilterComposer
    extends FilterComposer<_$CellDatabase, $EditableCellItemTable> {
  $$EditableCellItemTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get whiteboardId => $state.composableBuilder(
      column: $state.table.whiteboardId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get cellId => $state.composableBuilder(
      column: $state.table.cellId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get offsetDx => $state.composableBuilder(
      column: $state.table.offsetDx,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get offsetDy => $state.composableBuilder(
      column: $state.table.offsetDy,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get width => $state.composableBuilder(
      column: $state.table.width,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get height => $state.composableBuilder(
      column: $state.table.height,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get preferredHeight => $state.composableBuilder(
      column: $state.table.preferredHeight,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get layer => $state.composableBuilder(
      column: $state.table.layer,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get selected => $state.composableBuilder(
      column: $state.table.selected,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get color => $state.composableBuilder(
      column: $state.table.color,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get cardKind => $state.composableBuilder(
      column: $state.table.cardKind,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get constraints => $state.composableBuilder(
      column: $state.table.constraints,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$EditableCellItemTableOrderingComposer
    extends OrderingComposer<_$CellDatabase, $EditableCellItemTable> {
  $$EditableCellItemTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get whiteboardId => $state.composableBuilder(
      column: $state.table.whiteboardId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get cellId => $state.composableBuilder(
      column: $state.table.cellId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get offsetDx => $state.composableBuilder(
      column: $state.table.offsetDx,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get offsetDy => $state.composableBuilder(
      column: $state.table.offsetDy,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get width => $state.composableBuilder(
      column: $state.table.width,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get height => $state.composableBuilder(
      column: $state.table.height,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get preferredHeight => $state.composableBuilder(
      column: $state.table.preferredHeight,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get layer => $state.composableBuilder(
      column: $state.table.layer,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get selected => $state.composableBuilder(
      column: $state.table.selected,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get color => $state.composableBuilder(
      column: $state.table.color,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get cardKind => $state.composableBuilder(
      column: $state.table.cardKind,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get constraints => $state.composableBuilder(
      column: $state.table.constraints,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$ImageCellItemTableCreateCompanionBuilder = ImageCellItemCompanion
    Function({
  Value<int> id,
  required String whiteboardId,
  required String cellId,
  required double offsetDx,
  required double offsetDy,
  required double width,
  Value<double?> height,
  Value<double?> preferredHeight,
  required int layer,
  required bool selected,
  required String color,
  required String cardKind,
  required bool constraints,
  required String url,
});
typedef $$ImageCellItemTableUpdateCompanionBuilder = ImageCellItemCompanion
    Function({
  Value<int> id,
  Value<String> whiteboardId,
  Value<String> cellId,
  Value<double> offsetDx,
  Value<double> offsetDy,
  Value<double> width,
  Value<double?> height,
  Value<double?> preferredHeight,
  Value<int> layer,
  Value<bool> selected,
  Value<String> color,
  Value<String> cardKind,
  Value<bool> constraints,
  Value<String> url,
});

class $$ImageCellItemTableTableManager extends RootTableManager<
    _$CellDatabase,
    $ImageCellItemTable,
    ImageCellItemData,
    $$ImageCellItemTableFilterComposer,
    $$ImageCellItemTableOrderingComposer,
    $$ImageCellItemTableCreateCompanionBuilder,
    $$ImageCellItemTableUpdateCompanionBuilder> {
  $$ImageCellItemTableTableManager(_$CellDatabase db, $ImageCellItemTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ImageCellItemTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$ImageCellItemTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> whiteboardId = const Value.absent(),
            Value<String> cellId = const Value.absent(),
            Value<double> offsetDx = const Value.absent(),
            Value<double> offsetDy = const Value.absent(),
            Value<double> width = const Value.absent(),
            Value<double?> height = const Value.absent(),
            Value<double?> preferredHeight = const Value.absent(),
            Value<int> layer = const Value.absent(),
            Value<bool> selected = const Value.absent(),
            Value<String> color = const Value.absent(),
            Value<String> cardKind = const Value.absent(),
            Value<bool> constraints = const Value.absent(),
            Value<String> url = const Value.absent(),
          }) =>
              ImageCellItemCompanion(
            id: id,
            whiteboardId: whiteboardId,
            cellId: cellId,
            offsetDx: offsetDx,
            offsetDy: offsetDy,
            width: width,
            height: height,
            preferredHeight: preferredHeight,
            layer: layer,
            selected: selected,
            color: color,
            cardKind: cardKind,
            constraints: constraints,
            url: url,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String whiteboardId,
            required String cellId,
            required double offsetDx,
            required double offsetDy,
            required double width,
            Value<double?> height = const Value.absent(),
            Value<double?> preferredHeight = const Value.absent(),
            required int layer,
            required bool selected,
            required String color,
            required String cardKind,
            required bool constraints,
            required String url,
          }) =>
              ImageCellItemCompanion.insert(
            id: id,
            whiteboardId: whiteboardId,
            cellId: cellId,
            offsetDx: offsetDx,
            offsetDy: offsetDy,
            width: width,
            height: height,
            preferredHeight: preferredHeight,
            layer: layer,
            selected: selected,
            color: color,
            cardKind: cardKind,
            constraints: constraints,
            url: url,
          ),
        ));
}

class $$ImageCellItemTableFilterComposer
    extends FilterComposer<_$CellDatabase, $ImageCellItemTable> {
  $$ImageCellItemTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get whiteboardId => $state.composableBuilder(
      column: $state.table.whiteboardId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get cellId => $state.composableBuilder(
      column: $state.table.cellId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get offsetDx => $state.composableBuilder(
      column: $state.table.offsetDx,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get offsetDy => $state.composableBuilder(
      column: $state.table.offsetDy,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get width => $state.composableBuilder(
      column: $state.table.width,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get height => $state.composableBuilder(
      column: $state.table.height,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get preferredHeight => $state.composableBuilder(
      column: $state.table.preferredHeight,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get layer => $state.composableBuilder(
      column: $state.table.layer,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get selected => $state.composableBuilder(
      column: $state.table.selected,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get color => $state.composableBuilder(
      column: $state.table.color,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get cardKind => $state.composableBuilder(
      column: $state.table.cardKind,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get constraints => $state.composableBuilder(
      column: $state.table.constraints,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get url => $state.composableBuilder(
      column: $state.table.url,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ImageCellItemTableOrderingComposer
    extends OrderingComposer<_$CellDatabase, $ImageCellItemTable> {
  $$ImageCellItemTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get whiteboardId => $state.composableBuilder(
      column: $state.table.whiteboardId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get cellId => $state.composableBuilder(
      column: $state.table.cellId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get offsetDx => $state.composableBuilder(
      column: $state.table.offsetDx,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get offsetDy => $state.composableBuilder(
      column: $state.table.offsetDy,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get width => $state.composableBuilder(
      column: $state.table.width,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get height => $state.composableBuilder(
      column: $state.table.height,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get preferredHeight => $state.composableBuilder(
      column: $state.table.preferredHeight,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get layer => $state.composableBuilder(
      column: $state.table.layer,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get selected => $state.composableBuilder(
      column: $state.table.selected,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get color => $state.composableBuilder(
      column: $state.table.color,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get cardKind => $state.composableBuilder(
      column: $state.table.cardKind,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get constraints => $state.composableBuilder(
      column: $state.table.constraints,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get url => $state.composableBuilder(
      column: $state.table.url,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$ArticleCellItemTableCreateCompanionBuilder = ArticleCellItemCompanion
    Function({
  Value<int> id,
  required String whiteboardId,
  required String cellId,
  required double offsetDx,
  required double offsetDy,
  required double width,
  Value<double?> height,
  Value<double?> preferredHeight,
  required int layer,
  required bool selected,
  required String color,
  required String cardKind,
  required bool constraints,
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
  Value<double> width,
  Value<double?> height,
  Value<double?> preferredHeight,
  Value<int> layer,
  Value<bool> selected,
  Value<String> color,
  Value<String> cardKind,
  Value<bool> constraints,
  Value<String> title,
  Value<String> content,
});

class $$ArticleCellItemTableTableManager extends RootTableManager<
    _$CellDatabase,
    $ArticleCellItemTable,
    ArticleCellItemData,
    $$ArticleCellItemTableFilterComposer,
    $$ArticleCellItemTableOrderingComposer,
    $$ArticleCellItemTableCreateCompanionBuilder,
    $$ArticleCellItemTableUpdateCompanionBuilder> {
  $$ArticleCellItemTableTableManager(
      _$CellDatabase db, $ArticleCellItemTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ArticleCellItemTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$ArticleCellItemTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> whiteboardId = const Value.absent(),
            Value<String> cellId = const Value.absent(),
            Value<double> offsetDx = const Value.absent(),
            Value<double> offsetDy = const Value.absent(),
            Value<double> width = const Value.absent(),
            Value<double?> height = const Value.absent(),
            Value<double?> preferredHeight = const Value.absent(),
            Value<int> layer = const Value.absent(),
            Value<bool> selected = const Value.absent(),
            Value<String> color = const Value.absent(),
            Value<String> cardKind = const Value.absent(),
            Value<bool> constraints = const Value.absent(),
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
            height: height,
            preferredHeight: preferredHeight,
            layer: layer,
            selected: selected,
            color: color,
            cardKind: cardKind,
            constraints: constraints,
            title: title,
            content: content,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String whiteboardId,
            required String cellId,
            required double offsetDx,
            required double offsetDy,
            required double width,
            Value<double?> height = const Value.absent(),
            Value<double?> preferredHeight = const Value.absent(),
            required int layer,
            required bool selected,
            required String color,
            required String cardKind,
            required bool constraints,
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
            height: height,
            preferredHeight: preferredHeight,
            layer: layer,
            selected: selected,
            color: color,
            cardKind: cardKind,
            constraints: constraints,
            title: title,
            content: content,
          ),
        ));
}

class $$ArticleCellItemTableFilterComposer
    extends FilterComposer<_$CellDatabase, $ArticleCellItemTable> {
  $$ArticleCellItemTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get whiteboardId => $state.composableBuilder(
      column: $state.table.whiteboardId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get cellId => $state.composableBuilder(
      column: $state.table.cellId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get offsetDx => $state.composableBuilder(
      column: $state.table.offsetDx,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get offsetDy => $state.composableBuilder(
      column: $state.table.offsetDy,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get width => $state.composableBuilder(
      column: $state.table.width,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get height => $state.composableBuilder(
      column: $state.table.height,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get preferredHeight => $state.composableBuilder(
      column: $state.table.preferredHeight,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get layer => $state.composableBuilder(
      column: $state.table.layer,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get selected => $state.composableBuilder(
      column: $state.table.selected,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get color => $state.composableBuilder(
      column: $state.table.color,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get cardKind => $state.composableBuilder(
      column: $state.table.cardKind,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get constraints => $state.composableBuilder(
      column: $state.table.constraints,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ArticleCellItemTableOrderingComposer
    extends OrderingComposer<_$CellDatabase, $ArticleCellItemTable> {
  $$ArticleCellItemTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get whiteboardId => $state.composableBuilder(
      column: $state.table.whiteboardId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get cellId => $state.composableBuilder(
      column: $state.table.cellId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get offsetDx => $state.composableBuilder(
      column: $state.table.offsetDx,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get offsetDy => $state.composableBuilder(
      column: $state.table.offsetDy,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get width => $state.composableBuilder(
      column: $state.table.width,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get height => $state.composableBuilder(
      column: $state.table.height,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get preferredHeight => $state.composableBuilder(
      column: $state.table.preferredHeight,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get layer => $state.composableBuilder(
      column: $state.table.layer,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get selected => $state.composableBuilder(
      column: $state.table.selected,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get color => $state.composableBuilder(
      column: $state.table.color,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get cardKind => $state.composableBuilder(
      column: $state.table.cardKind,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get constraints => $state.composableBuilder(
      column: $state.table.constraints,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

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
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cellDatabaseHash() => r'a19ee037692aa181a96753f27eaa4f22c474039f';

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

typedef CellDatabaseRef = ProviderRef<CellDatabase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
