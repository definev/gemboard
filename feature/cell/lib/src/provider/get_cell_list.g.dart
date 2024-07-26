// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cell_list.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getCellListStreamControllerHash() =>
    r'5081a9286c3c0d4221078a8ccd7f24f058af642f';

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

/// See also [getCellListStreamController].
@ProviderFor(getCellListStreamController)
const getCellListStreamControllerProvider = GetCellListStreamControllerFamily();

/// See also [getCellListStreamController].
class GetCellListStreamControllerFamily
    extends Family<StreamController<List<Cell>>> {
  /// See also [getCellListStreamController].
  const GetCellListStreamControllerFamily();

  /// See also [getCellListStreamController].
  GetCellListStreamControllerProvider call({
    required CellParentId parentId,
  }) {
    return GetCellListStreamControllerProvider(
      parentId: parentId,
    );
  }

  @override
  GetCellListStreamControllerProvider getProviderOverride(
    covariant GetCellListStreamControllerProvider provider,
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
  String? get name => r'getCellListStreamControllerProvider';
}

/// See also [getCellListStreamController].
class GetCellListStreamControllerProvider
    extends AutoDisposeProvider<StreamController<List<Cell>>> {
  /// See also [getCellListStreamController].
  GetCellListStreamControllerProvider({
    required CellParentId parentId,
  }) : this._internal(
          (ref) => getCellListStreamController(
            ref as GetCellListStreamControllerRef,
            parentId: parentId,
          ),
          from: getCellListStreamControllerProvider,
          name: r'getCellListStreamControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCellListStreamControllerHash,
          dependencies: GetCellListStreamControllerFamily._dependencies,
          allTransitiveDependencies:
              GetCellListStreamControllerFamily._allTransitiveDependencies,
          parentId: parentId,
        );

  GetCellListStreamControllerProvider._internal(
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
    StreamController<List<Cell>> Function(
            GetCellListStreamControllerRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetCellListStreamControllerProvider._internal(
        (ref) => create(ref as GetCellListStreamControllerRef),
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
  AutoDisposeProviderElement<StreamController<List<Cell>>> createElement() {
    return _GetCellListStreamControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetCellListStreamControllerProvider &&
        other.parentId == parentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetCellListStreamControllerRef
    on AutoDisposeProviderRef<StreamController<List<Cell>>> {
  /// The parameter `parentId` of this provider.
  CellParentId get parentId;
}

class _GetCellListStreamControllerProviderElement
    extends AutoDisposeProviderElement<StreamController<List<Cell>>>
    with GetCellListStreamControllerRef {
  _GetCellListStreamControllerProviderElement(super.provider);

  @override
  CellParentId get parentId =>
      (origin as GetCellListStreamControllerProvider).parentId;
}

String _$getCellListHash() => r'a8497b8e5f0d8c221570789c92bc90d8ef37e8e8';

/// See also [getCellList].
@ProviderFor(getCellList)
const getCellListProvider = GetCellListFamily();

/// See also [getCellList].
class GetCellListFamily extends Family<AsyncValue<List<Cell>>> {
  /// See also [getCellList].
  const GetCellListFamily();

  /// See also [getCellList].
  GetCellListProvider call({
    required CellParentId parentId,
  }) {
    return GetCellListProvider(
      parentId: parentId,
    );
  }

  @override
  GetCellListProvider getProviderOverride(
    covariant GetCellListProvider provider,
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
  String? get name => r'getCellListProvider';
}

/// See also [getCellList].
class GetCellListProvider extends AutoDisposeStreamProvider<List<Cell>> {
  /// See also [getCellList].
  GetCellListProvider({
    required CellParentId parentId,
  }) : this._internal(
          (ref) => getCellList(
            ref as GetCellListRef,
            parentId: parentId,
          ),
          from: getCellListProvider,
          name: r'getCellListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCellListHash,
          dependencies: GetCellListFamily._dependencies,
          allTransitiveDependencies:
              GetCellListFamily._allTransitiveDependencies,
          parentId: parentId,
        );

  GetCellListProvider._internal(
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
    Stream<List<Cell>> Function(GetCellListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetCellListProvider._internal(
        (ref) => create(ref as GetCellListRef),
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
  AutoDisposeStreamProviderElement<List<Cell>> createElement() {
    return _GetCellListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetCellListProvider && other.parentId == parentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetCellListRef on AutoDisposeStreamProviderRef<List<Cell>> {
  /// The parameter `parentId` of this provider.
  CellParentId get parentId;
}

class _GetCellListProviderElement
    extends AutoDisposeStreamProviderElement<List<Cell>> with GetCellListRef {
  _GetCellListProviderElement(super.provider);

  @override
  CellParentId get parentId => (origin as GetCellListProvider).parentId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
