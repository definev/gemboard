// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_cell.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$deleteCellHash() => r'29c977cd3ae2bb55f55bd77a0a24903f4abd7796';

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

/// See also [deleteCell].
@ProviderFor(deleteCell)
const deleteCellProvider = DeleteCellFamily();

/// See also [deleteCell].
class DeleteCellFamily extends Family<AsyncValue<void>> {
  /// See also [deleteCell].
  const DeleteCellFamily();

  /// See also [deleteCell].
  DeleteCellProvider call({
    required CellId id,
  }) {
    return DeleteCellProvider(
      id: id,
    );
  }

  @override
  DeleteCellProvider getProviderOverride(
    covariant DeleteCellProvider provider,
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
  String? get name => r'deleteCellProvider';
}

/// See also [deleteCell].
class DeleteCellProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deleteCell].
  DeleteCellProvider({
    required CellId id,
  }) : this._internal(
          (ref) => deleteCell(
            ref as DeleteCellRef,
            id: id,
          ),
          from: deleteCellProvider,
          name: r'deleteCellProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteCellHash,
          dependencies: DeleteCellFamily._dependencies,
          allTransitiveDependencies:
              DeleteCellFamily._allTransitiveDependencies,
          id: id,
        );

  DeleteCellProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final CellId id;

  @override
  Override overrideWith(
    FutureOr<void> Function(DeleteCellRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteCellProvider._internal(
        (ref) => create(ref as DeleteCellRef),
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
    return _DeleteCellProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteCellProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteCellRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `id` of this provider.
  CellId get id;
}

class _DeleteCellProviderElement extends AutoDisposeFutureProviderElement<void>
    with DeleteCellRef {
  _DeleteCellProviderElement(super.provider);

  @override
  CellId get id => (origin as DeleteCellProvider).id;
}

String _$deleteCellsHash() => r'9a8855d4d3dbf6102561c544ca610f5d0a05a6dd';

/// See also [deleteCells].
@ProviderFor(deleteCells)
const deleteCellsProvider = DeleteCellsFamily();

/// See also [deleteCells].
class DeleteCellsFamily extends Family<AsyncValue<void>> {
  /// See also [deleteCells].
  const DeleteCellsFamily();

  /// See also [deleteCells].
  DeleteCellsProvider call({
    required List<CellId> ids,
  }) {
    return DeleteCellsProvider(
      ids: ids,
    );
  }

  @override
  DeleteCellsProvider getProviderOverride(
    covariant DeleteCellsProvider provider,
  ) {
    return call(
      ids: provider.ids,
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
  String? get name => r'deleteCellsProvider';
}

/// See also [deleteCells].
class DeleteCellsProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deleteCells].
  DeleteCellsProvider({
    required List<CellId> ids,
  }) : this._internal(
          (ref) => deleteCells(
            ref as DeleteCellsRef,
            ids: ids,
          ),
          from: deleteCellsProvider,
          name: r'deleteCellsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteCellsHash,
          dependencies: DeleteCellsFamily._dependencies,
          allTransitiveDependencies:
              DeleteCellsFamily._allTransitiveDependencies,
          ids: ids,
        );

  DeleteCellsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.ids,
  }) : super.internal();

  final List<CellId> ids;

  @override
  Override overrideWith(
    FutureOr<void> Function(DeleteCellsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteCellsProvider._internal(
        (ref) => create(ref as DeleteCellsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        ids: ids,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _DeleteCellsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteCellsProvider && other.ids == ids;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, ids.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteCellsRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `ids` of this provider.
  List<CellId> get ids;
}

class _DeleteCellsProviderElement extends AutoDisposeFutureProviderElement<void>
    with DeleteCellsRef {
  _DeleteCellsProviderElement(super.provider);

  @override
  List<CellId> get ids => (origin as DeleteCellsProvider).ids;
}

String _$deleteSelectedCellHash() =>
    r'a4fe69647cd39e51f69879c0119fca5307637521';

/// See also [deleteSelectedCell].
@ProviderFor(deleteSelectedCell)
const deleteSelectedCellProvider = DeleteSelectedCellFamily();

/// See also [deleteSelectedCell].
class DeleteSelectedCellFamily extends Family<AsyncValue<void>> {
  /// See also [deleteSelectedCell].
  const DeleteSelectedCellFamily();

  /// See also [deleteSelectedCell].
  DeleteSelectedCellProvider call({
    required CellParentId parentId,
  }) {
    return DeleteSelectedCellProvider(
      parentId: parentId,
    );
  }

  @override
  DeleteSelectedCellProvider getProviderOverride(
    covariant DeleteSelectedCellProvider provider,
  ) {
    return call(
      parentId: provider.parentId,
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
  String? get name => r'deleteSelectedCellProvider';
}

/// See also [deleteSelectedCell].
class DeleteSelectedCellProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deleteSelectedCell].
  DeleteSelectedCellProvider({
    required CellParentId parentId,
  }) : this._internal(
          (ref) => deleteSelectedCell(
            ref as DeleteSelectedCellRef,
            parentId: parentId,
          ),
          from: deleteSelectedCellProvider,
          name: r'deleteSelectedCellProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteSelectedCellHash,
          dependencies: DeleteSelectedCellFamily._dependencies,
          allTransitiveDependencies:
              DeleteSelectedCellFamily._allTransitiveDependencies,
          parentId: parentId,
        );

  DeleteSelectedCellProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.parentId,
  }) : super.internal();

  final CellParentId parentId;

  @override
  Override overrideWith(
    FutureOr<void> Function(DeleteSelectedCellRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteSelectedCellProvider._internal(
        (ref) => create(ref as DeleteSelectedCellRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        parentId: parentId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _DeleteSelectedCellProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteSelectedCellProvider && other.parentId == parentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteSelectedCellRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `parentId` of this provider.
  CellParentId get parentId;
}

class _DeleteSelectedCellProviderElement
    extends AutoDisposeFutureProviderElement<void> with DeleteSelectedCellRef {
  _DeleteSelectedCellProviderElement(super.provider);

  @override
  CellParentId get parentId => (origin as DeleteSelectedCellProvider).parentId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
