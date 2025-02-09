// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_cell.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$selectAllCellHash() => r'6e9a09b682e345ebffedd0177473a04f01efa93e';

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

/// See also [selectAllCell].
@ProviderFor(selectAllCell)
const selectAllCellProvider = SelectAllCellFamily();

/// See also [selectAllCell].
class SelectAllCellFamily extends Family<AsyncValue<void>> {
  /// See also [selectAllCell].
  const SelectAllCellFamily();

  /// See also [selectAllCell].
  SelectAllCellProvider call({
    required CellParentId parentId,
  }) {
    return SelectAllCellProvider(
      parentId: parentId,
    );
  }

  @override
  SelectAllCellProvider getProviderOverride(
    covariant SelectAllCellProvider provider,
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
  String? get name => r'selectAllCellProvider';
}

/// See also [selectAllCell].
class SelectAllCellProvider extends AutoDisposeFutureProvider<void> {
  /// See also [selectAllCell].
  SelectAllCellProvider({
    required CellParentId parentId,
  }) : this._internal(
          (ref) => selectAllCell(
            ref as SelectAllCellRef,
            parentId: parentId,
          ),
          from: selectAllCellProvider,
          name: r'selectAllCellProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$selectAllCellHash,
          dependencies: SelectAllCellFamily._dependencies,
          allTransitiveDependencies:
              SelectAllCellFamily._allTransitiveDependencies,
          parentId: parentId,
        );

  SelectAllCellProvider._internal(
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
    FutureOr<void> Function(SelectAllCellRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SelectAllCellProvider._internal(
        (ref) => create(ref as SelectAllCellRef),
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
    return _SelectAllCellProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SelectAllCellProvider && other.parentId == parentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SelectAllCellRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `parentId` of this provider.
  CellParentId get parentId;
}

class _SelectAllCellProviderElement
    extends AutoDisposeFutureProviderElement<void> with SelectAllCellRef {
  _SelectAllCellProviderElement(super.provider);

  @override
  CellParentId get parentId => (origin as SelectAllCellProvider).parentId;
}

String _$selectCellHash() => r'd385addbfc0b90c1ceb18730fe2f6399ff3927df';

/// See also [selectCell].
@ProviderFor(selectCell)
const selectCellProvider = SelectCellFamily();

/// See also [selectCell].
class SelectCellFamily extends Family<AsyncValue<void>> {
  /// See also [selectCell].
  const SelectCellFamily();

  /// See also [selectCell].
  SelectCellProvider call({
    required CellParentId parentId,
    required Rect selection,
  }) {
    return SelectCellProvider(
      parentId: parentId,
      selection: selection,
    );
  }

  @override
  SelectCellProvider getProviderOverride(
    covariant SelectCellProvider provider,
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
  String? get name => r'selectCellProvider';
}

/// See also [selectCell].
class SelectCellProvider extends AutoDisposeFutureProvider<void> {
  /// See also [selectCell].
  SelectCellProvider({
    required CellParentId parentId,
    required Rect selection,
  }) : this._internal(
          (ref) => selectCell(
            ref as SelectCellRef,
            parentId: parentId,
            selection: selection,
          ),
          from: selectCellProvider,
          name: r'selectCellProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$selectCellHash,
          dependencies: SelectCellFamily._dependencies,
          allTransitiveDependencies:
              SelectCellFamily._allTransitiveDependencies,
          parentId: parentId,
          selection: selection,
        );

  SelectCellProvider._internal(
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
    FutureOr<void> Function(SelectCellRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SelectCellProvider._internal(
        (ref) => create(ref as SelectCellRef),
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
    return _SelectCellProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SelectCellProvider &&
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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SelectCellRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `parentId` of this provider.
  CellParentId get parentId;

  /// The parameter `selection` of this provider.
  Rect get selection;
}

class _SelectCellProviderElement extends AutoDisposeFutureProviderElement<void>
    with SelectCellRef {
  _SelectCellProviderElement(super.provider);

  @override
  CellParentId get parentId => (origin as SelectCellProvider).parentId;
  @override
  Rect get selection => (origin as SelectCellProvider).selection;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
