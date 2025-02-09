// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'whiteboard_object_stack.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$whiteboardObjectStackHash() =>
    r'2651b810072acb45c14706372158aa9be7d703be';

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

/// See also [whiteboardObjectStack].
@ProviderFor(whiteboardObjectStack)
const whiteboardObjectStackProvider = WhiteboardObjectStackFamily();

/// See also [whiteboardObjectStack].
class WhiteboardObjectStackFamily extends Family<WhiteboardObjectStack> {
  /// See also [whiteboardObjectStack].
  const WhiteboardObjectStackFamily();

  /// See also [whiteboardObjectStack].
  WhiteboardObjectStackProvider call({
    required String whiteboardId,
  }) {
    return WhiteboardObjectStackProvider(
      whiteboardId: whiteboardId,
    );
  }

  @override
  WhiteboardObjectStackProvider getProviderOverride(
    covariant WhiteboardObjectStackProvider provider,
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
  String? get name => r'whiteboardObjectStackProvider';
}

/// See also [whiteboardObjectStack].
class WhiteboardObjectStackProvider
    extends AutoDisposeProvider<WhiteboardObjectStack> {
  /// See also [whiteboardObjectStack].
  WhiteboardObjectStackProvider({
    required String whiteboardId,
  }) : this._internal(
          (ref) => whiteboardObjectStack(
            ref as WhiteboardObjectStackRef,
            whiteboardId: whiteboardId,
          ),
          from: whiteboardObjectStackProvider,
          name: r'whiteboardObjectStackProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$whiteboardObjectStackHash,
          dependencies: WhiteboardObjectStackFamily._dependencies,
          allTransitiveDependencies:
              WhiteboardObjectStackFamily._allTransitiveDependencies,
          whiteboardId: whiteboardId,
        );

  WhiteboardObjectStackProvider._internal(
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
    WhiteboardObjectStack Function(WhiteboardObjectStackRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WhiteboardObjectStackProvider._internal(
        (ref) => create(ref as WhiteboardObjectStackRef),
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
  AutoDisposeProviderElement<WhiteboardObjectStack> createElement() {
    return _WhiteboardObjectStackProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WhiteboardObjectStackProvider &&
        other.whiteboardId == whiteboardId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, whiteboardId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WhiteboardObjectStackRef
    on AutoDisposeProviderRef<WhiteboardObjectStack> {
  /// The parameter `whiteboardId` of this provider.
  String get whiteboardId;
}

class _WhiteboardObjectStackProviderElement
    extends AutoDisposeProviderElement<WhiteboardObjectStack>
    with WhiteboardObjectStackRef {
  _WhiteboardObjectStackProviderElement(super.provider);

  @override
  String get whiteboardId =>
      (origin as WhiteboardObjectStackProvider).whiteboardId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
