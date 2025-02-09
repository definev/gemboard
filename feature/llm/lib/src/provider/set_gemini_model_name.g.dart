// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_gemini_model_name.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$setGeminiModelNameHash() =>
    r'e07459e7175ed7864e23abc3af26318f85ac9929';

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

/// See also [setGeminiModelName].
@ProviderFor(setGeminiModelName)
const setGeminiModelNameProvider = SetGeminiModelNameFamily();

/// See also [setGeminiModelName].
class SetGeminiModelNameFamily extends Family<AsyncValue<void>> {
  /// See also [setGeminiModelName].
  const SetGeminiModelNameFamily();

  /// See also [setGeminiModelName].
  SetGeminiModelNameProvider call(
    String modelName,
  ) {
    return SetGeminiModelNameProvider(
      modelName,
    );
  }

  @override
  SetGeminiModelNameProvider getProviderOverride(
    covariant SetGeminiModelNameProvider provider,
  ) {
    return call(
      provider.modelName,
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
  String? get name => r'setGeminiModelNameProvider';
}

/// See also [setGeminiModelName].
class SetGeminiModelNameProvider extends AutoDisposeFutureProvider<void> {
  /// See also [setGeminiModelName].
  SetGeminiModelNameProvider(
    String modelName,
  ) : this._internal(
          (ref) => setGeminiModelName(
            ref as SetGeminiModelNameRef,
            modelName,
          ),
          from: setGeminiModelNameProvider,
          name: r'setGeminiModelNameProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$setGeminiModelNameHash,
          dependencies: SetGeminiModelNameFamily._dependencies,
          allTransitiveDependencies:
              SetGeminiModelNameFamily._allTransitiveDependencies,
          modelName: modelName,
        );

  SetGeminiModelNameProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.modelName,
  }) : super.internal();

  final String modelName;

  @override
  Override overrideWith(
    FutureOr<void> Function(SetGeminiModelNameRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SetGeminiModelNameProvider._internal(
        (ref) => create(ref as SetGeminiModelNameRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        modelName: modelName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _SetGeminiModelNameProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SetGeminiModelNameProvider && other.modelName == modelName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, modelName.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SetGeminiModelNameRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `modelName` of this provider.
  String get modelName;
}

class _SetGeminiModelNameProviderElement
    extends AutoDisposeFutureProviderElement<void> with SetGeminiModelNameRef {
  _SetGeminiModelNameProviderElement(super.provider);

  @override
  String get modelName => (origin as SetGeminiModelNameProvider).modelName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
