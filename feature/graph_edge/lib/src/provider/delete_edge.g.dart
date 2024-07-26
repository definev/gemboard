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

String _$deleteEdgesHash() => r'08893289568c7a8151f277a6277ad02df59bece0';

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
  }) {
    return DeleteEdgesProvider(
      ids: ids,
    );
  }

  @override
  DeleteEdgesProvider getProviderOverride(
    covariant DeleteEdgesProvider provider,
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
  String? get name => r'deleteEdgesProvider';
}

/// See also [deleteEdges].
class DeleteEdgesProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deleteEdges].
  DeleteEdgesProvider({
    required List<EdgeId> ids,
  }) : this._internal(
          (ref) => deleteEdges(
            ref as DeleteEdgesRef,
            ids: ids,
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
        );

  DeleteEdgesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.ids,
  }) : super.internal();

  final List<EdgeId> ids;

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
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _DeleteEdgesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteEdgesProvider && other.ids == ids;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, ids.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteEdgesRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `ids` of this provider.
  List<EdgeId> get ids;
}

class _DeleteEdgesProviderElement extends AutoDisposeFutureProviderElement<void>
    with DeleteEdgesRef {
  _DeleteEdgesProviderElement(super.provider);

  @override
  List<EdgeId> get ids => (origin as DeleteEdgesProvider).ids;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
