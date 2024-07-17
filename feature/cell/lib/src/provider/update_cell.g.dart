// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_cell.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$updateCellHash() => r'5d141cf4ee667cc2c9541caf49489caa6c1f846c';

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

/// See also [updateCell].
@ProviderFor(updateCell)
const updateCellProvider = UpdateCellFamily();

/// See also [updateCell].
class UpdateCellFamily extends Family<AsyncValue<void>> {
  /// See also [updateCell].
  const UpdateCellFamily();

  /// See also [updateCell].
  UpdateCellProvider call({
    required CellId id,
    required Cell data,
  }) {
    return UpdateCellProvider(
      id: id,
      data: data,
    );
  }

  @override
  UpdateCellProvider getProviderOverride(
    covariant UpdateCellProvider provider,
  ) {
    return call(
      id: provider.id,
      data: provider.data,
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
  String? get name => r'updateCellProvider';
}

/// See also [updateCell].
class UpdateCellProvider extends AutoDisposeFutureProvider<void> {
  /// See also [updateCell].
  UpdateCellProvider({
    required CellId id,
    required Cell data,
  }) : this._internal(
          (ref) => updateCell(
            ref as UpdateCellRef,
            id: id,
            data: data,
          ),
          from: updateCellProvider,
          name: r'updateCellProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateCellHash,
          dependencies: UpdateCellFamily._dependencies,
          allTransitiveDependencies:
              UpdateCellFamily._allTransitiveDependencies,
          id: id,
          data: data,
        );

  UpdateCellProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.data,
  }) : super.internal();

  final CellId id;
  final Cell data;

  @override
  Override overrideWith(
    FutureOr<void> Function(UpdateCellRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateCellProvider._internal(
        (ref) => create(ref as UpdateCellRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        data: data,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _UpdateCellProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateCellProvider && other.id == id && other.data == data;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, data.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateCellRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `id` of this provider.
  CellId get id;

  /// The parameter `data` of this provider.
  Cell get data;
}

class _UpdateCellProviderElement extends AutoDisposeFutureProviderElement<void>
    with UpdateCellRef {
  _UpdateCellProviderElement(super.provider);

  @override
  CellId get id => (origin as UpdateCellProvider).id;
  @override
  Cell get data => (origin as UpdateCellProvider).data;
}

String _$updateCellsHash() => r'15f5849d720851f2408f086553313323b517a3e5';

/// See also [updateCells].
@ProviderFor(updateCells)
const updateCellsProvider = UpdateCellsFamily();

/// See also [updateCells].
class UpdateCellsFamily extends Family<AsyncValue<void>> {
  /// See also [updateCells].
  const UpdateCellsFamily();

  /// See also [updateCells].
  UpdateCellsProvider call({
    required CellParentId parentId,
    required List<Cell> cells,
  }) {
    return UpdateCellsProvider(
      parentId: parentId,
      cells: cells,
    );
  }

  @override
  UpdateCellsProvider getProviderOverride(
    covariant UpdateCellsProvider provider,
  ) {
    return call(
      parentId: provider.parentId,
      cells: provider.cells,
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
  String? get name => r'updateCellsProvider';
}

/// See also [updateCells].
class UpdateCellsProvider extends AutoDisposeFutureProvider<void> {
  /// See also [updateCells].
  UpdateCellsProvider({
    required CellParentId parentId,
    required List<Cell> cells,
  }) : this._internal(
          (ref) => updateCells(
            ref as UpdateCellsRef,
            parentId: parentId,
            cells: cells,
          ),
          from: updateCellsProvider,
          name: r'updateCellsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateCellsHash,
          dependencies: UpdateCellsFamily._dependencies,
          allTransitiveDependencies:
              UpdateCellsFamily._allTransitiveDependencies,
          parentId: parentId,
          cells: cells,
        );

  UpdateCellsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.parentId,
    required this.cells,
  }) : super.internal();

  final CellParentId parentId;
  final List<Cell> cells;

  @override
  Override overrideWith(
    FutureOr<void> Function(UpdateCellsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateCellsProvider._internal(
        (ref) => create(ref as UpdateCellsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        parentId: parentId,
        cells: cells,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _UpdateCellsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateCellsProvider &&
        other.parentId == parentId &&
        other.cells == cells;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parentId.hashCode);
    hash = _SystemHash.combine(hash, cells.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateCellsRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `parentId` of this provider.
  CellParentId get parentId;

  /// The parameter `cells` of this provider.
  List<Cell> get cells;
}

class _UpdateCellsProviderElement extends AutoDisposeFutureProviderElement<void>
    with UpdateCellsRef {
  _UpdateCellsProviderElement(super.provider);

  @override
  CellParentId get parentId => (origin as UpdateCellsProvider).parentId;
  @override
  List<Cell> get cells => (origin as UpdateCellsProvider).cells;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
