// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cell_list.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getCellListHash() => r'a76791622133f6939519080302cf434f1b3ecaff';

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
