// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folder.dart';

// ignore_for_file: type=lint
class $FolderItemTable extends FolderItem
    with TableInfo<$FolderItemTable, FolderItemData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FolderItemTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _folderIdMeta =
      const VerificationMeta('folderId');
  @override
  late final GeneratedColumn<String> folderId = GeneratedColumn<String>(
      'folder_id', aliasedName, false,
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
      [id, parentFolderId, folderId, title, emoji];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'folder_item';
  @override
  VerificationContext validateIntegrity(Insertable<FolderItemData> instance,
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
    if (data.containsKey('folder_id')) {
      context.handle(_folderIdMeta,
          folderId.isAcceptableOrUnknown(data['folder_id']!, _folderIdMeta));
    } else if (isInserting) {
      context.missing(_folderIdMeta);
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
  FolderItemData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FolderItemData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      parentFolderId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}parent_folder_id']),
      folderId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}folder_id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      emoji: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}emoji'])!,
    );
  }

  @override
  $FolderItemTable createAlias(String alias) {
    return $FolderItemTable(attachedDatabase, alias);
  }
}

class FolderItemData extends DataClass implements Insertable<FolderItemData> {
  final int id;
  final String? parentFolderId;
  final String folderId;
  final String title;
  final String emoji;
  const FolderItemData(
      {required this.id,
      this.parentFolderId,
      required this.folderId,
      required this.title,
      required this.emoji});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || parentFolderId != null) {
      map['parent_folder_id'] = Variable<String>(parentFolderId);
    }
    map['folder_id'] = Variable<String>(folderId);
    map['title'] = Variable<String>(title);
    map['emoji'] = Variable<String>(emoji);
    return map;
  }

  FolderItemCompanion toCompanion(bool nullToAbsent) {
    return FolderItemCompanion(
      id: Value(id),
      parentFolderId: parentFolderId == null && nullToAbsent
          ? const Value.absent()
          : Value(parentFolderId),
      folderId: Value(folderId),
      title: Value(title),
      emoji: Value(emoji),
    );
  }

  factory FolderItemData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FolderItemData(
      id: serializer.fromJson<int>(json['id']),
      parentFolderId: serializer.fromJson<String?>(json['parentFolderId']),
      folderId: serializer.fromJson<String>(json['folderId']),
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
      'folderId': serializer.toJson<String>(folderId),
      'title': serializer.toJson<String>(title),
      'emoji': serializer.toJson<String>(emoji),
    };
  }

  FolderItemData copyWith(
          {int? id,
          Value<String?> parentFolderId = const Value.absent(),
          String? folderId,
          String? title,
          String? emoji}) =>
      FolderItemData(
        id: id ?? this.id,
        parentFolderId:
            parentFolderId.present ? parentFolderId.value : this.parentFolderId,
        folderId: folderId ?? this.folderId,
        title: title ?? this.title,
        emoji: emoji ?? this.emoji,
      );
  FolderItemData copyWithCompanion(FolderItemCompanion data) {
    return FolderItemData(
      id: data.id.present ? data.id.value : this.id,
      parentFolderId: data.parentFolderId.present
          ? data.parentFolderId.value
          : this.parentFolderId,
      folderId: data.folderId.present ? data.folderId.value : this.folderId,
      title: data.title.present ? data.title.value : this.title,
      emoji: data.emoji.present ? data.emoji.value : this.emoji,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FolderItemData(')
          ..write('id: $id, ')
          ..write('parentFolderId: $parentFolderId, ')
          ..write('folderId: $folderId, ')
          ..write('title: $title, ')
          ..write('emoji: $emoji')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, parentFolderId, folderId, title, emoji);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FolderItemData &&
          other.id == this.id &&
          other.parentFolderId == this.parentFolderId &&
          other.folderId == this.folderId &&
          other.title == this.title &&
          other.emoji == this.emoji);
}

class FolderItemCompanion extends UpdateCompanion<FolderItemData> {
  final Value<int> id;
  final Value<String?> parentFolderId;
  final Value<String> folderId;
  final Value<String> title;
  final Value<String> emoji;
  const FolderItemCompanion({
    this.id = const Value.absent(),
    this.parentFolderId = const Value.absent(),
    this.folderId = const Value.absent(),
    this.title = const Value.absent(),
    this.emoji = const Value.absent(),
  });
  FolderItemCompanion.insert({
    this.id = const Value.absent(),
    this.parentFolderId = const Value.absent(),
    required String folderId,
    required String title,
    required String emoji,
  })  : folderId = Value(folderId),
        title = Value(title),
        emoji = Value(emoji);
  static Insertable<FolderItemData> custom({
    Expression<int>? id,
    Expression<String>? parentFolderId,
    Expression<String>? folderId,
    Expression<String>? title,
    Expression<String>? emoji,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (parentFolderId != null) 'parent_folder_id': parentFolderId,
      if (folderId != null) 'folder_id': folderId,
      if (title != null) 'title': title,
      if (emoji != null) 'emoji': emoji,
    });
  }

  FolderItemCompanion copyWith(
      {Value<int>? id,
      Value<String?>? parentFolderId,
      Value<String>? folderId,
      Value<String>? title,
      Value<String>? emoji}) {
    return FolderItemCompanion(
      id: id ?? this.id,
      parentFolderId: parentFolderId ?? this.parentFolderId,
      folderId: folderId ?? this.folderId,
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
    if (folderId.present) {
      map['folder_id'] = Variable<String>(folderId.value);
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
    return (StringBuffer('FolderItemCompanion(')
          ..write('id: $id, ')
          ..write('parentFolderId: $parentFolderId, ')
          ..write('folderId: $folderId, ')
          ..write('title: $title, ')
          ..write('emoji: $emoji')
          ..write(')'))
        .toString();
  }
}

abstract class _$FolderDatabase extends GeneratedDatabase {
  _$FolderDatabase(QueryExecutor e) : super(e);
  $FolderDatabaseManager get managers => $FolderDatabaseManager(this);
  late final $FolderItemTable folderItem = $FolderItemTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [folderItem];
}

typedef $$FolderItemTableCreateCompanionBuilder = FolderItemCompanion Function({
  Value<int> id,
  Value<String?> parentFolderId,
  required String folderId,
  required String title,
  required String emoji,
});
typedef $$FolderItemTableUpdateCompanionBuilder = FolderItemCompanion Function({
  Value<int> id,
  Value<String?> parentFolderId,
  Value<String> folderId,
  Value<String> title,
  Value<String> emoji,
});

class $$FolderItemTableFilterComposer
    extends FilterComposer<_$FolderDatabase, $FolderItemTable> {
  $$FolderItemTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get parentFolderId => $state.composableBuilder(
      column: $state.table.parentFolderId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get folderId => $state.composableBuilder(
      column: $state.table.folderId,
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

class $$FolderItemTableOrderingComposer
    extends OrderingComposer<_$FolderDatabase, $FolderItemTable> {
  $$FolderItemTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get parentFolderId => $state.composableBuilder(
      column: $state.table.parentFolderId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get folderId => $state.composableBuilder(
      column: $state.table.folderId,
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

class $$FolderItemTableTableManager extends RootTableManager<
    _$FolderDatabase,
    $FolderItemTable,
    FolderItemData,
    $$FolderItemTableFilterComposer,
    $$FolderItemTableOrderingComposer,
    $$FolderItemTableCreateCompanionBuilder,
    $$FolderItemTableUpdateCompanionBuilder,
    (
      FolderItemData,
      BaseReferences<_$FolderDatabase, $FolderItemTable, FolderItemData>
    ),
    FolderItemData,
    PrefetchHooks Function()> {
  $$FolderItemTableTableManager(_$FolderDatabase db, $FolderItemTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$FolderItemTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$FolderItemTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> parentFolderId = const Value.absent(),
            Value<String> folderId = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> emoji = const Value.absent(),
          }) =>
              FolderItemCompanion(
            id: id,
            parentFolderId: parentFolderId,
            folderId: folderId,
            title: title,
            emoji: emoji,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> parentFolderId = const Value.absent(),
            required String folderId,
            required String title,
            required String emoji,
          }) =>
              FolderItemCompanion.insert(
            id: id,
            parentFolderId: parentFolderId,
            folderId: folderId,
            title: title,
            emoji: emoji,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$FolderItemTableProcessedTableManager = ProcessedTableManager<
    _$FolderDatabase,
    $FolderItemTable,
    FolderItemData,
    $$FolderItemTableFilterComposer,
    $$FolderItemTableOrderingComposer,
    $$FolderItemTableCreateCompanionBuilder,
    $$FolderItemTableUpdateCompanionBuilder,
    (
      FolderItemData,
      BaseReferences<_$FolderDatabase, $FolderItemTable, FolderItemData>
    ),
    FolderItemData,
    PrefetchHooks Function()>;

class $FolderDatabaseManager {
  final _$FolderDatabase _db;
  $FolderDatabaseManager(this._db);
  $$FolderItemTableTableManager get folderItem =>
      $$FolderItemTableTableManager(_db, _db.folderItem);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$folderDatabaseHash() => r'babc305b1628b29d9a2e72e96a1cd757d6bb73fa';

/// See also [folderDatabase].
@ProviderFor(folderDatabase)
final folderDatabaseProvider = Provider<FolderDatabase>.internal(
  folderDatabase,
  name: r'folderDatabaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$folderDatabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FolderDatabaseRef = ProviderRef<FolderDatabase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
