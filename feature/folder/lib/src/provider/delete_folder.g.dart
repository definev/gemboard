// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_folder.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$deleteFolderHash() => r'ccf92bcf14a29b059dc82345e46384b0b6c179e7';

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

/// See also [deleteFolder].
@ProviderFor(deleteFolder)
const deleteFolderProvider = DeleteFolderFamily();

/// See also [deleteFolder].
class DeleteFolderFamily extends Family<AsyncValue<void>> {
  /// See also [deleteFolder].
  const DeleteFolderFamily();

  /// See also [deleteFolder].
  DeleteFolderProvider call({
    required FolderId id,
  }) {
    return DeleteFolderProvider(
      id: id,
    );
  }

  @override
  DeleteFolderProvider getProviderOverride(
    covariant DeleteFolderProvider provider,
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
  String? get name => r'deleteFolderProvider';
}

/// See also [deleteFolder].
class DeleteFolderProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deleteFolder].
  DeleteFolderProvider({
    required FolderId id,
  }) : this._internal(
          (ref) => deleteFolder(
            ref as DeleteFolderRef,
            id: id,
          ),
          from: deleteFolderProvider,
          name: r'deleteFolderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteFolderHash,
          dependencies: DeleteFolderFamily._dependencies,
          allTransitiveDependencies:
              DeleteFolderFamily._allTransitiveDependencies,
          id: id,
        );

  DeleteFolderProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final FolderId id;

  @override
  Override overrideWith(
    FutureOr<void> Function(DeleteFolderRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteFolderProvider._internal(
        (ref) => create(ref as DeleteFolderRef),
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
    return _DeleteFolderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteFolderProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DeleteFolderRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `id` of this provider.
  FolderId get id;
}

class _DeleteFolderProviderElement
    extends AutoDisposeFutureProviderElement<void> with DeleteFolderRef {
  _DeleteFolderProviderElement(super.provider);

  @override
  FolderId get id => (origin as DeleteFolderProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
