// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edge.dart';

// ignore_for_file: type=lint
class $EdgeItemTable extends EdgeItem
    with TableInfo<$EdgeItemTable, EdgeItemData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EdgeItemTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _parentWhiteboardIdMeta =
      const VerificationMeta('parentWhiteboardId');
  @override
  late final GeneratedColumn<String> parentWhiteboardId =
      GeneratedColumn<String>('parent_whiteboard_id', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _edgeIdMeta = const VerificationMeta('edgeId');
  @override
  late final GeneratedColumn<String> edgeId = GeneratedColumn<String>(
      'edge_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _sourceMeta = const VerificationMeta('source');
  @override
  late final GeneratedColumn<String> source = GeneratedColumn<String>(
      'source', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _targetMeta = const VerificationMeta('target');
  @override
  late final GeneratedColumn<String> target = GeneratedColumn<String>(
      'target', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _layerMeta = const VerificationMeta('layer');
  @override
  late final GeneratedColumn<int> layer = GeneratedColumn<int>(
      'layer', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
      'color', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, parentWhiteboardId, edgeId, source, target, layer, label, color];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'edge_item';
  @override
  VerificationContext validateIntegrity(Insertable<EdgeItemData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('parent_whiteboard_id')) {
      context.handle(
          _parentWhiteboardIdMeta,
          parentWhiteboardId.isAcceptableOrUnknown(
              data['parent_whiteboard_id']!, _parentWhiteboardIdMeta));
    } else if (isInserting) {
      context.missing(_parentWhiteboardIdMeta);
    }
    if (data.containsKey('edge_id')) {
      context.handle(_edgeIdMeta,
          edgeId.isAcceptableOrUnknown(data['edge_id']!, _edgeIdMeta));
    } else if (isInserting) {
      context.missing(_edgeIdMeta);
    }
    if (data.containsKey('source')) {
      context.handle(_sourceMeta,
          source.isAcceptableOrUnknown(data['source']!, _sourceMeta));
    } else if (isInserting) {
      context.missing(_sourceMeta);
    }
    if (data.containsKey('target')) {
      context.handle(_targetMeta,
          target.isAcceptableOrUnknown(data['target']!, _targetMeta));
    } else if (isInserting) {
      context.missing(_targetMeta);
    }
    if (data.containsKey('layer')) {
      context.handle(
          _layerMeta, layer.isAcceptableOrUnknown(data['layer']!, _layerMeta));
    } else if (isInserting) {
      context.missing(_layerMeta);
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EdgeItemData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EdgeItemData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      parentWhiteboardId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}parent_whiteboard_id'])!,
      edgeId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}edge_id'])!,
      source: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}source'])!,
      target: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}target'])!,
      layer: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}layer'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      color: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}color']),
    );
  }

  @override
  $EdgeItemTable createAlias(String alias) {
    return $EdgeItemTable(attachedDatabase, alias);
  }
}

class EdgeItemData extends DataClass implements Insertable<EdgeItemData> {
  final int id;
  final String parentWhiteboardId;
  final String edgeId;
  final String source;
  final String target;
  final int layer;

  /// Decoration related
  final String? label;
  final String? color;
  const EdgeItemData(
      {required this.id,
      required this.parentWhiteboardId,
      required this.edgeId,
      required this.source,
      required this.target,
      required this.layer,
      this.label,
      this.color});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['parent_whiteboard_id'] = Variable<String>(parentWhiteboardId);
    map['edge_id'] = Variable<String>(edgeId);
    map['source'] = Variable<String>(source);
    map['target'] = Variable<String>(target);
    map['layer'] = Variable<int>(layer);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || color != null) {
      map['color'] = Variable<String>(color);
    }
    return map;
  }

  EdgeItemCompanion toCompanion(bool nullToAbsent) {
    return EdgeItemCompanion(
      id: Value(id),
      parentWhiteboardId: Value(parentWhiteboardId),
      edgeId: Value(edgeId),
      source: Value(source),
      target: Value(target),
      layer: Value(layer),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      color:
          color == null && nullToAbsent ? const Value.absent() : Value(color),
    );
  }

  factory EdgeItemData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EdgeItemData(
      id: serializer.fromJson<int>(json['id']),
      parentWhiteboardId:
          serializer.fromJson<String>(json['parentWhiteboardId']),
      edgeId: serializer.fromJson<String>(json['edgeId']),
      source: serializer.fromJson<String>(json['source']),
      target: serializer.fromJson<String>(json['target']),
      layer: serializer.fromJson<int>(json['layer']),
      label: serializer.fromJson<String?>(json['label']),
      color: serializer.fromJson<String?>(json['color']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'parentWhiteboardId': serializer.toJson<String>(parentWhiteboardId),
      'edgeId': serializer.toJson<String>(edgeId),
      'source': serializer.toJson<String>(source),
      'target': serializer.toJson<String>(target),
      'layer': serializer.toJson<int>(layer),
      'label': serializer.toJson<String?>(label),
      'color': serializer.toJson<String?>(color),
    };
  }

  EdgeItemData copyWith(
          {int? id,
          String? parentWhiteboardId,
          String? edgeId,
          String? source,
          String? target,
          int? layer,
          Value<String?> label = const Value.absent(),
          Value<String?> color = const Value.absent()}) =>
      EdgeItemData(
        id: id ?? this.id,
        parentWhiteboardId: parentWhiteboardId ?? this.parentWhiteboardId,
        edgeId: edgeId ?? this.edgeId,
        source: source ?? this.source,
        target: target ?? this.target,
        layer: layer ?? this.layer,
        label: label.present ? label.value : this.label,
        color: color.present ? color.value : this.color,
      );
  EdgeItemData copyWithCompanion(EdgeItemCompanion data) {
    return EdgeItemData(
      id: data.id.present ? data.id.value : this.id,
      parentWhiteboardId: data.parentWhiteboardId.present
          ? data.parentWhiteboardId.value
          : this.parentWhiteboardId,
      edgeId: data.edgeId.present ? data.edgeId.value : this.edgeId,
      source: data.source.present ? data.source.value : this.source,
      target: data.target.present ? data.target.value : this.target,
      layer: data.layer.present ? data.layer.value : this.layer,
      label: data.label.present ? data.label.value : this.label,
      color: data.color.present ? data.color.value : this.color,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EdgeItemData(')
          ..write('id: $id, ')
          ..write('parentWhiteboardId: $parentWhiteboardId, ')
          ..write('edgeId: $edgeId, ')
          ..write('source: $source, ')
          ..write('target: $target, ')
          ..write('layer: $layer, ')
          ..write('label: $label, ')
          ..write('color: $color')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, parentWhiteboardId, edgeId, source, target, layer, label, color);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EdgeItemData &&
          other.id == this.id &&
          other.parentWhiteboardId == this.parentWhiteboardId &&
          other.edgeId == this.edgeId &&
          other.source == this.source &&
          other.target == this.target &&
          other.layer == this.layer &&
          other.label == this.label &&
          other.color == this.color);
}

class EdgeItemCompanion extends UpdateCompanion<EdgeItemData> {
  final Value<int> id;
  final Value<String> parentWhiteboardId;
  final Value<String> edgeId;
  final Value<String> source;
  final Value<String> target;
  final Value<int> layer;
  final Value<String?> label;
  final Value<String?> color;
  const EdgeItemCompanion({
    this.id = const Value.absent(),
    this.parentWhiteboardId = const Value.absent(),
    this.edgeId = const Value.absent(),
    this.source = const Value.absent(),
    this.target = const Value.absent(),
    this.layer = const Value.absent(),
    this.label = const Value.absent(),
    this.color = const Value.absent(),
  });
  EdgeItemCompanion.insert({
    this.id = const Value.absent(),
    required String parentWhiteboardId,
    required String edgeId,
    required String source,
    required String target,
    required int layer,
    this.label = const Value.absent(),
    this.color = const Value.absent(),
  })  : parentWhiteboardId = Value(parentWhiteboardId),
        edgeId = Value(edgeId),
        source = Value(source),
        target = Value(target),
        layer = Value(layer);
  static Insertable<EdgeItemData> custom({
    Expression<int>? id,
    Expression<String>? parentWhiteboardId,
    Expression<String>? edgeId,
    Expression<String>? source,
    Expression<String>? target,
    Expression<int>? layer,
    Expression<String>? label,
    Expression<String>? color,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (parentWhiteboardId != null)
        'parent_whiteboard_id': parentWhiteboardId,
      if (edgeId != null) 'edge_id': edgeId,
      if (source != null) 'source': source,
      if (target != null) 'target': target,
      if (layer != null) 'layer': layer,
      if (label != null) 'label': label,
      if (color != null) 'color': color,
    });
  }

  EdgeItemCompanion copyWith(
      {Value<int>? id,
      Value<String>? parentWhiteboardId,
      Value<String>? edgeId,
      Value<String>? source,
      Value<String>? target,
      Value<int>? layer,
      Value<String?>? label,
      Value<String?>? color}) {
    return EdgeItemCompanion(
      id: id ?? this.id,
      parentWhiteboardId: parentWhiteboardId ?? this.parentWhiteboardId,
      edgeId: edgeId ?? this.edgeId,
      source: source ?? this.source,
      target: target ?? this.target,
      layer: layer ?? this.layer,
      label: label ?? this.label,
      color: color ?? this.color,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (parentWhiteboardId.present) {
      map['parent_whiteboard_id'] = Variable<String>(parentWhiteboardId.value);
    }
    if (edgeId.present) {
      map['edge_id'] = Variable<String>(edgeId.value);
    }
    if (source.present) {
      map['source'] = Variable<String>(source.value);
    }
    if (target.present) {
      map['target'] = Variable<String>(target.value);
    }
    if (layer.present) {
      map['layer'] = Variable<int>(layer.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EdgeItemCompanion(')
          ..write('id: $id, ')
          ..write('parentWhiteboardId: $parentWhiteboardId, ')
          ..write('edgeId: $edgeId, ')
          ..write('source: $source, ')
          ..write('target: $target, ')
          ..write('layer: $layer, ')
          ..write('label: $label, ')
          ..write('color: $color')
          ..write(')'))
        .toString();
  }
}

abstract class _$EdgeDatabase extends GeneratedDatabase {
  _$EdgeDatabase(QueryExecutor e) : super(e);
  $EdgeDatabaseManager get managers => $EdgeDatabaseManager(this);
  late final $EdgeItemTable edgeItem = $EdgeItemTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [edgeItem];
}

typedef $$EdgeItemTableCreateCompanionBuilder = EdgeItemCompanion Function({
  Value<int> id,
  required String parentWhiteboardId,
  required String edgeId,
  required String source,
  required String target,
  required int layer,
  Value<String?> label,
  Value<String?> color,
});
typedef $$EdgeItemTableUpdateCompanionBuilder = EdgeItemCompanion Function({
  Value<int> id,
  Value<String> parentWhiteboardId,
  Value<String> edgeId,
  Value<String> source,
  Value<String> target,
  Value<int> layer,
  Value<String?> label,
  Value<String?> color,
});

class $$EdgeItemTableFilterComposer
    extends Composer<_$EdgeDatabase, $EdgeItemTable> {
  $$EdgeItemTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get parentWhiteboardId => $composableBuilder(
      column: $table.parentWhiteboardId,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get edgeId => $composableBuilder(
      column: $table.edgeId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get source => $composableBuilder(
      column: $table.source, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get target => $composableBuilder(
      column: $table.target, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get layer => $composableBuilder(
      column: $table.layer, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get label => $composableBuilder(
      column: $table.label, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnFilters(column));
}

class $$EdgeItemTableOrderingComposer
    extends Composer<_$EdgeDatabase, $EdgeItemTable> {
  $$EdgeItemTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get parentWhiteboardId => $composableBuilder(
      column: $table.parentWhiteboardId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get edgeId => $composableBuilder(
      column: $table.edgeId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get source => $composableBuilder(
      column: $table.source, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get target => $composableBuilder(
      column: $table.target, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get layer => $composableBuilder(
      column: $table.layer, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get label => $composableBuilder(
      column: $table.label, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnOrderings(column));
}

class $$EdgeItemTableAnnotationComposer
    extends Composer<_$EdgeDatabase, $EdgeItemTable> {
  $$EdgeItemTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get parentWhiteboardId => $composableBuilder(
      column: $table.parentWhiteboardId, builder: (column) => column);

  GeneratedColumn<String> get edgeId =>
      $composableBuilder(column: $table.edgeId, builder: (column) => column);

  GeneratedColumn<String> get source =>
      $composableBuilder(column: $table.source, builder: (column) => column);

  GeneratedColumn<String> get target =>
      $composableBuilder(column: $table.target, builder: (column) => column);

  GeneratedColumn<int> get layer =>
      $composableBuilder(column: $table.layer, builder: (column) => column);

  GeneratedColumn<String> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);

  GeneratedColumn<String> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);
}

class $$EdgeItemTableTableManager extends RootTableManager<
    _$EdgeDatabase,
    $EdgeItemTable,
    EdgeItemData,
    $$EdgeItemTableFilterComposer,
    $$EdgeItemTableOrderingComposer,
    $$EdgeItemTableAnnotationComposer,
    $$EdgeItemTableCreateCompanionBuilder,
    $$EdgeItemTableUpdateCompanionBuilder,
    (
      EdgeItemData,
      BaseReferences<_$EdgeDatabase, $EdgeItemTable, EdgeItemData>
    ),
    EdgeItemData,
    PrefetchHooks Function()> {
  $$EdgeItemTableTableManager(_$EdgeDatabase db, $EdgeItemTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EdgeItemTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EdgeItemTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EdgeItemTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> parentWhiteboardId = const Value.absent(),
            Value<String> edgeId = const Value.absent(),
            Value<String> source = const Value.absent(),
            Value<String> target = const Value.absent(),
            Value<int> layer = const Value.absent(),
            Value<String?> label = const Value.absent(),
            Value<String?> color = const Value.absent(),
          }) =>
              EdgeItemCompanion(
            id: id,
            parentWhiteboardId: parentWhiteboardId,
            edgeId: edgeId,
            source: source,
            target: target,
            layer: layer,
            label: label,
            color: color,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String parentWhiteboardId,
            required String edgeId,
            required String source,
            required String target,
            required int layer,
            Value<String?> label = const Value.absent(),
            Value<String?> color = const Value.absent(),
          }) =>
              EdgeItemCompanion.insert(
            id: id,
            parentWhiteboardId: parentWhiteboardId,
            edgeId: edgeId,
            source: source,
            target: target,
            layer: layer,
            label: label,
            color: color,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$EdgeItemTableProcessedTableManager = ProcessedTableManager<
    _$EdgeDatabase,
    $EdgeItemTable,
    EdgeItemData,
    $$EdgeItemTableFilterComposer,
    $$EdgeItemTableOrderingComposer,
    $$EdgeItemTableAnnotationComposer,
    $$EdgeItemTableCreateCompanionBuilder,
    $$EdgeItemTableUpdateCompanionBuilder,
    (
      EdgeItemData,
      BaseReferences<_$EdgeDatabase, $EdgeItemTable, EdgeItemData>
    ),
    EdgeItemData,
    PrefetchHooks Function()>;

class $EdgeDatabaseManager {
  final _$EdgeDatabase _db;
  $EdgeDatabaseManager(this._db);
  $$EdgeItemTableTableManager get edgeItem =>
      $$EdgeItemTableTableManager(_db, _db.edgeItem);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$edgeDatabaseHash() => r'dc3cbce91f2ed59aa4e5eee5d9d4d113375358be';

/// See also [edgeDatabase].
@ProviderFor(edgeDatabase)
final edgeDatabaseProvider = Provider<EdgeDatabase>.internal(
  edgeDatabase,
  name: r'edgeDatabaseProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$edgeDatabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef EdgeDatabaseRef = ProviderRef<EdgeDatabase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
