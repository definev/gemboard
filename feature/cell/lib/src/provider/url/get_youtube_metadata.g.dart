// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_youtube_metadata.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getYoutubeMetadataHash() =>
    r'0dd33c9093e4d7e7f0c52daf5e4c66d539d5d358';

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

/// See also [getYoutubeMetadata].
@ProviderFor(getYoutubeMetadata)
const getYoutubeMetadataProvider = GetYoutubeMetadataFamily();

/// See also [getYoutubeMetadata].
class GetYoutubeMetadataFamily extends Family<AsyncValue<Metadata?>> {
  /// See also [getYoutubeMetadata].
  const GetYoutubeMetadataFamily();

  /// See also [getYoutubeMetadata].
  GetYoutubeMetadataProvider call(
    Uri url,
  ) {
    return GetYoutubeMetadataProvider(
      url,
    );
  }

  @override
  GetYoutubeMetadataProvider getProviderOverride(
    covariant GetYoutubeMetadataProvider provider,
  ) {
    return call(
      provider.url,
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
  String? get name => r'getYoutubeMetadataProvider';
}

/// See also [getYoutubeMetadata].
class GetYoutubeMetadataProvider extends FutureProvider<Metadata?> {
  /// See also [getYoutubeMetadata].
  GetYoutubeMetadataProvider(
    Uri url,
  ) : this._internal(
          (ref) => getYoutubeMetadata(
            ref as GetYoutubeMetadataRef,
            url,
          ),
          from: getYoutubeMetadataProvider,
          name: r'getYoutubeMetadataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getYoutubeMetadataHash,
          dependencies: GetYoutubeMetadataFamily._dependencies,
          allTransitiveDependencies:
              GetYoutubeMetadataFamily._allTransitiveDependencies,
          url: url,
        );

  GetYoutubeMetadataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.url,
  }) : super.internal();

  final Uri url;

  @override
  Override overrideWith(
    FutureOr<Metadata?> Function(GetYoutubeMetadataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetYoutubeMetadataProvider._internal(
        (ref) => create(ref as GetYoutubeMetadataRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        url: url,
      ),
    );
  }

  @override
  FutureProviderElement<Metadata?> createElement() {
    return _GetYoutubeMetadataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetYoutubeMetadataProvider && other.url == url;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, url.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetYoutubeMetadataRef on FutureProviderRef<Metadata?> {
  /// The parameter `url` of this provider.
  Uri get url;
}

class _GetYoutubeMetadataProviderElement
    extends FutureProviderElement<Metadata?> with GetYoutubeMetadataRef {
  _GetYoutubeMetadataProviderElement(super.provider);

  @override
  Uri get url => (origin as GetYoutubeMetadataProvider).url;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
