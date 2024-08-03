// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_edge.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$deleteEdgeHash() => r'8303eb7c924bab34abf13a5fce9be92dc61f51c5';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [deleteEdge].
@ProviderFor(deleteEdge)
const deleteEdgeProvider = DeleteEdgeFamily();

/// See also [deleteEdge].
class DeleteEdgeFamily extends Family<AsyncValue<void>> {
  /// See also [deleteEdge].
  const DeleteEdgeFamily();

  /// See also [deleteEdge].
  DeleteEdgeProvider call({
    required EdgeId id,
  }) {
    return DeleteEdgeProvider(
      id: id,
    );
  }

  @override
  DeleteEdgeProvider getProviderOverride(
    covariant DeleteEdgeProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deleteEdgeProvider';
}

/// See also [deleteEdge].
class DeleteEdgeProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deleteEdge].
  DeleteEdgeProvider({
    required EdgeId id,
  }) : this._internal(
          (ref) => deleteEdge(
            ref as DeleteEdgeRef,
            id: id,
          ),
          from: deleteEdgeProvider,
          name: r'deleteEdgeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteEdgeHash,
          dependencies: DeleteEdgeFamily._dependencies,
          allTransitiveDependencies:
              DeleteEdgeFamily._allTransitiveDependencies,
          id: id,
        );

  DeleteEdgeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final EdgeId id;

  @override
  Override overrideWith(
    FutureOr<void> Function(DeleteEdgeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteEdgeProvider._internal(
        (ref) => create(ref as DeleteEdgeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _DeleteEdgeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteEdgeProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteEdgeRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `id` of this provider.
  EdgeId get id;
}

class _DeleteEdgeProviderElement extends AutoDisposeFutureProviderElement<void>
    with DeleteEdgeRef {
  _DeleteEdgeProviderElement(super.provider);

  @override
  EdgeId get id => (origin as DeleteEdgeProvider).id;
}

String _$deleteEdgesHash() => r'bba809a445a14f18bafc94e3908a9ab8df18b46c';

/// See also [deleteEdges].
@ProviderFor(deleteEdges)
const deleteEdgesProvider = DeleteEdgesFamily();

/// See also [deleteEdges].
class DeleteEdgesFamily extends Family<AsyncValue<void>> {
  /// See also [deleteEdges].
  const DeleteEdgesFamily();

  /// See also [deleteEdges].
  DeleteEdgesProvider call({
    required List<EdgeId> ids,
    bool notify = true,
  }) {
    return DeleteEdgesProvider(
      ids: ids,
      notify: notify,
    );
  }

  @override
  DeleteEdgesProvider getProviderOverride(
    covariant DeleteEdgesProvider provider,
  ) {
    return call(
      ids: provider.ids,
      notify: provider.notify,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deleteEdgesProvider';
}

/// See also [deleteEdges].
class DeleteEdgesProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deleteEdges].
  DeleteEdgesProvider({
    required List<EdgeId> ids,
    bool notify = true,
  }) : this._internal(
          (ref) => deleteEdges(
            ref as DeleteEdgesRef,
            ids: ids,
            notify: notify,
          ),
          from: deleteEdgesProvider,
          name: r'deleteEdgesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteEdgesHash,
          dependencies: DeleteEdgesFamily._dependencies,
          allTransitiveDependencies:
              DeleteEdgesFamily._allTransitiveDependencies,
          ids: ids,
          notify: notify,
        );

  DeleteEdgesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.ids,
    required this.notify,
  }) : super.internal();

  final List<EdgeId> ids;
  final bool notify;

  @override
  Override overrideWith(
    FutureOr<void> Function(DeleteEdgesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteEdgesProvider._internal(
        (ref) => create(ref as DeleteEdgesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        ids: ids,
        notify: notify,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _DeleteEdgesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteEdgesProvider &&
        other.ids == ids &&
        other.notify == notify;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, ids.hashCode);
    hash = _SystemHash.combine(hash, notify.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteEdgesRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `ids` of this provider.
  List<EdgeId> get ids;

  /// The parameter `notify` of this provider.
  bool get notify;
}

class _DeleteEdgesProviderElement extends AutoDisposeFutureProviderElement<void>
    with DeleteEdgesRef {
  _DeleteEdgesProviderElement(super.provider);

  @override
  List<EdgeId> get ids => (origin as DeleteEdgesProvider).ids;
  @override
  bool get notify => (origin as DeleteEdgesProvider).notify;
}

String _$deleteCellEdgeHash() => r'c77b95b8f6314e728624ccbfb6ea8bc87d13e0f3';

/// See also [deleteCellEdge].
@ProviderFor(deleteCellEdge)
const deleteCellEdgeProvider = DeleteCellEdgeFamily();

/// See also [deleteCellEdge].
class DeleteCellEdgeFamily extends Family<AsyncValue<void>> {
  /// See also [deleteCellEdge].
  const DeleteCellEdgeFamily();

  /// See also [deleteCellEdge].
  DeleteCellEdgeProvider call({
    required EdgeParentId parentId,
    required String cellId,
  }) {
    return DeleteCellEdgeProvider(
      parentId: parentId,
      cellId: cellId,
    );
  }

  @override
  DeleteCellEdgeProvider getProviderOverride(
    covariant DeleteCellEdgeProvider provider,
  ) {
    return call(
      parentId: provider.parentId,
      cellId: provider.cellId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deleteCellEdgeProvider';
}

/// See also [deleteCellEdge].
class DeleteCellEdgeProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deleteCellEdge].
  DeleteCellEdgeProvider({
    required EdgeParentId parentId,
    required String cellId,
  }) : this._internal(
          (ref) => deleteCellEdge(
            ref as DeleteCellEdgeRef,
            parentId: parentId,
            cellId: cellId,
          ),
          from: deleteCellEdgeProvider,
          name: r'deleteCellEdgeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteCellEdgeHash,
          dependencies: DeleteCellEdgeFamily._dependencies,
          allTransitiveDependencies:
              DeleteCellEdgeFamily._allTransitiveDependencies,
          parentId: parentId,
          cellId: cellId,
        );

  DeleteCellEdgeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.parentId,
    required this.cellId,
  }) : super.internal();

  final EdgeParentId parentId;
  final String cellId;

  @override
  Override overrideWith(
    FutureOr<void> Function(DeleteCellEdgeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteCellEdgeProvider._internal(
        (ref) => create(ref as DeleteCellEdgeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        parentId: parentId,
        cellId: cellId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _DeleteCellEdgeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteCellEdgeProvider &&
        other.parentId == parentId &&
        other.cellId == cellId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parentId.hashCode);
    hash = _SystemHash.combine(hash, cellId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteCellEdgeRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `parentId` of this provider.
  EdgeParentId get parentId;

  /// The parameter `cellId` of this provider.
  String get cellId;
}

class _DeleteCellEdgeProviderElement
    extends AutoDisposeFutureProviderElement<void> with DeleteCellEdgeRef {
  _DeleteCellEdgeProviderElement(super.provider);

  @override
  EdgeParentId get parentId => (origin as DeleteCellEdgeProvider).parentId;
  @override
  String get cellId => (origin as DeleteCellEdgeProvider).cellId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
