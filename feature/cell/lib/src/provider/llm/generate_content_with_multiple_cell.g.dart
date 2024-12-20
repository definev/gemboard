// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_content_with_multiple_cell.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$generateContentWithMultipleCellHash() =>
    r'8cb6d4b4ddae0a476e6a759c0f0d072906cad3a4';

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

/// See also [generateContentWithMultipleCell].
@ProviderFor(generateContentWithMultipleCell)
const generateContentWithMultipleCellProvider =
    GenerateContentWithMultipleCellFamily();

/// See also [generateContentWithMultipleCell].
class GenerateContentWithMultipleCellFamily
    extends Family<Raw<Stream<String>>> {
  /// See also [generateContentWithMultipleCell].
  const GenerateContentWithMultipleCellFamily();

  /// See also [generateContentWithMultipleCell].
  GenerateContentWithMultipleCellProvider call({
    required List<Cell> cells,
    required String text,
  }) {
    return GenerateContentWithMultipleCellProvider(
      cells: cells,
      text: text,
    );
  }

  @override
  GenerateContentWithMultipleCellProvider getProviderOverride(
    covariant GenerateContentWithMultipleCellProvider provider,
  ) {
    return call(
      cells: provider.cells,
      text: provider.text,
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
  String? get name => r'generateContentWithMultipleCellProvider';
}

/// See also [generateContentWithMultipleCell].
class GenerateContentWithMultipleCellProvider
    extends AutoDisposeProvider<Raw<Stream<String>>> {
  /// See also [generateContentWithMultipleCell].
  GenerateContentWithMultipleCellProvider({
    required List<Cell> cells,
    required String text,
  }) : this._internal(
          (ref) => generateContentWithMultipleCell(
            ref as GenerateContentWithMultipleCellRef,
            cells: cells,
            text: text,
          ),
          from: generateContentWithMultipleCellProvider,
          name: r'generateContentWithMultipleCellProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$generateContentWithMultipleCellHash,
          dependencies: GenerateContentWithMultipleCellFamily._dependencies,
          allTransitiveDependencies:
              GenerateContentWithMultipleCellFamily._allTransitiveDependencies,
          cells: cells,
          text: text,
        );

  GenerateContentWithMultipleCellProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.cells,
    required this.text,
  }) : super.internal();

  final List<Cell> cells;
  final String text;

  @override
  Override overrideWith(
    Raw<Stream<String>> Function(GenerateContentWithMultipleCellRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GenerateContentWithMultipleCellProvider._internal(
        (ref) => create(ref as GenerateContentWithMultipleCellRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        cells: cells,
        text: text,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Raw<Stream<String>>> createElement() {
    return _GenerateContentWithMultipleCellProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GenerateContentWithMultipleCellProvider &&
        other.cells == cells &&
        other.text == text;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, cells.hashCode);
    hash = _SystemHash.combine(hash, text.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GenerateContentWithMultipleCellRef
    on AutoDisposeProviderRef<Raw<Stream<String>>> {
  /// The parameter `cells` of this provider.
  List<Cell> get cells;

  /// The parameter `text` of this provider.
  String get text;
}

class _GenerateContentWithMultipleCellProviderElement
    extends AutoDisposeProviderElement<Raw<Stream<String>>>
    with GenerateContentWithMultipleCellRef {
  _GenerateContentWithMultipleCellProviderElement(super.provider);

  @override
  List<Cell> get cells =>
      (origin as GenerateContentWithMultipleCellProvider).cells;
  @override
  String get text => (origin as GenerateContentWithMultipleCellProvider).text;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
