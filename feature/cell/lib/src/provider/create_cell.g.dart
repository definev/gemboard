// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_cell.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createCellHash() => r'ddc5fb0c2f5f629d2f5131ad6e3a76f6aa70a1de';

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

/// See also [createCell].
@ProviderFor(createCell)
const createCellProvider = CreateCellFamily();

/// See also [createCell].
class CreateCellFamily extends Family<AsyncValue<void>> {
  /// See also [createCell].
  const CreateCellFamily();

  /// See also [createCell].
  CreateCellProvider call({
    required CellParentId parentId,
    required Cell data,
  }) {
    return CreateCellProvider(
      parentId: parentId,
      data: data,
    );
  }

  @override
  CreateCellProvider getProviderOverride(
    covariant CreateCellProvider provider,
  ) {
    return call(
      parentId: provider.parentId,
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
  String? get name => r'createCellProvider';
}

/// See also [createCell].
class CreateCellProvider extends AutoDisposeFutureProvider<void> {
  /// See also [createCell].
  CreateCellProvider({
    required CellParentId parentId,
    required Cell data,
  }) : this._internal(
          (ref) => createCell(
            ref as CreateCellRef,
            parentId: parentId,
            data: data,
          ),
          from: createCellProvider,
          name: r'createCellProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createCellHash,
          dependencies: CreateCellFamily._dependencies,
          allTransitiveDependencies:
              CreateCellFamily._allTransitiveDependencies,
          parentId: parentId,
          data: data,
        );

  CreateCellProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.parentId,
    required this.data,
  }) : super.internal();

  final CellParentId parentId;
  final Cell data;

  @override
  Override overrideWith(
    FutureOr<void> Function(CreateCellRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateCellProvider._internal(
        (ref) => create(ref as CreateCellRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        parentId: parentId,
        data: data,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _CreateCellProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateCellProvider &&
        other.parentId == parentId &&
        other.data == data;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parentId.hashCode);
    hash = _SystemHash.combine(hash, data.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CreateCellRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `parentId` of this provider.
  CellParentId get parentId;

  /// The parameter `data` of this provider.
  Cell get data;
}

class _CreateCellProviderElement extends AutoDisposeFutureProviderElement<void>
    with CreateCellRef {
  _CreateCellProviderElement(super.provider);

  @override
  CellParentId get parentId => (origin as CreateCellProvider).parentId;
  @override
  Cell get data => (origin as CreateCellProvider).data;
}

String _$createCellsHash() => r'54913aa6a55eda15f602bec9e5a702cd578f851a';

/// See also [createCells].
@ProviderFor(createCells)
const createCellsProvider = CreateCellsFamily();

/// See also [createCells].
class CreateCellsFamily extends Family<AsyncValue<void>> {
  /// See also [createCells].
  const CreateCellsFamily();

  /// See also [createCells].
  CreateCellsProvider call({
    required CellParentId parentId,
    required List<Cell> data,
    bool silent = false,
  }) {
    return CreateCellsProvider(
      parentId: parentId,
      data: data,
      silent: silent,
    );
  }

  @override
  CreateCellsProvider getProviderOverride(
    covariant CreateCellsProvider provider,
  ) {
    return call(
      parentId: provider.parentId,
      data: provider.data,
      silent: provider.silent,
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
  String? get name => r'createCellsProvider';
}

/// See also [createCells].
class CreateCellsProvider extends AutoDisposeFutureProvider<void> {
  /// See also [createCells].
  CreateCellsProvider({
    required CellParentId parentId,
    required List<Cell> data,
    bool silent = false,
  }) : this._internal(
          (ref) => createCells(
            ref as CreateCellsRef,
            parentId: parentId,
            data: data,
            silent: silent,
          ),
          from: createCellsProvider,
          name: r'createCellsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createCellsHash,
          dependencies: CreateCellsFamily._dependencies,
          allTransitiveDependencies:
              CreateCellsFamily._allTransitiveDependencies,
          parentId: parentId,
          data: data,
          silent: silent,
        );

  CreateCellsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.parentId,
    required this.data,
    required this.silent,
  }) : super.internal();

  final CellParentId parentId;
  final List<Cell> data;
  final bool silent;

  @override
  Override overrideWith(
    FutureOr<void> Function(CreateCellsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateCellsProvider._internal(
        (ref) => create(ref as CreateCellsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        parentId: parentId,
        data: data,
        silent: silent,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _CreateCellsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateCellsProvider &&
        other.parentId == parentId &&
        other.data == data &&
        other.silent == silent;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parentId.hashCode);
    hash = _SystemHash.combine(hash, data.hashCode);
    hash = _SystemHash.combine(hash, silent.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CreateCellsRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `parentId` of this provider.
  CellParentId get parentId;

  /// The parameter `data` of this provider.
  List<Cell> get data;

  /// The parameter `silent` of this provider.
  bool get silent;
}

class _CreateCellsProviderElement extends AutoDisposeFutureProviderElement<void>
    with CreateCellsRef {
  _CreateCellsProviderElement(super.provider);

  @override
  CellParentId get parentId => (origin as CreateCellsProvider).parentId;
  @override
  List<Cell> get data => (origin as CreateCellsProvider).data;
  @override
  bool get silent => (origin as CreateCellsProvider).silent;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
