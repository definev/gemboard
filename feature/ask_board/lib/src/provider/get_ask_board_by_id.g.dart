// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ask_board_by_id.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getAskBoardByIdHash() => r'ad24ac247cba6db5b9c739eccae6473d2b5f4b25';

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

/// See also [getAskBoardById].
@ProviderFor(getAskBoardById)
const getAskBoardByIdProvider = GetAskBoardByIdFamily();

/// See also [getAskBoardById].
class GetAskBoardByIdFamily extends Family<AsyncValue<AskBoard>> {
  /// See also [getAskBoardById].
  const GetAskBoardByIdFamily();

  /// See also [getAskBoardById].
  GetAskBoardByIdProvider call(
    String id,
  ) {
    return GetAskBoardByIdProvider(
      id,
    );
  }

  @override
  GetAskBoardByIdProvider getProviderOverride(
    covariant GetAskBoardByIdProvider provider,
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
  String? get name => r'getAskBoardByIdProvider';
}

/// See also [getAskBoardById].
class GetAskBoardByIdProvider extends AutoDisposeFutureProvider<AskBoard> {
  /// See also [getAskBoardById].
  GetAskBoardByIdProvider(
    String id,
  ) : this._internal(
          (ref) => getAskBoardById(
            ref as GetAskBoardByIdRef,
            id,
          ),
          from: getAskBoardByIdProvider,
          name: r'getAskBoardByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAskBoardByIdHash,
          dependencies: GetAskBoardByIdFamily._dependencies,
          allTransitiveDependencies:
              GetAskBoardByIdFamily._allTransitiveDependencies,
          id: id,
        );

  GetAskBoardByIdProvider._internal(
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
    FutureOr<AskBoard> Function(GetAskBoardByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAskBoardByIdProvider._internal(
        (ref) => create(ref as GetAskBoardByIdRef),
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
  AutoDisposeFutureProviderElement<AskBoard> createElement() {
    return _GetAskBoardByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAskBoardByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetAskBoardByIdRef on AutoDisposeFutureProviderRef<AskBoard> {
  /// The parameter `id` of this provider.
  String get id;
}

class _GetAskBoardByIdProviderElement
    extends AutoDisposeFutureProviderElement<AskBoard> with GetAskBoardByIdRef {
  _GetAskBoardByIdProviderElement(super.provider);

  @override
  String get id => (origin as GetAskBoardByIdProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
