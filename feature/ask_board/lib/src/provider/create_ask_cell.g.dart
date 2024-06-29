// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ask_cell.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createAskCellHash() => r'e9e4009733995e12594e338cdbdd0f1b458ac36e';

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

/// See also [createAskCell].
@ProviderFor(createAskCell)
const createAskCellProvider = CreateAskCellFamily();

/// See also [createAskCell].
class CreateAskCellFamily extends Family<AsyncValue<void>> {
  /// See also [createAskCell].
  const CreateAskCellFamily();

  /// See also [createAskCell].
  CreateAskCellProvider call({
    required AskCellParentId parentId,
    required AskCell data,
  }) {
    return CreateAskCellProvider(
      parentId: parentId,
      data: data,
    );
  }

  @override
  CreateAskCellProvider getProviderOverride(
    covariant CreateAskCellProvider provider,
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
  String? get name => r'createAskCellProvider';
}

/// See also [createAskCell].
class CreateAskCellProvider extends AutoDisposeFutureProvider<void> {
  /// See also [createAskCell].
  CreateAskCellProvider({
    required AskCellParentId parentId,
    required AskCell data,
  }) : this._internal(
          (ref) => createAskCell(
            ref as CreateAskCellRef,
            parentId: parentId,
            data: data,
          ),
          from: createAskCellProvider,
          name: r'createAskCellProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createAskCellHash,
          dependencies: CreateAskCellFamily._dependencies,
          allTransitiveDependencies:
              CreateAskCellFamily._allTransitiveDependencies,
          parentId: parentId,
          data: data,
        );

  CreateAskCellProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.parentId,
    required this.data,
  }) : super.internal();

  final AskCellParentId parentId;
  final AskCell data;

  @override
  Override overrideWith(
    FutureOr<void> Function(CreateAskCellRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateAskCellProvider._internal(
        (ref) => create(ref as CreateAskCellRef),
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
    return _CreateAskCellProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateAskCellProvider &&
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

mixin CreateAskCellRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `parentId` of this provider.
  AskCellParentId get parentId;

  /// The parameter `data` of this provider.
  AskCell get data;
}

class _CreateAskCellProviderElement
    extends AutoDisposeFutureProviderElement<void> with CreateAskCellRef {
  _CreateAskCellProviderElement(super.provider);

  @override
  AskCellParentId get parentId => (origin as CreateAskCellProvider).parentId;
  @override
  AskCell get data => (origin as CreateAskCellProvider).data;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
