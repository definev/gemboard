// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_content_stream.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$generateContentStreamHash() =>
    r'74b10bb0747cee88ba3885dc7f3bff0a46ba2659';

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

/// See also [generateContentStream].
@ProviderFor(generateContentStream)
const generateContentStreamProvider = GenerateContentStreamFamily();

/// See also [generateContentStream].
class GenerateContentStreamFamily
    extends Family<Raw<Stream<GenerateContentResponse>>> {
  /// See also [generateContentStream].
  const GenerateContentStreamFamily();

  /// See also [generateContentStream].
  GenerateContentStreamProvider call({
    GeminiConfiguration configuration = GeminiConfiguration.flashModel,
    required List<CoreData> coreDataList,
  }) {
    return GenerateContentStreamProvider(
      configuration: configuration,
      coreDataList: coreDataList,
    );
  }

  @override
  GenerateContentStreamProvider getProviderOverride(
    covariant GenerateContentStreamProvider provider,
  ) {
    return call(
      configuration: provider.configuration,
      coreDataList: provider.coreDataList,
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
  String? get name => r'generateContentStreamProvider';
}

/// See also [generateContentStream].
class GenerateContentStreamProvider
    extends AutoDisposeProvider<Raw<Stream<GenerateContentResponse>>> {
  /// See also [generateContentStream].
  GenerateContentStreamProvider({
    GeminiConfiguration configuration = GeminiConfiguration.flashModel,
    required List<CoreData> coreDataList,
  }) : this._internal(
          (ref) => generateContentStream(
            ref as GenerateContentStreamRef,
            configuration: configuration,
            coreDataList: coreDataList,
          ),
          from: generateContentStreamProvider,
          name: r'generateContentStreamProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$generateContentStreamHash,
          dependencies: GenerateContentStreamFamily._dependencies,
          allTransitiveDependencies:
              GenerateContentStreamFamily._allTransitiveDependencies,
          configuration: configuration,
          coreDataList: coreDataList,
        );

  GenerateContentStreamProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.configuration,
    required this.coreDataList,
  }) : super.internal();

  final GeminiConfiguration configuration;
  final List<CoreData> coreDataList;

  @override
  Override overrideWith(
    Raw<Stream<GenerateContentResponse>> Function(
            GenerateContentStreamRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GenerateContentStreamProvider._internal(
        (ref) => create(ref as GenerateContentStreamRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        configuration: configuration,
        coreDataList: coreDataList,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Raw<Stream<GenerateContentResponse>>>
      createElement() {
    return _GenerateContentStreamProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GenerateContentStreamProvider &&
        other.configuration == configuration &&
        other.coreDataList == coreDataList;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, configuration.hashCode);
    hash = _SystemHash.combine(hash, coreDataList.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GenerateContentStreamRef
    on AutoDisposeProviderRef<Raw<Stream<GenerateContentResponse>>> {
  /// The parameter `configuration` of this provider.
  GeminiConfiguration get configuration;

  /// The parameter `coreDataList` of this provider.
  List<CoreData> get coreDataList;
}

class _GenerateContentStreamProviderElement
    extends AutoDisposeProviderElement<Raw<Stream<GenerateContentResponse>>>
    with GenerateContentStreamRef {
  _GenerateContentStreamProviderElement(super.provider);

  @override
  GeminiConfiguration get configuration =>
      (origin as GenerateContentStreamProvider).configuration;
  @override
  List<CoreData> get coreDataList =>
      (origin as GenerateContentStreamProvider).coreDataList;
}

String _$generateTextFromCoreDataHash() =>
    r'cdb4f39c27925766534241b900914f84c8d2e553';

/// See also [generateTextFromCoreData].
@ProviderFor(generateTextFromCoreData)
const generateTextFromCoreDataProvider = GenerateTextFromCoreDataFamily();

/// See also [generateTextFromCoreData].
class GenerateTextFromCoreDataFamily extends Family<Raw<Stream<String>>> {
  /// See also [generateTextFromCoreData].
  const GenerateTextFromCoreDataFamily();

  /// See also [generateTextFromCoreData].
  GenerateTextFromCoreDataProvider call({
    GeminiConfiguration configuration = GeminiConfiguration.flashModel,
    required List<CoreData> coreDataList,
  }) {
    return GenerateTextFromCoreDataProvider(
      configuration: configuration,
      coreDataList: coreDataList,
    );
  }

  @override
  GenerateTextFromCoreDataProvider getProviderOverride(
    covariant GenerateTextFromCoreDataProvider provider,
  ) {
    return call(
      configuration: provider.configuration,
      coreDataList: provider.coreDataList,
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
  String? get name => r'generateTextFromCoreDataProvider';
}

/// See also [generateTextFromCoreData].
class GenerateTextFromCoreDataProvider
    extends AutoDisposeProvider<Raw<Stream<String>>> {
  /// See also [generateTextFromCoreData].
  GenerateTextFromCoreDataProvider({
    GeminiConfiguration configuration = GeminiConfiguration.flashModel,
    required List<CoreData> coreDataList,
  }) : this._internal(
          (ref) => generateTextFromCoreData(
            ref as GenerateTextFromCoreDataRef,
            configuration: configuration,
            coreDataList: coreDataList,
          ),
          from: generateTextFromCoreDataProvider,
          name: r'generateTextFromCoreDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$generateTextFromCoreDataHash,
          dependencies: GenerateTextFromCoreDataFamily._dependencies,
          allTransitiveDependencies:
              GenerateTextFromCoreDataFamily._allTransitiveDependencies,
          configuration: configuration,
          coreDataList: coreDataList,
        );

  GenerateTextFromCoreDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.configuration,
    required this.coreDataList,
  }) : super.internal();

  final GeminiConfiguration configuration;
  final List<CoreData> coreDataList;

  @override
  Override overrideWith(
    Raw<Stream<String>> Function(GenerateTextFromCoreDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GenerateTextFromCoreDataProvider._internal(
        (ref) => create(ref as GenerateTextFromCoreDataRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        configuration: configuration,
        coreDataList: coreDataList,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Raw<Stream<String>>> createElement() {
    return _GenerateTextFromCoreDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GenerateTextFromCoreDataProvider &&
        other.configuration == configuration &&
        other.coreDataList == coreDataList;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, configuration.hashCode);
    hash = _SystemHash.combine(hash, coreDataList.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GenerateTextFromCoreDataRef
    on AutoDisposeProviderRef<Raw<Stream<String>>> {
  /// The parameter `configuration` of this provider.
  GeminiConfiguration get configuration;

  /// The parameter `coreDataList` of this provider.
  List<CoreData> get coreDataList;
}

class _GenerateTextFromCoreDataProviderElement
    extends AutoDisposeProviderElement<Raw<Stream<String>>>
    with GenerateTextFromCoreDataRef {
  _GenerateTextFromCoreDataProviderElement(super.provider);

  @override
  GeminiConfiguration get configuration =>
      (origin as GenerateTextFromCoreDataProvider).configuration;
  @override
  List<CoreData> get coreDataList =>
      (origin as GenerateTextFromCoreDataProvider).coreDataList;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
