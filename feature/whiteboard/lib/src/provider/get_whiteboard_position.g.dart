// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_whiteboard_position.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getWhiteboardPositionHash() =>
    r'fdf3e08246e328a1e8df2a6ca9dfc02b0f476d9f';

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

/// See also [getWhiteboardPosition].
@ProviderFor(getWhiteboardPosition)
const getWhiteboardPositionProvider = GetWhiteboardPositionFamily();

/// See also [getWhiteboardPosition].
class GetWhiteboardPositionFamily
    extends Family<AsyncValue<WhiteboardPosition>> {
  /// See also [getWhiteboardPosition].
  const GetWhiteboardPositionFamily();

  /// See also [getWhiteboardPosition].
  GetWhiteboardPositionProvider call({
    required WhiteboardId id,
  }) {
    return GetWhiteboardPositionProvider(
      id: id,
    );
  }

  @override
  GetWhiteboardPositionProvider getProviderOverride(
    covariant GetWhiteboardPositionProvider provider,
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
  String? get name => r'getWhiteboardPositionProvider';
}

/// See also [getWhiteboardPosition].
class GetWhiteboardPositionProvider
    extends AutoDisposeFutureProvider<WhiteboardPosition> {
  /// See also [getWhiteboardPosition].
  GetWhiteboardPositionProvider({
    required WhiteboardId id,
  }) : this._internal(
          (ref) => getWhiteboardPosition(
            ref as GetWhiteboardPositionRef,
            id: id,
          ),
          from: getWhiteboardPositionProvider,
          name: r'getWhiteboardPositionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getWhiteboardPositionHash,
          dependencies: GetWhiteboardPositionFamily._dependencies,
          allTransitiveDependencies:
              GetWhiteboardPositionFamily._allTransitiveDependencies,
          id: id,
        );

  GetWhiteboardPositionProvider._internal(
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
    FutureOr<WhiteboardPosition> Function(GetWhiteboardPositionRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetWhiteboardPositionProvider._internal(
        (ref) => create(ref as GetWhiteboardPositionRef),
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
  AutoDisposeFutureProviderElement<WhiteboardPosition> createElement() {
    return _GetWhiteboardPositionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetWhiteboardPositionProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetWhiteboardPositionRef
    on AutoDisposeFutureProviderRef<WhiteboardPosition> {
  /// The parameter `id` of this provider.
  WhiteboardId get id;
}

class _GetWhiteboardPositionProviderElement
    extends AutoDisposeFutureProviderElement<WhiteboardPosition>
    with GetWhiteboardPositionRef {
  _GetWhiteboardPositionProviderElement(super.provider);

  @override
  WhiteboardId get id => (origin as GetWhiteboardPositionProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
