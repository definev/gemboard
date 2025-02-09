// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_folder_by_id.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getFolderByIdHash() => r'9939307a5e2967d19f2dac515444eb307d944ae3';

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

/// See also [getFolderById].
@ProviderFor(getFolderById)
const getFolderByIdProvider = GetFolderByIdFamily();

/// See also [getFolderById].
class GetFolderByIdFamily extends Family<AsyncValue<Folder>> {
  /// See also [getFolderById].
  const GetFolderByIdFamily();

  /// See also [getFolderById].
  GetFolderByIdProvider call(
    String id,
  ) {
    return GetFolderByIdProvider(
      id,
    );
  }

  @override
  GetFolderByIdProvider getProviderOverride(
    covariant GetFolderByIdProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'getFolderByIdProvider';
}

/// See also [getFolderById].
class GetFolderByIdProvider extends AutoDisposeFutureProvider<Folder> {
  /// See also [getFolderById].
  GetFolderByIdProvider(
    String id,
  ) : this._internal(
          (ref) => getFolderById(
            ref as GetFolderByIdRef,
            id,
          ),
          from: getFolderByIdProvider,
          name: r'getFolderByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getFolderByIdHash,
          dependencies: GetFolderByIdFamily._dependencies,
          allTransitiveDependencies:
              GetFolderByIdFamily._allTransitiveDependencies,
          id: id,
        );

  GetFolderByIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<Folder> Function(GetFolderByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetFolderByIdProvider._internal(
        (ref) => create(ref as GetFolderByIdRef),
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
  AutoDisposeFutureProviderElement<Folder> createElement() {
    return _GetFolderByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetFolderByIdProvider && other.id == id;
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
mixin GetFolderByIdRef on AutoDisposeFutureProviderRef<Folder> {
  /// The parameter `id` of this provider.
  String get id;
}

class _GetFolderByIdProviderElement
    extends AutoDisposeFutureProviderElement<Folder> with GetFolderByIdRef {
  _GetFolderByIdProviderElement(super.provider);

  @override
  String get id => (origin as GetFolderByIdProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
