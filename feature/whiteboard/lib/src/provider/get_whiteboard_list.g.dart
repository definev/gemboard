// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_whiteboard_list.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getWhiteboardListHash() => r'd7b85dc58d752ed7372501bd41ef4ea6dd067239';

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

/// See also [getWhiteboardList].
@ProviderFor(getWhiteboardList)
const getWhiteboardListProvider = GetWhiteboardListFamily();

/// See also [getWhiteboardList].
class GetWhiteboardListFamily extends Family<AsyncValue<List<Whiteboard>>> {
  /// See also [getWhiteboardList].
  const GetWhiteboardListFamily();

  /// See also [getWhiteboardList].
  GetWhiteboardListProvider call({
    required WhiteboardParentId parentId,
  }) {
    return GetWhiteboardListProvider(
      parentId: parentId,
    );
  }

  @override
  GetWhiteboardListProvider getProviderOverride(
    covariant GetWhiteboardListProvider provider,
  ) {
    return call(
      parentId: provider.parentId,
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
  String? get name => r'getWhiteboardListProvider';
}

/// See also [getWhiteboardList].
class GetWhiteboardListProvider
    extends AutoDisposeFutureProvider<List<Whiteboard>> {
  /// See also [getWhiteboardList].
  GetWhiteboardListProvider({
    required WhiteboardParentId parentId,
  }) : this._internal(
          (ref) => getWhiteboardList(
            ref as GetWhiteboardListRef,
            parentId: parentId,
          ),
          from: getWhiteboardListProvider,
          name: r'getWhiteboardListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getWhiteboardListHash,
          dependencies: GetWhiteboardListFamily._dependencies,
          allTransitiveDependencies:
              GetWhiteboardListFamily._allTransitiveDependencies,
          parentId: parentId,
        );

  GetWhiteboardListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.parentId,
  }) : super.internal();

  final WhiteboardParentId parentId;

  @override
  Override overrideWith(
    FutureOr<List<Whiteboard>> Function(GetWhiteboardListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetWhiteboardListProvider._internal(
        (ref) => create(ref as GetWhiteboardListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        parentId: parentId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Whiteboard>> createElement() {
    return _GetWhiteboardListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetWhiteboardListProvider && other.parentId == parentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetWhiteboardListRef on AutoDisposeFutureProviderRef<List<Whiteboard>> {
  /// The parameter `parentId` of this provider.
  WhiteboardParentId get parentId;
}

class _GetWhiteboardListProviderElement
    extends AutoDisposeFutureProviderElement<List<Whiteboard>>
    with GetWhiteboardListRef {
  _GetWhiteboardListProviderElement(super.provider);

  @override
  WhiteboardParentId get parentId =>
      (origin as GetWhiteboardListProvider).parentId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
