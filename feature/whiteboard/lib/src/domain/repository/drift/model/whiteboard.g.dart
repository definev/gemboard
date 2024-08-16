// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'whiteboard.dart';

// ignore_for_file: type=lint
class $WhiteboardItemTable extends WhiteboardItem
    with TableInfo<$WhiteboardItemTable, WhiteboardItemData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WhiteboardItemTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _parentFolderIdMeta =
      const VerificationMeta('parentFolderId');
  @override
  late final GeneratedColumn<String> parentFolderId = GeneratedColumn<String>(
      'parent_folder_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _whiteboardIdMeta =
      const VerificationMeta('whiteboardId');
  @override
  late final GeneratedColumn<String> whiteboardId = GeneratedColumn<String>(
      'whiteboard_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _emojiMeta = const VerificationMeta('emoji');
  @override
  late final GeneratedColumn<String> emoji = GeneratedColumn<String>(
      'emoji', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, parentFolderId, whiteboardId, title, emoji];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'whiteboard_item';
  @override
  VerificationContext validateIntegrity(Insertable<WhiteboardItemData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('parent_folder_id')) {
      context.handle(
          _parentFolderIdMeta,
          parentFolderId.isAcceptableOrUnknown(
              data['parent_folder_id']!, _parentFolderIdMeta));
    }
    if (data.containsKey('whiteboard_id')) {
      context.handle(
          _whiteboardIdMeta,
          whiteboardId.isAcceptableOrUnknown(
              data['whiteboard_id']!, _whiteboardIdMeta));
    } else if (isInserting) {
      context.missing(_whiteboardIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('emoji')) {
      context.handle(
          _emojiMeta, emoji.isAcceptableOrUnknown(data['emoji']!, _emojiMeta));
    } else if (isInserting) {
      context.missing(_emojiMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WhiteboardItemData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WhiteboardItemData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      parentFolderId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}parent_folder_id']),
      whiteboardId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}whiteboard_id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      emoji: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}emoji'])!,
    );
  }

  @override
  $WhiteboardItemTable createAlias(String alias) {
    return $WhiteboardItemTable(attachedDatabase, alias);
  }
}

class WhiteboardItemData extends DataClass
    implements Insertable<WhiteboardItemData> {
  final int id;
  final String? parentFolderId;
  final String whiteboardId;
  final String title;
  final String emoji;
  const WhiteboardItemData(
      {required this.id,
      this.parentFolderId,
      required this.whiteboardId,
      required this.title,
      required this.emoji});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || parentFolderId != null) {
      map['parent_folder_id'] = Variable<String>(parentFolderId);
    }
    map['whiteboard_id'] = Variable<String>(whiteboardId);
    map['title'] = Variable<String>(title);
    map['emoji'] = Variable<String>(emoji);
    return map;
  }

  WhiteboardItemCompanion toCompanion(bool nullToAbsent) {
    return WhiteboardItemCompanion(
      id: Value(id),
      parentFolderId: parentFolderId == null && nullToAbsent
          ? const Value.absent()
          : Value(parentFolderId),
      whiteboardId: Value(whiteboardId),
      title: Value(title),
      emoji: Value(emoji),
    );
  }

  factory WhiteboardItemData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WhiteboardItemData(
      id: serializer.fromJson<int>(json['id']),
      parentFolderId: serializer.fromJson<String?>(json['parentFolderId']),
      whiteboardId: serializer.fromJson<String>(json['whiteboardId']),
      title: serializer.fromJson<String>(json['title']),
      emoji: serializer.fromJson<String>(json['emoji']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'parentFolderId': serializer.toJson<String?>(parentFolderId),
      'whiteboardId': serializer.toJson<String>(whiteboardId),
      'title': serializer.toJson<String>(title),
      'emoji': serializer.toJson<String>(emoji),
    };
  }

  WhiteboardItemData copyWith(
          {int? id,
          Value<String?> parentFolderId = const Value.absent(),
          String? whiteboardId,
          String? title,
          String? emoji}) =>
      WhiteboardItemData(
        id: id ?? this.id,
        parentFolderId:
            parentFolderId.present ? parentFolderId.value : this.parentFolderId,
        whiteboardId: whiteboardId ?? this.whiteboardId,
        title: title ?? this.title,
        emoji: emoji ?? this.emoji,
      );
  WhiteboardItemData copyWithCompanion(WhiteboardItemCompanion data) {
    return WhiteboardItemData(
      id: data.id.present ? data.id.value : this.id,
      parentFolderId: data.parentFolderId.present
          ? data.parentFolderId.value
          : this.parentFolderId,
      whiteboardId: data.whiteboardId.present
          ? data.whiteboardId.value
          : this.whiteboardId,
      title: data.title.present ? data.title.value : this.title,
      emoji: data.emoji.present ? data.emoji.value : this.emoji,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WhiteboardItemData(')
          ..write('id: $id, ')
          ..write('parentFolderId: $parentFolderId, ')
          ..write('whiteboardId: $whiteboardId, ')
          ..write('title: $title, ')
          ..write('emoji: $emoji')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, parentFolderId, whiteboardId, title, emoji);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WhiteboardItemData &&
          other.id == this.id &&
          other.parentFolderId == this.parentFolderId &&
          other.whiteboardId == this.whiteboardId &&
          other.title == this.title &&
          other.emoji == this.emoji);
}

class WhiteboardItemCompanion extends UpdateCompanion<WhiteboardItemData> {
  final Value<int> id;
  final Value<String?> parentFolderId;
  final Value<String> whiteboardId;
  final Value<String> title;
  final Value<String> emoji;
  const WhiteboardItemCompanion({
    this.id = const Value.absent(),
    this.parentFolderId = const Value.absent(),
    this.whiteboardId = const Value.absent(),
    this.title = const Value.absent(),
    this.emoji = const Value.absent(),
  });
  WhiteboardItemCompanion.insert({
    this.id = const Value.absent(),
    this.parentFolderId = const Value.absent(),
    required String whiteboardId,
    required String title,
    required String emoji,
  })  : whiteboardId = Value(whiteboardId),
        title = Value(title),
        emoji = Value(emoji);
  static Insertable<WhiteboardItemData> custom({
    Expression<int>? id,
    Expression<String>? parentFolderId,
    Expression<String>? whiteboardId,
    Expression<String>? title,
    Expression<String>? emoji,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (parentFolderId != null) 'parent_folder_id': parentFolderId,
      if (whiteboardId != null) 'whiteboard_id': whiteboardId,
      if (title != null) 'title': title,
      if (emoji != null) 'emoji': emoji,
    });
  }

  WhiteboardItemCompanion copyWith(
      {Value<int>? id,
      Value<String?>? parentFolderId,
      Value<String>? whiteboardId,
      Value<String>? title,
      Value<String>? emoji}) {
    return WhiteboardItemCompanion(
      id: id ?? this.id,
      parentFolderId: parentFolderId ?? this.parentFolderId,
      whiteboardId: whiteboardId ?? this.whiteboardId,
      title: title ?? this.title,
      emoji: emoji ?? this.emoji,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (parentFolderId.present) {
      map['parent_folder_id'] = Variable<String>(parentFolderId.value);
    }
    if (whiteboardId.present) {
      map['whiteboard_id'] = Variable<String>(whiteboardId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (emoji.present) {
      map['emoji'] = Variable<String>(emoji.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WhiteboardItemCompanion(')
          ..write('id: $id, ')
          ..write('parentFolderId: $parentFolderId, ')
          ..write('whiteboardId: $whiteboardId, ')
          ..write('title: $title, ')
          ..write('emoji: $emoji')
          ..write(')'))
        .toString();
  }
}

class $WhiteboardPositionItemTable extends WhiteboardPositionItem
    with TableInfo<$WhiteboardPositionItemTable, WhiteboardPositionItemData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WhiteboardPositionItemTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _offsetDxMeta =
      const VerificationMeta('offsetDx');
  @override
  late final GeneratedColumn<double> offsetDx = GeneratedColumn<double>(
      'offset_dx', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: Constant(0.0));
  static const VerificationMeta _offsetDyMeta =
      const VerificationMeta('offsetDy');
  @override
  late final GeneratedColumn<double> offsetDy = GeneratedColumn<double>(
      'offset_dy', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: Constant(0.0));
  static const VerificationMeta _scaleMeta = const VerificationMeta('scale');
  @override
  late final GeneratedColumn<double> scale = GeneratedColumn<double>(
      'scale', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: Constant(WhiteboardPosition.defaultScaleFactor));
  @override
  List<GeneratedColumn> get $columns =>
      [id, whiteboardId, offsetDx, offsetDy, scale];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'whiteboard_position_item';
  @override
  VerificationContext validateIntegrity(
      Insertable<WhiteboardPositionItemData> instance,
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
    if (data.containsKey('offset_dx')) {
      context.handle(_offsetDxMeta,
          offsetDx.isAcceptableOrUnknown(data['offset_dx']!, _offsetDxMeta));
    }
    if (data.containsKey('offset_dy')) {
      context.handle(_offsetDyMeta,
          offsetDy.isAcceptableOrUnknown(data['offset_dy']!, _offsetDyMeta));
    }
    if (data.containsKey('scale')) {
      context.handle(
          _scaleMeta, scale.isAcceptableOrUnknown(data['scale']!, _scaleMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WhiteboardPositionItemData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WhiteboardPositionItemData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      whiteboardId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}whiteboard_id'])!,
      offsetDx: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}offset_dx'])!,
      offsetDy: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}offset_dy'])!,
      scale: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}scale'])!,
    );
  }

  @override
  $WhiteboardPositionItemTable createAlias(String alias) {
    return $WhiteboardPositionItemTable(attachedDatabase, alias);
  }
}

class WhiteboardPositionItemData extends DataClass
    implements Insertable<WhiteboardPositionItemData> {
  final int id;
  final String whiteboardId;
  final double offsetDx;
  final double offsetDy;
  final double scale;
  const WhiteboardPositionItemData(
      {required this.id,
      required this.whiteboardId,
      required this.offsetDx,
      required this.offsetDy,
      required this.scale});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['whiteboard_id'] = Variable<String>(whiteboardId);
    map['offset_dx'] = Variable<double>(offsetDx);
    map['offset_dy'] = Variable<double>(offsetDy);
    map['scale'] = Variable<double>(scale);
    return map;
  }

  WhiteboardPositionItemCompanion toCompanion(bool nullToAbsent) {
    return WhiteboardPositionItemCompanion(
      id: Value(id),
      whiteboardId: Value(whiteboardId),
      offsetDx: Value(offsetDx),
      offsetDy: Value(offsetDy),
      scale: Value(scale),
    );
  }

  factory WhiteboardPositionItemData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WhiteboardPositionItemData(
      id: serializer.fromJson<int>(json['id']),
      whiteboardId: serializer.fromJson<String>(json['whiteboardId']),
      offsetDx: serializer.fromJson<double>(json['offsetDx']),
      offsetDy: serializer.fromJson<double>(json['offsetDy']),
      scale: serializer.fromJson<double>(json['scale']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'whiteboardId': serializer.toJson<String>(whiteboardId),
      'offsetDx': serializer.toJson<double>(offsetDx),
      'offsetDy': serializer.toJson<double>(offsetDy),
      'scale': serializer.toJson<double>(scale),
    };
  }

  WhiteboardPositionItemData copyWith(
          {int? id,
          String? whiteboardId,
          double? offsetDx,
          double? offsetDy,
          double? scale}) =>
      WhiteboardPositionItemData(
        id: id ?? this.id,
        whiteboardId: whiteboardId ?? this.whiteboardId,
        offsetDx: offsetDx ?? this.offsetDx,
        offsetDy: offsetDy ?? this.offsetDy,
        scale: scale ?? this.scale,
      );
  WhiteboardPositionItemData copyWithCompanion(
      WhiteboardPositionItemCompanion data) {
    return WhiteboardPositionItemData(
      id: data.id.present ? data.id.value : this.id,
      whiteboardId: data.whiteboardId.present
          ? data.whiteboardId.value
          : this.whiteboardId,
      offsetDx: data.offsetDx.present ? data.offsetDx.value : this.offsetDx,
      offsetDy: data.offsetDy.present ? data.offsetDy.value : this.offsetDy,
      scale: data.scale.present ? data.scale.value : this.scale,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WhiteboardPositionItemData(')
          ..write('id: $id, ')
          ..write('whiteboardId: $whiteboardId, ')
          ..write('offsetDx: $offsetDx, ')
          ..write('offsetDy: $offsetDy, ')
          ..write('scale: $scale')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, whiteboardId, offsetDx, offsetDy, scale);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WhiteboardPositionItemData &&
          other.id == this.id &&
          other.whiteboardId == this.whiteboardId &&
          other.offsetDx == this.offsetDx &&
          other.offsetDy == this.offsetDy &&
          other.scale == this.scale);
}

class WhiteboardPositionItemCompanion
    extends UpdateCompanion<WhiteboardPositionItemData> {
  final Value<int> id;
  final Value<String> whiteboardId;
  final Value<double> offsetDx;
  final Value<double> offsetDy;
  final Value<double> scale;
  const WhiteboardPositionItemCompanion({
    this.id = const Value.absent(),
    this.whiteboardId = const Value.absent(),
    this.offsetDx = const Value.absent(),
    this.offsetDy = const Value.absent(),
    this.scale = const Value.absent(),
  });
  WhiteboardPositionItemCompanion.insert({
    this.id = const Value.absent(),
    required String whiteboardId,
    this.offsetDx = const Value.absent(),
    this.offsetDy = const Value.absent(),
    this.scale = const Value.absent(),
  }) : whiteboardId = Value(whiteboardId);
  static Insertable<WhiteboardPositionItemData> custom({
    Expression<int>? id,
    Expression<String>? whiteboardId,
    Expression<double>? offsetDx,
    Expression<double>? offsetDy,
    Expression<double>? scale,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (whiteboardId != null) 'whiteboard_id': whiteboardId,
      if (offsetDx != null) 'offset_dx': offsetDx,
      if (offsetDy != null) 'offset_dy': offsetDy,
      if (scale != null) 'scale': scale,
    });
  }

  WhiteboardPositionItemCompanion copyWith(
      {Value<int>? id,
      Value<String>? whiteboardId,
      Value<double>? offsetDx,
      Value<double>? offsetDy,
      Value<double>? scale}) {
    return WhiteboardPositionItemCompanion(
      id: id ?? this.id,
      whiteboardId: whiteboardId ?? this.whiteboardId,
      offsetDx: offsetDx ?? this.offsetDx,
      offsetDy: offsetDy ?? this.offsetDy,
      scale: scale ?? this.scale,
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
    if (offsetDx.present) {
      map['offset_dx'] = Variable<double>(offsetDx.value);
    }
    if (offsetDy.present) {
      map['offset_dy'] = Variable<double>(offsetDy.value);
    }
    if (scale.present) {
      map['scale'] = Variable<double>(scale.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WhiteboardPositionItemCompanion(')
          ..write('id: $id, ')
          ..write('whiteboardId: $whiteboardId, ')
          ..write('offsetDx: $offsetDx, ')
          ..write('offsetDy: $offsetDy, ')
          ..write('scale: $scale')
          ..write(')'))
        .toString();
  }
}

abstract class _$WhiteboardDatabase extends GeneratedDatabase {
  _$WhiteboardDatabase(QueryExecutor e) : super(e);
  $WhiteboardDatabaseManager get managers => $WhiteboardDatabaseManager(this);
  late final $WhiteboardItemTable whiteboardItem = $WhiteboardItemTable(this);
  late final $WhiteboardPositionItemTable whiteboardPositionItem =
      $WhiteboardPositionItemTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [whiteboardItem, whiteboardPositionItem];
}

typedef $$WhiteboardItemTableCreateCompanionBuilder = WhiteboardItemCompanion
    Function({
  Value<int> id,
  Value<String?> parentFolderId,
  required String whiteboardId,
  required String title,
  required String emoji,
});
typedef $$WhiteboardItemTableUpdateCompanionBuilder = WhiteboardItemCompanion
    Function({
  Value<int> id,
  Value<String?> parentFolderId,
  Value<String> whiteboardId,
  Value<String> title,
  Value<String> emoji,
});

class $$WhiteboardItemTableFilterComposer
    extends FilterComposer<_$WhiteboardDatabase, $WhiteboardItemTable> {
  $$WhiteboardItemTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get parentFolderId => $state.composableBuilder(
      column: $state.table.parentFolderId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get whiteboardId => $state.composableBuilder(
      column: $state.table.whiteboardId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get emoji => $state.composableBuilder(
      column: $state.table.emoji,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$WhiteboardItemTableOrderingComposer
    extends OrderingComposer<_$WhiteboardDatabase, $WhiteboardItemTable> {
  $$WhiteboardItemTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get parentFolderId => $state.composableBuilder(
      column: $state.table.parentFolderId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get whiteboardId => $state.composableBuilder(
      column: $state.table.whiteboardId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get emoji => $state.composableBuilder(
      column: $state.table.emoji,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$WhiteboardItemTableTableManager extends RootTableManager<
    _$WhiteboardDatabase,
    $WhiteboardItemTable,
    WhiteboardItemData,
    $$WhiteboardItemTableFilterComposer,
    $$WhiteboardItemTableOrderingComposer,
    $$WhiteboardItemTableCreateCompanionBuilder,
    $$WhiteboardItemTableUpdateCompanionBuilder,
    (
      WhiteboardItemData,
      BaseReferences<_$WhiteboardDatabase, $WhiteboardItemTable,
          WhiteboardItemData>
    ),
    WhiteboardItemData,
    PrefetchHooks Function()> {
  $$WhiteboardItemTableTableManager(
      _$WhiteboardDatabase db, $WhiteboardItemTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$WhiteboardItemTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$WhiteboardItemTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> parentFolderId = const Value.absent(),
            Value<String> whiteboardId = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> emoji = const Value.absent(),
          }) =>
              WhiteboardItemCompanion(
            id: id,
            parentFolderId: parentFolderId,
            whiteboardId: whiteboardId,
            title: title,
            emoji: emoji,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> parentFolderId = const Value.absent(),
            required String whiteboardId,
            required String title,
            required String emoji,
          }) =>
              WhiteboardItemCompanion.insert(
            id: id,
            parentFolderId: parentFolderId,
            whiteboardId: whiteboardId,
            title: title,
            emoji: emoji,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$WhiteboardItemTableProcessedTableManager = ProcessedTableManager<
    _$WhiteboardDatabase,
    $WhiteboardItemTable,
    WhiteboardItemData,
    $$WhiteboardItemTableFilterComposer,
    $$WhiteboardItemTableOrderingComposer,
    $$WhiteboardItemTableCreateCompanionBuilder,
    $$WhiteboardItemTableUpdateCompanionBuilder,
    (
      WhiteboardItemData,
      BaseReferences<_$WhiteboardDatabase, $WhiteboardItemTable,
          WhiteboardItemData>
    ),
    WhiteboardItemData,
    PrefetchHooks Function()>;
typedef $$WhiteboardPositionItemTableCreateCompanionBuilder
    = WhiteboardPositionItemCompanion Function({
  Value<int> id,
  required String whiteboardId,
  Value<double> offsetDx,
  Value<double> offsetDy,
  Value<double> scale,
});
typedef $$WhiteboardPositionItemTableUpdateCompanionBuilder
    = WhiteboardPositionItemCompanion Function({
  Value<int> id,
  Value<String> whiteboardId,
  Value<double> offsetDx,
  Value<double> offsetDy,
  Value<double> scale,
});

class $$WhiteboardPositionItemTableFilterComposer
    extends FilterComposer<_$WhiteboardDatabase, $WhiteboardPositionItemTable> {
  $$WhiteboardPositionItemTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get whiteboardId => $state.composableBuilder(
      column: $state.table.whiteboardId,
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

  ColumnFilters<double> get scale => $state.composableBuilder(
      column: $state.table.scale,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$WhiteboardPositionItemTableOrderingComposer extends OrderingComposer<
    _$WhiteboardDatabase, $WhiteboardPositionItemTable> {
  $$WhiteboardPositionItemTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get whiteboardId => $state.composableBuilder(
      column: $state.table.whiteboardId,
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

  ColumnOrderings<double> get scale => $state.composableBuilder(
      column: $state.table.scale,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$WhiteboardPositionItemTableTableManager extends RootTableManager<
    _$WhiteboardDatabase,
    $WhiteboardPositionItemTable,
    WhiteboardPositionItemData,
    $$WhiteboardPositionItemTableFilterComposer,
    $$WhiteboardPositionItemTableOrderingComposer,
    $$WhiteboardPositionItemTableCreateCompanionBuilder,
    $$WhiteboardPositionItemTableUpdateCompanionBuilder,
    (
      WhiteboardPositionItemData,
      BaseReferences<_$WhiteboardDatabase, $WhiteboardPositionItemTable,
          WhiteboardPositionItemData>
    ),
    WhiteboardPositionItemData,
    PrefetchHooks Function()> {
  $$WhiteboardPositionItemTableTableManager(
      _$WhiteboardDatabase db, $WhiteboardPositionItemTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$WhiteboardPositionItemTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$WhiteboardPositionItemTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> whiteboardId = const Value.absent(),
            Value<double> offsetDx = const Value.absent(),
            Value<double> offsetDy = const Value.absent(),
            Value<double> scale = const Value.absent(),
          }) =>
              WhiteboardPositionItemCompanion(
            id: id,
            whiteboardId: whiteboardId,
            offsetDx: offsetDx,
            offsetDy: offsetDy,
            scale: scale,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String whiteboardId,
            Value<double> offsetDx = const Value.absent(),
            Value<double> offsetDy = const Value.absent(),
            Value<double> scale = const Value.absent(),
          }) =>
              WhiteboardPositionItemCompanion.insert(
            id: id,
            whiteboardId: whiteboardId,
            offsetDx: offsetDx,
            offsetDy: offsetDy,
            scale: scale,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$WhiteboardPositionItemTableProcessedTableManager
    = ProcessedTableManager<
        _$WhiteboardDatabase,
        $WhiteboardPositionItemTable,
        WhiteboardPositionItemData,
        $$WhiteboardPositionItemTableFilterComposer,
        $$WhiteboardPositionItemTableOrderingComposer,
        $$WhiteboardPositionItemTableCreateCompanionBuilder,
        $$WhiteboardPositionItemTableUpdateCompanionBuilder,
        (
          WhiteboardPositionItemData,
          BaseReferences<_$WhiteboardDatabase, $WhiteboardPositionItemTable,
              WhiteboardPositionItemData>
        ),
        WhiteboardPositionItemData,
        PrefetchHooks Function()>;

class $WhiteboardDatabaseManager {
  final _$WhiteboardDatabase _db;
  $WhiteboardDatabaseManager(this._db);
  $$WhiteboardItemTableTableManager get whiteboardItem =>
      $$WhiteboardItemTableTableManager(_db, _db.whiteboardItem);
  $$WhiteboardPositionItemTableTableManager get whiteboardPositionItem =>
      $$WhiteboardPositionItemTableTableManager(
          _db, _db.whiteboardPositionItem);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$whiteboardDatabaseHash() =>
    r'c26dc06b0bc392756dfd4816ec0283a602fa1305';

/// See also [whiteboardDatabase].
@ProviderFor(whiteboardDatabase)
final whiteboardDatabaseProvider = Provider<WhiteboardDatabase>.internal(
  whiteboardDatabase,
  name: r'whiteboardDatabaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$whiteboardDatabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef WhiteboardDatabaseRef = ProviderRef<WhiteboardDatabase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
