// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ask_cell_list.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getAskCellListHash() => r'11b17673357221cb9843b60892a936f7d13f67c8';

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

/// See also [getAskCellList].
@ProviderFor(getAskCellList)
const getAskCellListProvider = GetAskCellListFamily();

/// See also [getAskCellList].
class GetAskCellListFamily extends Family<AsyncValue<List<AskCell>>> {
  /// See also [getAskCellList].
  const GetAskCellListFamily();

  /// See also [getAskCellList].
  GetAskCellListProvider call({
    required AskCellParentId parentId,
  }) {
    return GetAskCellListProvider(
      parentId: parentId,
    );
  }

  @override
  GetAskCellListProvider getProviderOverride(
    covariant GetAskCellListProvider provider,
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
  String? get name => r'getAskCellListProvider';
}

/// See also [getAskCellList].
class GetAskCellListProvider extends AutoDisposeFutureProvider<List<AskCell>> {
  /// See also [getAskCellList].
  GetAskCellListProvider({
    required AskCellParentId parentId,
  }) : this._internal(
          (ref) => getAskCellList(
            ref as GetAskCellListRef,
            parentId: parentId,
          ),
          from: getAskCellListProvider,
          name: r'getAskCellListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAskCellListHash,
          dependencies: GetAskCellListFamily._dependencies,
          allTransitiveDependencies:
              GetAskCellListFamily._allTransitiveDependencies,
          parentId: parentId,
        );

  GetAskCellListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.parentId,
  }) : super.internal();

  final AskCellParentId parentId;

  @override
  Override overrideWith(
    FutureOr<List<AskCell>> Function(GetAskCellListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAskCellListProvider._internal(
        (ref) => create(ref as GetAskCellListRef),
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
  AutoDisposeFutureProviderElement<List<AskCell>> createElement() {
    return _GetAskCellListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAskCellListProvider && other.parentId == parentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetAskCellListRef on AutoDisposeFutureProviderRef<List<AskCell>> {
  /// The parameter `parentId` of this provider.
  AskCellParentId get parentId;
}

class _GetAskCellListProviderElement
    extends AutoDisposeFutureProviderElement<List<AskCell>>
    with GetAskCellListRef {
  _GetAskCellListProviderElement(super.provider);

  @override
  AskCellParentId get parentId => (origin as GetAskCellListProvider).parentId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
