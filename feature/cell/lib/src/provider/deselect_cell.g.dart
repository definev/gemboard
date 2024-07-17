// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deselect_cell.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$deselectCellHash() => r'6a3124a126118a76519546a7acd50e7a9d170fa1';

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

/// See also [deselectCell].
@ProviderFor(deselectCell)
const deselectCellProvider = DeselectCellFamily();

/// See also [deselectCell].
class DeselectCellFamily extends Family<AsyncValue<void>> {
  /// See also [deselectCell].
  const DeselectCellFamily();

  /// See also [deselectCell].
  DeselectCellProvider call({
    required CellParentId parentId,
  }) {
    return DeselectCellProvider(
      parentId: parentId,
    );
  }

  @override
  DeselectCellProvider getProviderOverride(
    covariant DeselectCellProvider provider,
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
  String? get name => r'deselectCellProvider';
}

/// See also [deselectCell].
class DeselectCellProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deselectCell].
  DeselectCellProvider({
    required CellParentId parentId,
  }) : this._internal(
          (ref) => deselectCell(
            ref as DeselectCellRef,
            parentId: parentId,
          ),
          from: deselectCellProvider,
          name: r'deselectCellProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deselectCellHash,
          dependencies: DeselectCellFamily._dependencies,
          allTransitiveDependencies:
              DeselectCellFamily._allTransitiveDependencies,
          parentId: parentId,
        );

  DeselectCellProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.parentId,
  }) : super.internal();

  final CellParentId parentId;

  @override
  Override overrideWith(
    FutureOr<void> Function(DeselectCellRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeselectCellProvider._internal(
        (ref) => create(ref as DeselectCellRef),
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
  AutoDisposeFutureProviderElement<void> createElement() {
    return _DeselectCellProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeselectCellProvider && other.parentId == parentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeselectCellRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `parentId` of this provider.
  CellParentId get parentId;
}

class _DeselectCellProviderElement
    extends AutoDisposeFutureProviderElement<void> with DeselectCellRef {
  _DeselectCellProviderElement(super.provider);

  @override
  CellParentId get parentId => (origin as DeselectCellProvider).parentId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
