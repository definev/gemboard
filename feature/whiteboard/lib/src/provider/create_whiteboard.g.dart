// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_whiteboard.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createWhiteboardHash() => r'f91706e3dd18840307b926c78ec7694bc55869ac';

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

/// See also [createWhiteboard].
@ProviderFor(createWhiteboard)
const createWhiteboardProvider = CreateWhiteboardFamily();

/// See also [createWhiteboard].
class CreateWhiteboardFamily extends Family<AsyncValue<void>> {
  /// See also [createWhiteboard].
  const CreateWhiteboardFamily();

  /// See also [createWhiteboard].
  CreateWhiteboardProvider call({
    required WhiteboardParentId parentId,
    required Whiteboard data,
  }) {
    return CreateWhiteboardProvider(
      parentId: parentId,
      data: data,
    );
  }

  @override
  CreateWhiteboardProvider getProviderOverride(
    covariant CreateWhiteboardProvider provider,
  ) {
    return call(
      parentId: provider.parentId,
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
  String? get name => r'createWhiteboardProvider';
}

/// See also [createWhiteboard].
class CreateWhiteboardProvider extends AutoDisposeFutureProvider<void> {
  /// See also [createWhiteboard].
  CreateWhiteboardProvider({
    required WhiteboardParentId parentId,
    required Whiteboard data,
  }) : this._internal(
          (ref) => createWhiteboard(
            ref as CreateWhiteboardRef,
            parentId: parentId,
            data: data,
          ),
          from: createWhiteboardProvider,
          name: r'createWhiteboardProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createWhiteboardHash,
          dependencies: CreateWhiteboardFamily._dependencies,
          allTransitiveDependencies:
              CreateWhiteboardFamily._allTransitiveDependencies,
          parentId: parentId,
          data: data,
        );

  CreateWhiteboardProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.parentId,
    required this.data,
  }) : super.internal();

  final WhiteboardParentId parentId;
  final Whiteboard data;

  @override
  Override overrideWith(
    FutureOr<void> Function(CreateWhiteboardRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateWhiteboardProvider._internal(
        (ref) => create(ref as CreateWhiteboardRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        parentId: parentId,
        data: data,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _CreateWhiteboardProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateWhiteboardProvider &&
        other.parentId == parentId &&
        other.data == data;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parentId.hashCode);
    hash = _SystemHash.combine(hash, data.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CreateWhiteboardRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `parentId` of this provider.
  WhiteboardParentId get parentId;

  /// The parameter `data` of this provider.
  Whiteboard get data;
}

class _CreateWhiteboardProviderElement
    extends AutoDisposeFutureProviderElement<void> with CreateWhiteboardRef {
  _CreateWhiteboardProviderElement(super.provider);

  @override
  WhiteboardParentId get parentId =>
      (origin as CreateWhiteboardProvider).parentId;
  @override
  Whiteboard get data => (origin as CreateWhiteboardProvider).data;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
