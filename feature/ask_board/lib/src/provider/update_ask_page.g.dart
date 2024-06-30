// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_ask_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$updateAskPageHash() => r'7ed0bf5ec233a56d4f3e73582609805601e9bfe3';

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

/// See also [updateAskPage].
@ProviderFor(updateAskPage)
const updateAskPageProvider = UpdateAskPageFamily();

/// See also [updateAskPage].
class UpdateAskPageFamily extends Family<AsyncValue<void>> {
  /// See also [updateAskPage].
  const UpdateAskPageFamily();

  /// See also [updateAskPage].
  UpdateAskPageProvider call({
    required AskPageId id,
    required AskPage data,
  }) {
    return UpdateAskPageProvider(
      id: id,
      data: data,
    );
  }

  @override
  UpdateAskPageProvider getProviderOverride(
    covariant UpdateAskPageProvider provider,
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
  String? get name => r'updateAskPageProvider';
}

/// See also [updateAskPage].
class UpdateAskPageProvider extends AutoDisposeFutureProvider<void> {
  /// See also [updateAskPage].
  UpdateAskPageProvider({
    required AskPageId id,
    required AskPage data,
  }) : this._internal(
          (ref) => updateAskPage(
            ref as UpdateAskPageRef,
            id: id,
            data: data,
          ),
          from: updateAskPageProvider,
          name: r'updateAskPageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateAskPageHash,
          dependencies: UpdateAskPageFamily._dependencies,
          allTransitiveDependencies:
              UpdateAskPageFamily._allTransitiveDependencies,
          id: id,
          data: data,
        );

  UpdateAskPageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.data,
  }) : super.internal();

  final AskPageId id;
  final AskPage data;

  @override
  Override overrideWith(
    FutureOr<void> Function(UpdateAskPageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateAskPageProvider._internal(
        (ref) => create(ref as UpdateAskPageRef),
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
    return _UpdateAskPageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateAskPageProvider &&
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

mixin UpdateAskPageRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `id` of this provider.
  AskPageId get id;

  /// The parameter `data` of this provider.
  AskPage get data;
}

class _UpdateAskPageProviderElement
    extends AutoDisposeFutureProviderElement<void> with UpdateAskPageRef {
  _UpdateAskPageProviderElement(super.provider);

  @override
  AskPageId get id => (origin as UpdateAskPageProvider).id;
  @override
  AskPage get data => (origin as UpdateAskPageProvider).data;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
