// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_whiteboard_by_id.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getWhiteboardByIdHash() => r'b41960a97d8dcfe295052fa0d2a99aa441a5fdff';

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

/// See also [getWhiteboardById].
@ProviderFor(getWhiteboardById)
const getWhiteboardByIdProvider = GetWhiteboardByIdFamily();

/// See also [getWhiteboardById].
class GetWhiteboardByIdFamily extends Family<AsyncValue<Whiteboard>> {
  /// See also [getWhiteboardById].
  const GetWhiteboardByIdFamily();

  /// See also [getWhiteboardById].
  GetWhiteboardByIdProvider call({
    required WhiteboardId id,
  }) {
    return GetWhiteboardByIdProvider(
      id: id,
    );
  }

  @override
  GetWhiteboardByIdProvider getProviderOverride(
    covariant GetWhiteboardByIdProvider provider,
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
  String? get name => r'getWhiteboardByIdProvider';
}

/// See also [getWhiteboardById].
class GetWhiteboardByIdProvider extends AutoDisposeStreamProvider<Whiteboard> {
  /// See also [getWhiteboardById].
  GetWhiteboardByIdProvider({
    required WhiteboardId id,
  }) : this._internal(
          (ref) => getWhiteboardById(
            ref as GetWhiteboardByIdRef,
            id: id,
          ),
          from: getWhiteboardByIdProvider,
          name: r'getWhiteboardByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getWhiteboardByIdHash,
          dependencies: GetWhiteboardByIdFamily._dependencies,
          allTransitiveDependencies:
              GetWhiteboardByIdFamily._allTransitiveDependencies,
          id: id,
        );

  GetWhiteboardByIdProvider._internal(
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
    Stream<Whiteboard> Function(GetWhiteboardByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetWhiteboardByIdProvider._internal(
        (ref) => create(ref as GetWhiteboardByIdRef),
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
  AutoDisposeStreamProviderElement<Whiteboard> createElement() {
    return _GetWhiteboardByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetWhiteboardByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetWhiteboardByIdRef on AutoDisposeStreamProviderRef<Whiteboard> {
  /// The parameter `id` of this provider.
  WhiteboardId get id;
}

class _GetWhiteboardByIdProviderElement
    extends AutoDisposeStreamProviderElement<Whiteboard>
    with GetWhiteboardByIdRef {
  _GetWhiteboardByIdProviderElement(super.provider);

  @override
  WhiteboardId get id => (origin as GetWhiteboardByIdProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member