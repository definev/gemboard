// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compress_whiteboard_to_file.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$compressWhiteboardToJsonHash() =>
    r'58152dd958349e3222e1c52c743b270cc9989e95';

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

/// See also [compressWhiteboardToJson].
@ProviderFor(compressWhiteboardToJson)
const compressWhiteboardToJsonProvider = CompressWhiteboardToJsonFamily();

/// See also [compressWhiteboardToJson].
class CompressWhiteboardToJsonFamily
    extends Family<AsyncValue<Map<String, dynamic>>> {
  /// See also [compressWhiteboardToJson].
  const CompressWhiteboardToJsonFamily();

  /// See also [compressWhiteboardToJson].
  CompressWhiteboardToJsonProvider call({
    required WhiteboardId whiteboardId,
  }) {
    return CompressWhiteboardToJsonProvider(
      whiteboardId: whiteboardId,
    );
  }

  @override
  CompressWhiteboardToJsonProvider getProviderOverride(
    covariant CompressWhiteboardToJsonProvider provider,
  ) {
    return call(
      whiteboardId: provider.whiteboardId,
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
  String? get name => r'compressWhiteboardToJsonProvider';
}

/// See also [compressWhiteboardToJson].
class CompressWhiteboardToJsonProvider
    extends AutoDisposeFutureProvider<Map<String, dynamic>> {
  /// See also [compressWhiteboardToJson].
  CompressWhiteboardToJsonProvider({
    required WhiteboardId whiteboardId,
  }) : this._internal(
          (ref) => compressWhiteboardToJson(
            ref as CompressWhiteboardToJsonRef,
            whiteboardId: whiteboardId,
          ),
          from: compressWhiteboardToJsonProvider,
          name: r'compressWhiteboardToJsonProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$compressWhiteboardToJsonHash,
          dependencies: CompressWhiteboardToJsonFamily._dependencies,
          allTransitiveDependencies:
              CompressWhiteboardToJsonFamily._allTransitiveDependencies,
          whiteboardId: whiteboardId,
        );

  CompressWhiteboardToJsonProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.whiteboardId,
  }) : super.internal();

  final WhiteboardId whiteboardId;

  @override
  Override overrideWith(
    FutureOr<Map<String, dynamic>> Function(
            CompressWhiteboardToJsonRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CompressWhiteboardToJsonProvider._internal(
        (ref) => create(ref as CompressWhiteboardToJsonRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        whiteboardId: whiteboardId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Map<String, dynamic>> createElement() {
    return _CompressWhiteboardToJsonProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CompressWhiteboardToJsonProvider &&
        other.whiteboardId == whiteboardId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, whiteboardId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CompressWhiteboardToJsonRef
    on AutoDisposeFutureProviderRef<Map<String, dynamic>> {
  /// The parameter `whiteboardId` of this provider.
  WhiteboardId get whiteboardId;
}

class _CompressWhiteboardToJsonProviderElement
    extends AutoDisposeFutureProviderElement<Map<String, dynamic>>
    with CompressWhiteboardToJsonRef {
  _CompressWhiteboardToJsonProviderElement(super.provider);

  @override
  WhiteboardId get whiteboardId =>
      (origin as CompressWhiteboardToJsonProvider).whiteboardId;
}

String _$compressWhiteboardToFileHash() =>
    r'aa380f6f32919a5e65d9ee4485a8bdc00e03131a';

/// See also [compressWhiteboardToFile].
@ProviderFor(compressWhiteboardToFile)
const compressWhiteboardToFileProvider = CompressWhiteboardToFileFamily();

/// See also [compressWhiteboardToFile].
class CompressWhiteboardToFileFamily extends Family<AsyncValue<File>> {
  /// See also [compressWhiteboardToFile].
  const CompressWhiteboardToFileFamily();

  /// See also [compressWhiteboardToFile].
  CompressWhiteboardToFileProvider call({
    required String path,
    required String fileName,
    required WhiteboardId whiteboardId,
  }) {
    return CompressWhiteboardToFileProvider(
      path: path,
      fileName: fileName,
      whiteboardId: whiteboardId,
    );
  }

  @override
  CompressWhiteboardToFileProvider getProviderOverride(
    covariant CompressWhiteboardToFileProvider provider,
  ) {
    return call(
      path: provider.path,
      fileName: provider.fileName,
      whiteboardId: provider.whiteboardId,
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
  String? get name => r'compressWhiteboardToFileProvider';
}

/// See also [compressWhiteboardToFile].
class CompressWhiteboardToFileProvider extends AutoDisposeFutureProvider<File> {
  /// See also [compressWhiteboardToFile].
  CompressWhiteboardToFileProvider({
    required String path,
    required String fileName,
    required WhiteboardId whiteboardId,
  }) : this._internal(
          (ref) => compressWhiteboardToFile(
            ref as CompressWhiteboardToFileRef,
            path: path,
            fileName: fileName,
            whiteboardId: whiteboardId,
          ),
          from: compressWhiteboardToFileProvider,
          name: r'compressWhiteboardToFileProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$compressWhiteboardToFileHash,
          dependencies: CompressWhiteboardToFileFamily._dependencies,
          allTransitiveDependencies:
              CompressWhiteboardToFileFamily._allTransitiveDependencies,
          path: path,
          fileName: fileName,
          whiteboardId: whiteboardId,
        );

  CompressWhiteboardToFileProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.path,
    required this.fileName,
    required this.whiteboardId,
  }) : super.internal();

  final String path;
  final String fileName;
  final WhiteboardId whiteboardId;

  @override
  Override overrideWith(
    FutureOr<File> Function(CompressWhiteboardToFileRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CompressWhiteboardToFileProvider._internal(
        (ref) => create(ref as CompressWhiteboardToFileRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        path: path,
        fileName: fileName,
        whiteboardId: whiteboardId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<File> createElement() {
    return _CompressWhiteboardToFileProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CompressWhiteboardToFileProvider &&
        other.path == path &&
        other.fileName == fileName &&
        other.whiteboardId == whiteboardId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, path.hashCode);
    hash = _SystemHash.combine(hash, fileName.hashCode);
    hash = _SystemHash.combine(hash, whiteboardId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CompressWhiteboardToFileRef on AutoDisposeFutureProviderRef<File> {
  /// The parameter `path` of this provider.
  String get path;

  /// The parameter `fileName` of this provider.
  String get fileName;

  /// The parameter `whiteboardId` of this provider.
  WhiteboardId get whiteboardId;
}

class _CompressWhiteboardToFileProviderElement
    extends AutoDisposeFutureProviderElement<File>
    with CompressWhiteboardToFileRef {
  _CompressWhiteboardToFileProviderElement(super.provider);

  @override
  String get path => (origin as CompressWhiteboardToFileProvider).path;
  @override
  String get fileName => (origin as CompressWhiteboardToFileProvider).fileName;
  @override
  WhiteboardId get whiteboardId =>
      (origin as CompressWhiteboardToFileProvider).whiteboardId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
