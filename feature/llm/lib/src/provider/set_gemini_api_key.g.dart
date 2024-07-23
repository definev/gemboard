// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_gemini_api_key.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$setGeminiApiKeyHash() => r'ec4de9f6be0e5c61743d6233f70278f883a0c1f5';

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

/// See also [setGeminiApiKey].
@ProviderFor(setGeminiApiKey)
const setGeminiApiKeyProvider = SetGeminiApiKeyFamily();

/// See also [setGeminiApiKey].
class SetGeminiApiKeyFamily extends Family<AsyncValue<void>> {
  /// See also [setGeminiApiKey].
  const SetGeminiApiKeyFamily();

  /// See also [setGeminiApiKey].
  SetGeminiApiKeyProvider call(
    String apiKey,
  ) {
    return SetGeminiApiKeyProvider(
      apiKey,
    );
  }

  @override
  SetGeminiApiKeyProvider getProviderOverride(
    covariant SetGeminiApiKeyProvider provider,
  ) {
    return call(
      provider.apiKey,
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
  String? get name => r'setGeminiApiKeyProvider';
}

/// See also [setGeminiApiKey].
class SetGeminiApiKeyProvider extends AutoDisposeFutureProvider<void> {
  /// See also [setGeminiApiKey].
  SetGeminiApiKeyProvider(
    String apiKey,
  ) : this._internal(
          (ref) => setGeminiApiKey(
            ref as SetGeminiApiKeyRef,
            apiKey,
          ),
          from: setGeminiApiKeyProvider,
          name: r'setGeminiApiKeyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$setGeminiApiKeyHash,
          dependencies: SetGeminiApiKeyFamily._dependencies,
          allTransitiveDependencies:
              SetGeminiApiKeyFamily._allTransitiveDependencies,
          apiKey: apiKey,
        );

  SetGeminiApiKeyProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.apiKey,
  }) : super.internal();

  final String apiKey;

  @override
  Override overrideWith(
    FutureOr<void> Function(SetGeminiApiKeyRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SetGeminiApiKeyProvider._internal(
        (ref) => create(ref as SetGeminiApiKeyRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        apiKey: apiKey,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _SetGeminiApiKeyProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SetGeminiApiKeyProvider && other.apiKey == apiKey;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, apiKey.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SetGeminiApiKeyRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `apiKey` of this provider.
  String get apiKey;
}

class _SetGeminiApiKeyProviderElement
    extends AutoDisposeFutureProviderElement<void> with SetGeminiApiKeyRef {
  _SetGeminiApiKeyProviderElement(super.provider);

  @override
  String get apiKey => (origin as SetGeminiApiKeyProvider).apiKey;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
