// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ask_page_list.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getAskPageListHash() => r'161e11d74349cb9acc94deaf226e72138bcab3b4';

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

/// See also [getAskPageList].
@ProviderFor(getAskPageList)
const getAskPageListProvider = GetAskPageListFamily();

/// See also [getAskPageList].
class GetAskPageListFamily extends Family<AsyncValue<List<AskPage>>> {
  /// See also [getAskPageList].
  const GetAskPageListFamily();

  /// See also [getAskPageList].
  GetAskPageListProvider call(
    AskPageParentId parentId,
  ) {
    return GetAskPageListProvider(
      parentId,
    );
  }

  @override
  GetAskPageListProvider getProviderOverride(
    covariant GetAskPageListProvider provider,
  ) {
    return call(
      provider.parentId,
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
  String? get name => r'getAskPageListProvider';
}

/// See also [getAskPageList].
class GetAskPageListProvider extends AutoDisposeFutureProvider<List<AskPage>> {
  /// See also [getAskPageList].
  GetAskPageListProvider(
    AskPageParentId parentId,
  ) : this._internal(
          (ref) => getAskPageList(
            ref as GetAskPageListRef,
            parentId,
          ),
          from: getAskPageListProvider,
          name: r'getAskPageListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAskPageListHash,
          dependencies: GetAskPageListFamily._dependencies,
          allTransitiveDependencies:
              GetAskPageListFamily._allTransitiveDependencies,
          parentId: parentId,
        );

  GetAskPageListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.parentId,
  }) : super.internal();

  final AskPageParentId parentId;

  @override
  Override overrideWith(
    FutureOr<List<AskPage>> Function(GetAskPageListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAskPageListProvider._internal(
        (ref) => create(ref as GetAskPageListRef),
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
  AutoDisposeFutureProviderElement<List<AskPage>> createElement() {
    return _GetAskPageListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAskPageListProvider && other.parentId == parentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetAskPageListRef on AutoDisposeFutureProviderRef<List<AskPage>> {
  /// The parameter `parentId` of this provider.
  AskPageParentId get parentId;
}

class _GetAskPageListProviderElement
    extends AutoDisposeFutureProviderElement<List<AskPage>>
    with GetAskPageListRef {
  _GetAskPageListProviderElement(super.provider);

  @override
  AskPageParentId get parentId => (origin as GetAskPageListProvider).parentId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
