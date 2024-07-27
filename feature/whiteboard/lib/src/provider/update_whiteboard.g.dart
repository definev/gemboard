// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_whiteboard.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$updateWhiteboardHash() => r'a7620ae8711a2e7fb590cf824678669f094adf78';

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

/// See also [updateWhiteboard].
@ProviderFor(updateWhiteboard)
const updateWhiteboardProvider = UpdateWhiteboardFamily();

/// See also [updateWhiteboard].
class UpdateWhiteboardFamily extends Family<AsyncValue<void>> {
  /// See also [updateWhiteboard].
  const UpdateWhiteboardFamily();

  /// See also [updateWhiteboard].
  UpdateWhiteboardProvider call({
    required WhiteboardId id,
    required Whiteboard data,
  }) {
    return UpdateWhiteboardProvider(
      id: id,
      data: data,
    );
  }

  @override
  UpdateWhiteboardProvider getProviderOverride(
    covariant UpdateWhiteboardProvider provider,
  ) {
    return call(
      id: provider.id,
      data: provider.data,
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
  String? get name => r'updateWhiteboardProvider';
}

/// See also [updateWhiteboard].
class UpdateWhiteboardProvider extends AutoDisposeFutureProvider<void> {
  /// See also [updateWhiteboard].
  UpdateWhiteboardProvider({
    required WhiteboardId id,
    required Whiteboard data,
  }) : this._internal(
          (ref) => updateWhiteboard(
            ref as UpdateWhiteboardRef,
            id: id,
            data: data,
          ),
          from: updateWhiteboardProvider,
          name: r'updateWhiteboardProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateWhiteboardHash,
          dependencies: UpdateWhiteboardFamily._dependencies,
          allTransitiveDependencies:
              UpdateWhiteboardFamily._allTransitiveDependencies,
          id: id,
          data: data,
        );

  UpdateWhiteboardProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.data,
  }) : super.internal();

  final WhiteboardId id;
  final Whiteboard data;

  @override
  Override overrideWith(
    FutureOr<void> Function(UpdateWhiteboardRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateWhiteboardProvider._internal(
        (ref) => create(ref as UpdateWhiteboardRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        data: data,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _UpdateWhiteboardProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateWhiteboardProvider &&
        other.id == id &&
        other.data == data;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, data.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateWhiteboardRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `id` of this provider.
  WhiteboardId get id;

  /// The parameter `data` of this provider.
  Whiteboard get data;
}

class _UpdateWhiteboardProviderElement
    extends AutoDisposeFutureProviderElement<void> with UpdateWhiteboardRef {
  _UpdateWhiteboardProviderElement(super.provider);

  @override
  WhiteboardId get id => (origin as UpdateWhiteboardProvider).id;
  @override
  Whiteboard get data => (origin as UpdateWhiteboardProvider).data;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
