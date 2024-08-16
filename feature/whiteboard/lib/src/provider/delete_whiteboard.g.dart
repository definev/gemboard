// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_whiteboard.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$deleteWhiteboardHash() => r'fa280e25330c58875b899f5a1cd2b2a4c4b5f784';

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

/// See also [deleteWhiteboard].
@ProviderFor(deleteWhiteboard)
const deleteWhiteboardProvider = DeleteWhiteboardFamily();

/// See also [deleteWhiteboard].
class DeleteWhiteboardFamily extends Family<AsyncValue<void>> {
  /// See also [deleteWhiteboard].
  const DeleteWhiteboardFamily();

  /// See also [deleteWhiteboard].
  DeleteWhiteboardProvider call({
    required WhiteboardId id,
  }) {
    return DeleteWhiteboardProvider(
      id: id,
    );
  }

  @override
  DeleteWhiteboardProvider getProviderOverride(
    covariant DeleteWhiteboardProvider provider,
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
  String? get name => r'deleteWhiteboardProvider';
}

/// See also [deleteWhiteboard].
class DeleteWhiteboardProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deleteWhiteboard].
  DeleteWhiteboardProvider({
    required WhiteboardId id,
  }) : this._internal(
          (ref) => deleteWhiteboard(
            ref as DeleteWhiteboardRef,
            id: id,
          ),
          from: deleteWhiteboardProvider,
          name: r'deleteWhiteboardProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteWhiteboardHash,
          dependencies: DeleteWhiteboardFamily._dependencies,
          allTransitiveDependencies:
              DeleteWhiteboardFamily._allTransitiveDependencies,
          id: id,
        );

  DeleteWhiteboardProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final WhiteboardId id;

  @override
  Override overrideWith(
    FutureOr<void> Function(DeleteWhiteboardRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteWhiteboardProvider._internal(
        (ref) => create(ref as DeleteWhiteboardRef),
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
    return _DeleteWhiteboardProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteWhiteboardProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteWhiteboardRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `id` of this provider.
  WhiteboardId get id;
}

class _DeleteWhiteboardProviderElement
    extends AutoDisposeFutureProviderElement<void> with DeleteWhiteboardRef {
  _DeleteWhiteboardProviderElement(super.provider);

  @override
  WhiteboardId get id => (origin as DeleteWhiteboardProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
