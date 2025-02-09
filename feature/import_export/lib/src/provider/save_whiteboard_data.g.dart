// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_whiteboard_data.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$saveWhiteboardDataHash() =>
    r'be72d313eb81a7d4f3bc783a7912533183354fab';

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

/// See also [saveWhiteboardData].
@ProviderFor(saveWhiteboardData)
const saveWhiteboardDataProvider = SaveWhiteboardDataFamily();

/// See also [saveWhiteboardData].
class SaveWhiteboardDataFamily extends Family<AsyncValue<void>> {
  /// See also [saveWhiteboardData].
  const SaveWhiteboardDataFamily();

  /// See also [saveWhiteboardData].
  SaveWhiteboardDataProvider call({
    required WhiteboardFileData data,
    required FolderId? folderId,
  }) {
    return SaveWhiteboardDataProvider(
      data: data,
      folderId: folderId,
    );
  }

  @override
  SaveWhiteboardDataProvider getProviderOverride(
    covariant SaveWhiteboardDataProvider provider,
  ) {
    return call(
      data: provider.data,
      folderId: provider.folderId,
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
  String? get name => r'saveWhiteboardDataProvider';
}

/// See also [saveWhiteboardData].
class SaveWhiteboardDataProvider extends AutoDisposeFutureProvider<void> {
  /// See also [saveWhiteboardData].
  SaveWhiteboardDataProvider({
    required WhiteboardFileData data,
    required FolderId? folderId,
  }) : this._internal(
          (ref) => saveWhiteboardData(
            ref as SaveWhiteboardDataRef,
            data: data,
            folderId: folderId,
          ),
          from: saveWhiteboardDataProvider,
          name: r'saveWhiteboardDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$saveWhiteboardDataHash,
          dependencies: SaveWhiteboardDataFamily._dependencies,
          allTransitiveDependencies:
              SaveWhiteboardDataFamily._allTransitiveDependencies,
          data: data,
          folderId: folderId,
        );

  SaveWhiteboardDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.data,
    required this.folderId,
  }) : super.internal();

  final WhiteboardFileData data;
  final FolderId? folderId;

  @override
  Override overrideWith(
    FutureOr<void> Function(SaveWhiteboardDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SaveWhiteboardDataProvider._internal(
        (ref) => create(ref as SaveWhiteboardDataRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        data: data,
        folderId: folderId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _SaveWhiteboardDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SaveWhiteboardDataProvider &&
        other.data == data &&
        other.folderId == folderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, data.hashCode);
    hash = _SystemHash.combine(hash, folderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SaveWhiteboardDataRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `data` of this provider.
  WhiteboardFileData get data;

  /// The parameter `folderId` of this provider.
  FolderId? get folderId;
}

class _SaveWhiteboardDataProviderElement
    extends AutoDisposeFutureProviderElement<void> with SaveWhiteboardDataRef {
  _SaveWhiteboardDataProviderElement(super.provider);

  @override
  WhiteboardFileData get data => (origin as SaveWhiteboardDataProvider).data;
  @override
  FolderId? get folderId => (origin as SaveWhiteboardDataProvider).folderId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
