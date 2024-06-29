// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ask_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createAskPageHash() => r'01d2387bbf40067d0d6152a7a6b4345b26435cc9';

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

/// See also [createAskPage].
@ProviderFor(createAskPage)
const createAskPageProvider = CreateAskPageFamily();

/// See also [createAskPage].
class CreateAskPageFamily extends Family<AsyncValue<void>> {
  /// See also [createAskPage].
  const CreateAskPageFamily();

  /// See also [createAskPage].
  CreateAskPageProvider call({
    required AskPageParentId parentId,
    required AskPage data,
  }) {
    return CreateAskPageProvider(
      parentId: parentId,
      data: data,
    );
  }

  @override
  CreateAskPageProvider getProviderOverride(
    covariant CreateAskPageProvider provider,
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
  String? get name => r'createAskPageProvider';
}

/// See also [createAskPage].
class CreateAskPageProvider extends AutoDisposeFutureProvider<void> {
  /// See also [createAskPage].
  CreateAskPageProvider({
    required AskPageParentId parentId,
    required AskPage data,
  }) : this._internal(
          (ref) => createAskPage(
            ref as CreateAskPageRef,
            parentId: parentId,
            data: data,
          ),
          from: createAskPageProvider,
          name: r'createAskPageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createAskPageHash,
          dependencies: CreateAskPageFamily._dependencies,
          allTransitiveDependencies:
              CreateAskPageFamily._allTransitiveDependencies,
          parentId: parentId,
          data: data,
        );

  CreateAskPageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.parentId,
    required this.data,
  }) : super.internal();

  final AskPageParentId parentId;
  final AskPage data;

  @override
  Override overrideWith(
    FutureOr<void> Function(CreateAskPageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateAskPageProvider._internal(
        (ref) => create(ref as CreateAskPageRef),
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
    return _CreateAskPageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateAskPageProvider &&
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

mixin CreateAskPageRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `parentId` of this provider.
  AskPageParentId get parentId;

  /// The parameter `data` of this provider.
  AskPage get data;
}

class _CreateAskPageProviderElement
    extends AutoDisposeFutureProviderElement<void> with CreateAskPageRef {
  _CreateAskPageProviderElement(super.provider);

  @override
  AskPageParentId get parentId => (origin as CreateAskPageProvider).parentId;
  @override
  AskPage get data => (origin as CreateAskPageProvider).data;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
