// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_folder.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createFolderHash() => r'37b4127d41d567668e345b2a3aa76c8fe5ebee66';

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

/// See also [createFolder].
@ProviderFor(createFolder)
const createFolderProvider = CreateFolderFamily();

/// See also [createFolder].
class CreateFolderFamily extends Family<AsyncValue<void>> {
  /// See also [createFolder].
  const CreateFolderFamily();

  /// See also [createFolder].
  CreateFolderProvider call({
    required Folder data,
    FolderParentId parentId = const FolderParentId(),
  }) {
    return CreateFolderProvider(
      data: data,
      parentId: parentId,
    );
  }

  @override
  CreateFolderProvider getProviderOverride(
    covariant CreateFolderProvider provider,
  ) {
    return call(
      data: provider.data,
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
  String? get name => r'createFolderProvider';
}

/// See also [createFolder].
class CreateFolderProvider extends AutoDisposeFutureProvider<void> {
  /// See also [createFolder].
  CreateFolderProvider({
    required Folder data,
    FolderParentId parentId = const FolderParentId(),
  }) : this._internal(
          (ref) => createFolder(
            ref as CreateFolderRef,
            data: data,
            parentId: parentId,
          ),
          from: createFolderProvider,
          name: r'createFolderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createFolderHash,
          dependencies: CreateFolderFamily._dependencies,
          allTransitiveDependencies:
              CreateFolderFamily._allTransitiveDependencies,
          data: data,
          parentId: parentId,
        );

  CreateFolderProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.data,
    required this.parentId,
  }) : super.internal();

  final Folder data;
  final FolderParentId parentId;

  @override
  Override overrideWith(
    FutureOr<void> Function(CreateFolderRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateFolderProvider._internal(
        (ref) => create(ref as CreateFolderRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        data: data,
        parentId: parentId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _CreateFolderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateFolderProvider &&
        other.data == data &&
        other.parentId == parentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, data.hashCode);
    hash = _SystemHash.combine(hash, parentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CreateFolderRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `data` of this provider.
  Folder get data;

  /// The parameter `parentId` of this provider.
  FolderParentId get parentId;
}

class _CreateFolderProviderElement
    extends AutoDisposeFutureProviderElement<void> with CreateFolderRef {
  _CreateFolderProviderElement(super.provider);

  @override
  Folder get data => (origin as CreateFolderProvider).data;
  @override
  FolderParentId get parentId => (origin as CreateFolderProvider).parentId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
