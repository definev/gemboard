// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decompress_whiteboard_data.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$decompressWhiteboardDataHash() =>
    r'785a30220402e20150f19bfe0d0d71b556e1853c';

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

/// See also [decompressWhiteboardData].
@ProviderFor(decompressWhiteboardData)
const decompressWhiteboardDataProvider = DecompressWhiteboardDataFamily();

/// See also [decompressWhiteboardData].
class DecompressWhiteboardDataFamily
    extends Family<AsyncValue<WhiteboardFileData>> {
  /// See also [decompressWhiteboardData].
  const DecompressWhiteboardDataFamily();

  /// See also [decompressWhiteboardData].
  DecompressWhiteboardDataProvider call({
    required Map<String, dynamic> data,
  }) {
    return DecompressWhiteboardDataProvider(
      data: data,
    );
  }

  @override
  DecompressWhiteboardDataProvider getProviderOverride(
    covariant DecompressWhiteboardDataProvider provider,
  ) {
    return call(
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
  String? get name => r'decompressWhiteboardDataProvider';
}

/// See also [decompressWhiteboardData].
class DecompressWhiteboardDataProvider
    extends AutoDisposeFutureProvider<WhiteboardFileData> {
  /// See also [decompressWhiteboardData].
  DecompressWhiteboardDataProvider({
    required Map<String, dynamic> data,
  }) : this._internal(
          (ref) => decompressWhiteboardData(
            ref as DecompressWhiteboardDataRef,
            data: data,
          ),
          from: decompressWhiteboardDataProvider,
          name: r'decompressWhiteboardDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$decompressWhiteboardDataHash,
          dependencies: DecompressWhiteboardDataFamily._dependencies,
          allTransitiveDependencies:
              DecompressWhiteboardDataFamily._allTransitiveDependencies,
          data: data,
        );

  DecompressWhiteboardDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.data,
  }) : super.internal();

  final Map<String, dynamic> data;

  @override
  Override overrideWith(
    FutureOr<WhiteboardFileData> Function(DecompressWhiteboardDataRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DecompressWhiteboardDataProvider._internal(
        (ref) => create(ref as DecompressWhiteboardDataRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        data: data,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<WhiteboardFileData> createElement() {
    return _DecompressWhiteboardDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DecompressWhiteboardDataProvider && other.data == data;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, data.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DecompressWhiteboardDataRef
    on AutoDisposeFutureProviderRef<WhiteboardFileData> {
  /// The parameter `data` of this provider.
  Map<String, dynamic> get data;
}

class _DecompressWhiteboardDataProviderElement
    extends AutoDisposeFutureProviderElement<WhiteboardFileData>
    with DecompressWhiteboardDataRef {
  _DecompressWhiteboardDataProviderElement(super.provider);

  @override
  Map<String, dynamic> get data =>
      (origin as DecompressWhiteboardDataProvider).data;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
