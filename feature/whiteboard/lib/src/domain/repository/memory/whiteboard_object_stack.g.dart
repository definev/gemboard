// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'whiteboard_object_stack.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$whiteboardObjectStackMemoryHash() =>
    r'02d3b40e4fff2b478d0558840aa633184b48d21c';

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

/// See also [whiteboardObjectStackMemory].
@ProviderFor(whiteboardObjectStackMemory)
const whiteboardObjectStackMemoryProvider = WhiteboardObjectStackMemoryFamily();

/// See also [whiteboardObjectStackMemory].
class WhiteboardObjectStackMemoryFamily
    extends Family<WhiteboardObjectStackMemory> {
  /// See also [whiteboardObjectStackMemory].
  const WhiteboardObjectStackMemoryFamily();

  /// See also [whiteboardObjectStackMemory].
  WhiteboardObjectStackMemoryProvider call({
    required String whiteboardId,
  }) {
    return WhiteboardObjectStackMemoryProvider(
      whiteboardId: whiteboardId,
    );
  }

  @override
  WhiteboardObjectStackMemoryProvider getProviderOverride(
    covariant WhiteboardObjectStackMemoryProvider provider,
  ) {
    return call(
      whiteboardId: provider.whiteboardId,
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
  String? get name => r'whiteboardObjectStackMemoryProvider';
}

/// See also [whiteboardObjectStackMemory].
class WhiteboardObjectStackMemoryProvider
    extends AutoDisposeProvider<WhiteboardObjectStackMemory> {
  /// See also [whiteboardObjectStackMemory].
  WhiteboardObjectStackMemoryProvider({
    required String whiteboardId,
  }) : this._internal(
          (ref) => whiteboardObjectStackMemory(
            ref as WhiteboardObjectStackMemoryRef,
            whiteboardId: whiteboardId,
          ),
          from: whiteboardObjectStackMemoryProvider,
          name: r'whiteboardObjectStackMemoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$whiteboardObjectStackMemoryHash,
          dependencies: WhiteboardObjectStackMemoryFamily._dependencies,
          allTransitiveDependencies:
              WhiteboardObjectStackMemoryFamily._allTransitiveDependencies,
          whiteboardId: whiteboardId,
        );

  WhiteboardObjectStackMemoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.whiteboardId,
  }) : super.internal();

  final String whiteboardId;

  @override
  Override overrideWith(
    WhiteboardObjectStackMemory Function(
            WhiteboardObjectStackMemoryRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WhiteboardObjectStackMemoryProvider._internal(
        (ref) => create(ref as WhiteboardObjectStackMemoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        whiteboardId: whiteboardId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<WhiteboardObjectStackMemory> createElement() {
    return _WhiteboardObjectStackMemoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WhiteboardObjectStackMemoryProvider &&
        other.whiteboardId == whiteboardId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, whiteboardId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WhiteboardObjectStackMemoryRef
    on AutoDisposeProviderRef<WhiteboardObjectStackMemory> {
  /// The parameter `whiteboardId` of this provider.
  String get whiteboardId;
}

class _WhiteboardObjectStackMemoryProviderElement
    extends AutoDisposeProviderElement<WhiteboardObjectStackMemory>
    with WhiteboardObjectStackMemoryRef {
  _WhiteboardObjectStackMemoryProviderElement(super.provider);

  @override
  String get whiteboardId =>
      (origin as WhiteboardObjectStackMemoryProvider).whiteboardId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
