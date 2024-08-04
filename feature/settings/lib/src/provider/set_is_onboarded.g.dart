// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_is_onboarded.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$setIsOnboardedHash() => r'11833359002568de12a8a3937159ca63587dbd38';

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

/// See also [setIsOnboarded].
@ProviderFor(setIsOnboarded)
const setIsOnboardedProvider = SetIsOnboardedFamily();

/// See also [setIsOnboarded].
class SetIsOnboardedFamily extends Family<AsyncValue<bool>> {
  /// See also [setIsOnboarded].
  const SetIsOnboardedFamily();

  /// See also [setIsOnboarded].
  SetIsOnboardedProvider call(
    bool value,
  ) {
    return SetIsOnboardedProvider(
      value,
    );
  }

  @override
  SetIsOnboardedProvider getProviderOverride(
    covariant SetIsOnboardedProvider provider,
  ) {
    return call(
      provider.value,
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
  String? get name => r'setIsOnboardedProvider';
}

/// See also [setIsOnboarded].
class SetIsOnboardedProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [setIsOnboarded].
  SetIsOnboardedProvider(
    bool value,
  ) : this._internal(
          (ref) => setIsOnboarded(
            ref as SetIsOnboardedRef,
            value,
          ),
          from: setIsOnboardedProvider,
          name: r'setIsOnboardedProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$setIsOnboardedHash,
          dependencies: SetIsOnboardedFamily._dependencies,
          allTransitiveDependencies:
              SetIsOnboardedFamily._allTransitiveDependencies,
          value: value,
        );

  SetIsOnboardedProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.value,
  }) : super.internal();

  final bool value;

  @override
  Override overrideWith(
    FutureOr<bool> Function(SetIsOnboardedRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SetIsOnboardedProvider._internal(
        (ref) => create(ref as SetIsOnboardedRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        value: value,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _SetIsOnboardedProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SetIsOnboardedProvider && other.value == value;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, value.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SetIsOnboardedRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `value` of this provider.
  bool get value;
}

class _SetIsOnboardedProviderElement
    extends AutoDisposeFutureProviderElement<bool> with SetIsOnboardedRef {
  _SetIsOnboardedProviderElement(super.provider);

  @override
  bool get value => (origin as SetIsOnboardedProvider).value;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
