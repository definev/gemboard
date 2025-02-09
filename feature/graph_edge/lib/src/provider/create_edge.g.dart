// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_edge.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createEdgeHash() => r'f6b5bd9f0f80689c4cca3c234a7a11e04fe6314f';

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

/// See also [createEdge].
@ProviderFor(createEdge)
const createEdgeProvider = CreateEdgeFamily();

/// See also [createEdge].
class CreateEdgeFamily extends Family<AsyncValue<void>> {
  /// See also [createEdge].
  const CreateEdgeFamily();

  /// See also [createEdge].
  CreateEdgeProvider call({
    required EdgeParentId parentId,
    required Edge data,
  }) {
    return CreateEdgeProvider(
      parentId: parentId,
      data: data,
    );
  }

  @override
  CreateEdgeProvider getProviderOverride(
    covariant CreateEdgeProvider provider,
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
  String? get name => r'createEdgeProvider';
}

/// See also [createEdge].
class CreateEdgeProvider extends AutoDisposeFutureProvider<void> {
  /// See also [createEdge].
  CreateEdgeProvider({
    required EdgeParentId parentId,
    required Edge data,
  }) : this._internal(
          (ref) => createEdge(
            ref as CreateEdgeRef,
            parentId: parentId,
            data: data,
          ),
          from: createEdgeProvider,
          name: r'createEdgeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createEdgeHash,
          dependencies: CreateEdgeFamily._dependencies,
          allTransitiveDependencies:
              CreateEdgeFamily._allTransitiveDependencies,
          parentId: parentId,
          data: data,
        );

  CreateEdgeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.parentId,
    required this.data,
  }) : super.internal();

  final EdgeParentId parentId;
  final Edge data;

  @override
  Override overrideWith(
    FutureOr<void> Function(CreateEdgeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateEdgeProvider._internal(
        (ref) => create(ref as CreateEdgeRef),
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
    return _CreateEdgeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateEdgeProvider &&
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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CreateEdgeRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `parentId` of this provider.
  EdgeParentId get parentId;

  /// The parameter `data` of this provider.
  Edge get data;
}

class _CreateEdgeProviderElement extends AutoDisposeFutureProviderElement<void>
    with CreateEdgeRef {
  _CreateEdgeProviderElement(super.provider);

  @override
  EdgeParentId get parentId => (origin as CreateEdgeProvider).parentId;
  @override
  Edge get data => (origin as CreateEdgeProvider).data;
}

String _$createEdgesHash() => r'25241265db149ec147b5141a996e6ffce5f1345c';

/// See also [createEdges].
@ProviderFor(createEdges)
const createEdgesProvider = CreateEdgesFamily();

/// See also [createEdges].
class CreateEdgesFamily extends Family<AsyncValue<void>> {
  /// See also [createEdges].
  const CreateEdgesFamily();

  /// See also [createEdges].
  CreateEdgesProvider call({
    required EdgeParentId parentId,
    required List<Edge> data,
    bool silent = false,
  }) {
    return CreateEdgesProvider(
      parentId: parentId,
      data: data,
      silent: silent,
    );
  }

  @override
  CreateEdgesProvider getProviderOverride(
    covariant CreateEdgesProvider provider,
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
  String? get name => r'createEdgesProvider';
}

/// See also [createEdges].
class CreateEdgesProvider extends AutoDisposeFutureProvider<void> {
  /// See also [createEdges].
  CreateEdgesProvider({
    required EdgeParentId parentId,
    required List<Edge> data,
    bool silent = false,
  }) : this._internal(
          (ref) => createEdges(
            ref as CreateEdgesRef,
            parentId: parentId,
            data: data,
            silent: silent,
          ),
          from: createEdgesProvider,
          name: r'createEdgesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createEdgesHash,
          dependencies: CreateEdgesFamily._dependencies,
          allTransitiveDependencies:
              CreateEdgesFamily._allTransitiveDependencies,
          parentId: parentId,
          data: data,
          silent: silent,
        );

  CreateEdgesProvider._internal(
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

  final EdgeParentId parentId;
  final List<Edge> data;
  final bool silent;

  @override
  Override overrideWith(
    FutureOr<void> Function(CreateEdgesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateEdgesProvider._internal(
        (ref) => create(ref as CreateEdgesRef),
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
    return _CreateEdgesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateEdgesProvider &&
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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CreateEdgesRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `parentId` of this provider.
  EdgeParentId get parentId;

  /// The parameter `data` of this provider.
  List<Edge> get data;

  /// The parameter `silent` of this provider.
  bool get silent;
}

class _CreateEdgesProviderElement extends AutoDisposeFutureProviderElement<void>
    with CreateEdgesRef {
  _CreateEdgesProviderElement(super.provider);

  @override
  EdgeParentId get parentId => (origin as CreateEdgesProvider).parentId;
  @override
  List<Edge> get data => (origin as CreateEdgesProvider).data;
  @override
  bool get silent => (origin as CreateEdgesProvider).silent;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
