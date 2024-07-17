// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_cell.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createCellHash() => r'c29fe74d1cd0bb45c11c17ee8a07293b904dd885';

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

/// See also [createCell].
@ProviderFor(createCell)
const createCellProvider = CreateCellFamily();

/// See also [createCell].
class CreateCellFamily extends Family<AsyncValue<void>> {
  /// See also [createCell].
  const CreateCellFamily();

  /// See also [createCell].
  CreateCellProvider call({
    required CellParentId parentId,
    required Cell data,
  }) {
    return CreateCellProvider(
      parentId: parentId,
      data: data,
    );
  }

  @override
  CreateCellProvider getProviderOverride(
    covariant CreateCellProvider provider,
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
  String? get name => r'createCellProvider';
}

/// See also [createCell].
class CreateCellProvider extends AutoDisposeFutureProvider<void> {
  /// See also [createCell].
  CreateCellProvider({
    required CellParentId parentId,
    required Cell data,
  }) : this._internal(
          (ref) => createCell(
            ref as CreateCellRef,
            parentId: parentId,
            data: data,
          ),
          from: createCellProvider,
          name: r'createCellProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createCellHash,
          dependencies: CreateCellFamily._dependencies,
          allTransitiveDependencies:
              CreateCellFamily._allTransitiveDependencies,
          parentId: parentId,
          data: data,
        );

  CreateCellProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.parentId,
    required this.data,
  }) : super.internal();

  final CellParentId parentId;
  final Cell data;

  @override
  Override overrideWith(
    FutureOr<void> Function(CreateCellRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateCellProvider._internal(
        (ref) => create(ref as CreateCellRef),
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
    return _CreateCellProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateCellProvider &&
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

mixin CreateCellRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `parentId` of this provider.
  CellParentId get parentId;

  /// The parameter `data` of this provider.
  Cell get data;
}

class _CreateCellProviderElement extends AutoDisposeFutureProviderElement<void>
    with CreateCellRef {
  _CreateCellProviderElement(super.provider);

  @override
  CellParentId get parentId => (origin as CreateCellProvider).parentId;
  @override
  Cell get data => (origin as CreateCellProvider).data;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
