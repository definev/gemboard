// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_cell.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$selectCellHash() => r'1f24dbbc3164cfe4d611c705c904e221b9110b1d';

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
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
