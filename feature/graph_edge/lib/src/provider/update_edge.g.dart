// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_edge.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$updateEdgeHash() => r'5851b4211e4d8c693bfcce9295c4771a22b8ff57';

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

/// See also [updateEdge].
@ProviderFor(updateEdge)
const updateEdgeProvider = UpdateEdgeFamily();

/// See also [updateEdge].
class UpdateEdgeFamily extends Family<AsyncValue<void>> {
  /// See also [updateEdge].
  const UpdateEdgeFamily();

  /// See also [updateEdge].
  UpdateEdgeProvider call({
    required EdgeId id,
    required Edge data,
  }) {
    return UpdateEdgeProvider(
      id: id,
      data: data,
    );
  }

  @override
  UpdateEdgeProvider getProviderOverride(
    covariant UpdateEdgeProvider provider,
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
  String? get name => r'updateEdgeProvider';
}

/// See also [updateEdge].
class UpdateEdgeProvider extends AutoDisposeFutureProvider<void> {
  /// See also [updateEdge].
  UpdateEdgeProvider({
    required EdgeId id,
    required Edge data,
  }) : this._internal(
          (ref) => updateEdge(
            ref as UpdateEdgeRef,
            id: id,
            data: data,
          ),
          from: updateEdgeProvider,
          name: r'updateEdgeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateEdgeHash,
          dependencies: UpdateEdgeFamily._dependencies,
          allTransitiveDependencies:
              UpdateEdgeFamily._allTransitiveDependencies,
          id: id,
          data: data,
        );

  UpdateEdgeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.data,
  }) : super.internal();

  final EdgeId id;
  final Edge data;

  @override
  Override overrideWith(
    FutureOr<void> Function(UpdateEdgeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateEdgeProvider._internal(
        (ref) => create(ref as UpdateEdgeRef),
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
    return _UpdateEdgeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateEdgeProvider && other.id == id && other.data == data;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, data.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdateEdgeRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `id` of this provider.
  EdgeId get id;

  /// The parameter `data` of this provider.
  Edge get data;
}

class _UpdateEdgeProviderElement extends AutoDisposeFutureProviderElement<void>
    with UpdateEdgeRef {
  _UpdateEdgeProviderElement(super.provider);

  @override
  EdgeId get id => (origin as UpdateEdgeProvider).id;
  @override
  Edge get data => (origin as UpdateEdgeProvider).data;
}

String _$updateEdgesHash() => r'a6e203427615642e08454af01cec93fc827a16ee';

/// See also [updateEdges].
@ProviderFor(updateEdges)
const updateEdgesProvider = UpdateEdgesFamily();

/// See also [updateEdges].
class UpdateEdgesFamily extends Family<AsyncValue<void>> {
  /// See also [updateEdges].
  const UpdateEdgesFamily();

  /// See also [updateEdges].
  UpdateEdgesProvider call({
    required EdgeParentId parentId,
    required List<Edge> edges,
  }) {
    return UpdateEdgesProvider(
      parentId: parentId,
      edges: edges,
    );
  }

  @override
  UpdateEdgesProvider getProviderOverride(
    covariant UpdateEdgesProvider provider,
  ) {
    return call(
      parentId: provider.parentId,
      edges: provider.edges,
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
  String? get name => r'updateEdgesProvider';
}

/// See also [updateEdges].
class UpdateEdgesProvider extends AutoDisposeFutureProvider<void> {
  /// See also [updateEdges].
  UpdateEdgesProvider({
    required EdgeParentId parentId,
    required List<Edge> edges,
  }) : this._internal(
          (ref) => updateEdges(
            ref as UpdateEdgesRef,
            parentId: parentId,
            edges: edges,
          ),
          from: updateEdgesProvider,
          name: r'updateEdgesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateEdgesHash,
          dependencies: UpdateEdgesFamily._dependencies,
          allTransitiveDependencies:
              UpdateEdgesFamily._allTransitiveDependencies,
          parentId: parentId,
          edges: edges,
        );

  UpdateEdgesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.parentId,
    required this.edges,
  }) : super.internal();

  final EdgeParentId parentId;
  final List<Edge> edges;

  @override
  Override overrideWith(
    FutureOr<void> Function(UpdateEdgesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateEdgesProvider._internal(
        (ref) => create(ref as UpdateEdgesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        parentId: parentId,
        edges: edges,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _UpdateEdgesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateEdgesProvider &&
        other.parentId == parentId &&
        other.edges == edges;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parentId.hashCode);
    hash = _SystemHash.combine(hash, edges.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdateEdgesRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `parentId` of this provider.
  EdgeParentId get parentId;

  /// The parameter `edges` of this provider.
  List<Edge> get edges;
}

class _UpdateEdgesProviderElement extends AutoDisposeFutureProviderElement<void>
    with UpdateEdgesRef {
  _UpdateEdgesProviderElement(super.provider);

  @override
  EdgeParentId get parentId => (origin as UpdateEdgesProvider).parentId;
  @override
  List<Edge> get edges => (origin as UpdateEdgesProvider).edges;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
