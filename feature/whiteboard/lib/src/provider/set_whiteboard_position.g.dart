// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_whiteboard_position.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$setWhiteboardPositionHash() =>
    r'9457d8c6e7841b5e54f27064d903a87dca5535b7';

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

/// See also [setWhiteboardPosition].
@ProviderFor(setWhiteboardPosition)
const setWhiteboardPositionProvider = SetWhiteboardPositionFamily();

/// See also [setWhiteboardPosition].
class SetWhiteboardPositionFamily extends Family<AsyncValue<void>> {
  /// See also [setWhiteboardPosition].
  const SetWhiteboardPositionFamily();

  /// See also [setWhiteboardPosition].
  SetWhiteboardPositionProvider call({
    required WhiteboardId id,
    required WhiteboardPosition position,
  }) {
    return SetWhiteboardPositionProvider(
      id: id,
      position: position,
    );
  }

  @override
  SetWhiteboardPositionProvider getProviderOverride(
    covariant SetWhiteboardPositionProvider provider,
  ) {
    return call(
      id: provider.id,
      position: provider.position,
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
  String? get name => r'setWhiteboardPositionProvider';
}

/// See also [setWhiteboardPosition].
class SetWhiteboardPositionProvider extends AutoDisposeFutureProvider<void> {
  /// See also [setWhiteboardPosition].
  SetWhiteboardPositionProvider({
    required WhiteboardId id,
    required WhiteboardPosition position,
  }) : this._internal(
          (ref) => setWhiteboardPosition(
            ref as SetWhiteboardPositionRef,
            id: id,
            position: position,
          ),
          from: setWhiteboardPositionProvider,
          name: r'setWhiteboardPositionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$setWhiteboardPositionHash,
          dependencies: SetWhiteboardPositionFamily._dependencies,
          allTransitiveDependencies:
              SetWhiteboardPositionFamily._allTransitiveDependencies,
          id: id,
          position: position,
        );

  SetWhiteboardPositionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.position,
  }) : super.internal();

  final WhiteboardId id;
  final WhiteboardPosition position;

  @override
  Override overrideWith(
    FutureOr<void> Function(SetWhiteboardPositionRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SetWhiteboardPositionProvider._internal(
        (ref) => create(ref as SetWhiteboardPositionRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        position: position,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _SetWhiteboardPositionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SetWhiteboardPositionProvider &&
        other.id == id &&
        other.position == position;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, position.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SetWhiteboardPositionRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `id` of this provider.
  WhiteboardId get id;

  /// The parameter `position` of this provider.
  WhiteboardPosition get position;
}

class _SetWhiteboardPositionProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with SetWhiteboardPositionRef {
  _SetWhiteboardPositionProviderElement(super.provider);

  @override
  WhiteboardId get id => (origin as SetWhiteboardPositionProvider).id;
  @override
  WhiteboardPosition get position =>
      (origin as SetWhiteboardPositionProvider).position;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
