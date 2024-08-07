// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deselect_cell.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$deselectAllCellHash() => r'aa0f8aace62fc8a14ede4ffc6da5f21a26411a38';

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

/// See also [deselectAllCell].
@ProviderFor(deselectAllCell)
const deselectAllCellProvider = DeselectAllCellFamily();

/// See also [deselectAllCell].
class DeselectAllCellFamily extends Family<AsyncValue<void>> {
  /// See also [deselectAllCell].
  const DeselectAllCellFamily();

  /// See also [deselectAllCell].
  DeselectAllCellProvider call({
    required CellParentId parentId,
  }) {
    return DeselectAllCellProvider(
      parentId: parentId,
    );
  }

  @override
  DeselectAllCellProvider getProviderOverride(
    covariant DeselectAllCellProvider provider,
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
  String? get name => r'deselectAllCellProvider';
}

/// See also [deselectAllCell].
class DeselectAllCellProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deselectAllCell].
  DeselectAllCellProvider({
    required CellParentId parentId,
  }) : this._internal(
          (ref) => deselectAllCell(
            ref as DeselectAllCellRef,
            parentId: parentId,
          ),
          from: deselectAllCellProvider,
          name: r'deselectAllCellProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deselectAllCellHash,
          dependencies: DeselectAllCellFamily._dependencies,
          allTransitiveDependencies:
              DeselectAllCellFamily._allTransitiveDependencies,
          parentId: parentId,
        );

  DeselectAllCellProvider._internal(
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
    FutureOr<void> Function(DeselectAllCellRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeselectAllCellProvider._internal(
        (ref) => create(ref as DeselectAllCellRef),
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
    return _DeselectAllCellProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeselectAllCellProvider && other.parentId == parentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeselectAllCellRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `parentId` of this provider.
  CellParentId get parentId;
}

class _DeselectAllCellProviderElement
    extends AutoDisposeFutureProviderElement<void> with DeselectAllCellRef {
  _DeselectAllCellProviderElement(super.provider);

  @override
  CellParentId get parentId => (origin as DeselectAllCellProvider).parentId;
}

String _$deselectCellHash() => r'53de07cef4ffd4472d85644418f5a5e47957671f';

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
    required Rect selection,
  }) {
    return DeselectCellProvider(
      parentId: parentId,
      selection: selection,
    );
  }

  @override
  DeselectCellProvider getProviderOverride(
    covariant DeselectCellProvider provider,
  ) {
    return call(
      parentId: provider.parentId,
      selection: provider.selection,
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
    required Rect selection,
  }) : this._internal(
          (ref) => deselectCell(
            ref as DeselectCellRef,
            parentId: parentId,
            selection: selection,
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
          selection: selection,
        );

  DeselectCellProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.parentId,
    required this.selection,
  }) : super.internal();

  final CellParentId parentId;
  final Rect selection;

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
        selection: selection,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _DeselectCellProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeselectCellProvider &&
        other.parentId == parentId &&
        other.selection == selection;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parentId.hashCode);
    hash = _SystemHash.combine(hash, selection.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeselectCellRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `parentId` of this provider.
  CellParentId get parentId;

  /// The parameter `selection` of this provider.
  Rect get selection;
}

class _DeselectCellProviderElement
    extends AutoDisposeFutureProviderElement<void> with DeselectCellRef {
  _DeselectCellProviderElement(super.provider);

  @override
  CellParentId get parentId => (origin as DeselectCellProvider).parentId;
  @override
  Rect get selection => (origin as DeselectCellProvider).selection;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
