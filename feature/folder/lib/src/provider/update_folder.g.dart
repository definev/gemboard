// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_folder.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$updateFolderHash() => r'301a2440dbdea22437c952a5cd19b37982becd8b';

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

/// See also [updateFolder].
@ProviderFor(updateFolder)
const updateFolderProvider = UpdateFolderFamily();

/// See also [updateFolder].
class UpdateFolderFamily extends Family<AsyncValue<void>> {
  /// See also [updateFolder].
  const UpdateFolderFamily();

  /// See also [updateFolder].
  UpdateFolderProvider call({
    required FolderId id,
    required Folder data,
  }) {
    return UpdateFolderProvider(
      id: id,
      data: data,
    );
  }

  @override
  UpdateFolderProvider getProviderOverride(
    covariant UpdateFolderProvider provider,
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
  String? get name => r'updateFolderProvider';
}

/// See also [updateFolder].
class UpdateFolderProvider extends AutoDisposeFutureProvider<void> {
  /// See also [updateFolder].
  UpdateFolderProvider({
    required FolderId id,
    required Folder data,
  }) : this._internal(
          (ref) => updateFolder(
            ref as UpdateFolderRef,
            id: id,
            data: data,
          ),
          from: updateFolderProvider,
          name: r'updateFolderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateFolderHash,
          dependencies: UpdateFolderFamily._dependencies,
          allTransitiveDependencies:
              UpdateFolderFamily._allTransitiveDependencies,
          id: id,
          data: data,
        );

  UpdateFolderProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.data,
  }) : super.internal();

  final FolderId id;
  final Folder data;

  @override
  Override overrideWith(
    FutureOr<void> Function(UpdateFolderRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateFolderProvider._internal(
        (ref) => create(ref as UpdateFolderRef),
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
    return _UpdateFolderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateFolderProvider &&
        other.id == id &&
        other.data == data;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, data.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateFolderRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `id` of this provider.
  FolderId get id;

  /// The parameter `data` of this provider.
  Folder get data;
}

class _UpdateFolderProviderElement
    extends AutoDisposeFutureProviderElement<void> with UpdateFolderRef {
  _UpdateFolderProviderElement(super.provider);

  @override
  FolderId get id => (origin as UpdateFolderProvider).id;
  @override
  Folder get data => (origin as UpdateFolderProvider).data;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
