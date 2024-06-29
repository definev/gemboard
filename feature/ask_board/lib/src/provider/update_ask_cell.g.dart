// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_ask_cell.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$updateAskCellHash() => r'b6689f541be32d2a891d9797b3140e6057569a33';

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

/// See also [updateAskCell].
@ProviderFor(updateAskCell)
const updateAskCellProvider = UpdateAskCellFamily();

/// See also [updateAskCell].
class UpdateAskCellFamily extends Family<AsyncValue<void>> {
  /// See also [updateAskCell].
  const UpdateAskCellFamily();

  /// See also [updateAskCell].
  UpdateAskCellProvider call({
    required AskCellId id,
    required AskCell data,
  }) {
    return UpdateAskCellProvider(
      id: id,
      data: data,
    );
  }

  @override
  UpdateAskCellProvider getProviderOverride(
    covariant UpdateAskCellProvider provider,
  ) {
    return call(
      id: provider.id,
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
  String? get name => r'updateAskCellProvider';
}

/// See also [updateAskCell].
class UpdateAskCellProvider extends AutoDisposeFutureProvider<void> {
  /// See also [updateAskCell].
  UpdateAskCellProvider({
    required AskCellId id,
    required AskCell data,
  }) : this._internal(
          (ref) => updateAskCell(
            ref as UpdateAskCellRef,
            id: id,
            data: data,
          ),
          from: updateAskCellProvider,
          name: r'updateAskCellProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateAskCellHash,
          dependencies: UpdateAskCellFamily._dependencies,
          allTransitiveDependencies:
              UpdateAskCellFamily._allTransitiveDependencies,
          id: id,
          data: data,
        );

  UpdateAskCellProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.data,
  }) : super.internal();

  final AskCellId id;
  final AskCell data;

  @override
  Override overrideWith(
    FutureOr<void> Function(UpdateAskCellRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateAskCellProvider._internal(
        (ref) => create(ref as UpdateAskCellRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        data: data,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _UpdateAskCellProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateAskCellProvider &&
        other.id == id &&
        other.data == data;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, data.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateAskCellRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `id` of this provider.
  AskCellId get id;

  /// The parameter `data` of this provider.
  AskCell get data;
}

class _UpdateAskCellProviderElement
    extends AutoDisposeFutureProviderElement<void> with UpdateAskCellRef {
  _UpdateAskCellProviderElement(super.provider);

  @override
  AskCellId get id => (origin as UpdateAskCellProvider).id;
  @override
  AskCell get data => (origin as UpdateAskCellProvider).data;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
