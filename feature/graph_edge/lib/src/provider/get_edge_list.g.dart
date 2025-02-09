// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_edge_list.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getEdgeListStreamControllerHash() =>
    r'589838a63d93f435aa07f6b01439804a28a4dbac';

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

/// See also [getEdgeListStreamController].
@ProviderFor(getEdgeListStreamController)
const getEdgeListStreamControllerProvider = GetEdgeListStreamControllerFamily();

/// See also [getEdgeListStreamController].
class GetEdgeListStreamControllerFamily
    extends Family<StreamController<List<Edge>>> {
  /// See also [getEdgeListStreamController].
  const GetEdgeListStreamControllerFamily();

  /// See also [getEdgeListStreamController].
  GetEdgeListStreamControllerProvider call({
    required EdgeParentId parentId,
  }) {
    return GetEdgeListStreamControllerProvider(
      parentId: parentId,
    );
  }

  @override
  GetEdgeListStreamControllerProvider getProviderOverride(
    covariant GetEdgeListStreamControllerProvider provider,
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
  String? get name => r'getEdgeListStreamControllerProvider';
}

/// See also [getEdgeListStreamController].
class GetEdgeListStreamControllerProvider
    extends AutoDisposeProvider<StreamController<List<Edge>>> {
  /// See also [getEdgeListStreamController].
  GetEdgeListStreamControllerProvider({
    required EdgeParentId parentId,
  }) : this._internal(
          (ref) => getEdgeListStreamController(
            ref as GetEdgeListStreamControllerRef,
            parentId: parentId,
          ),
          from: getEdgeListStreamControllerProvider,
          name: r'getEdgeListStreamControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getEdgeListStreamControllerHash,
          dependencies: GetEdgeListStreamControllerFamily._dependencies,
          allTransitiveDependencies:
              GetEdgeListStreamControllerFamily._allTransitiveDependencies,
          parentId: parentId,
        );

  GetEdgeListStreamControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.parentId,
  }) : super.internal();

  final EdgeParentId parentId;

  @override
  Override overrideWith(
    StreamController<List<Edge>> Function(
            GetEdgeListStreamControllerRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetEdgeListStreamControllerProvider._internal(
        (ref) => create(ref as GetEdgeListStreamControllerRef),
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
  AutoDisposeProviderElement<StreamController<List<Edge>>> createElement() {
    return _GetEdgeListStreamControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetEdgeListStreamControllerProvider &&
        other.parentId == parentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetEdgeListStreamControllerRef
    on AutoDisposeProviderRef<StreamController<List<Edge>>> {
  /// The parameter `parentId` of this provider.
  EdgeParentId get parentId;
}

class _GetEdgeListStreamControllerProviderElement
    extends AutoDisposeProviderElement<StreamController<List<Edge>>>
    with GetEdgeListStreamControllerRef {
  _GetEdgeListStreamControllerProviderElement(super.provider);

  @override
  EdgeParentId get parentId =>
      (origin as GetEdgeListStreamControllerProvider).parentId;
}

String _$getEdgeListHash() => r'b309f499d33ead4c95d46f48c75dd29cc3b4194a';

/// See also [getEdgeList].
@ProviderFor(getEdgeList)
const getEdgeListProvider = GetEdgeListFamily();

/// See also [getEdgeList].
class GetEdgeListFamily extends Family<AsyncValue<List<Edge>>> {
  /// See also [getEdgeList].
  const GetEdgeListFamily();

  /// See also [getEdgeList].
  GetEdgeListProvider call({
    required EdgeParentId parentId,
  }) {
    return GetEdgeListProvider(
      parentId: parentId,
    );
  }

  @override
  GetEdgeListProvider getProviderOverride(
    covariant GetEdgeListProvider provider,
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
  String? get name => r'getEdgeListProvider';
}

/// See also [getEdgeList].
class GetEdgeListProvider extends AutoDisposeStreamProvider<List<Edge>> {
  /// See also [getEdgeList].
  GetEdgeListProvider({
    required EdgeParentId parentId,
  }) : this._internal(
          (ref) => getEdgeList(
            ref as GetEdgeListRef,
            parentId: parentId,
          ),
          from: getEdgeListProvider,
          name: r'getEdgeListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getEdgeListHash,
          dependencies: GetEdgeListFamily._dependencies,
          allTransitiveDependencies:
              GetEdgeListFamily._allTransitiveDependencies,
          parentId: parentId,
        );

  GetEdgeListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.parentId,
  }) : super.internal();

  final EdgeParentId parentId;

  @override
  Override overrideWith(
    Stream<List<Edge>> Function(GetEdgeListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetEdgeListProvider._internal(
        (ref) => create(ref as GetEdgeListRef),
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
  AutoDisposeStreamProviderElement<List<Edge>> createElement() {
    return _GetEdgeListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetEdgeListProvider && other.parentId == parentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetEdgeListRef on AutoDisposeStreamProviderRef<List<Edge>> {
  /// The parameter `parentId` of this provider.
  EdgeParentId get parentId;
}

class _GetEdgeListProviderElement
    extends AutoDisposeStreamProviderElement<List<Edge>> with GetEdgeListRef {
  _GetEdgeListProviderElement(super.provider);

  @override
  EdgeParentId get parentId => (origin as GetEdgeListProvider).parentId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
