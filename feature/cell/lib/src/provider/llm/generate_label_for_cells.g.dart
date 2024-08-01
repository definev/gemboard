// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_label_for_cells.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$generateLabelForCellsHash() =>
    r'a0d6aeb5848271625edcabb1469b2304dd98a6b9';

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

/// See also [generateLabelForCells].
@ProviderFor(generateLabelForCells)
const generateLabelForCellsProvider = GenerateLabelForCellsFamily();

/// See also [generateLabelForCells].
class GenerateLabelForCellsFamily extends Family<AsyncValue<String>> {
  /// See also [generateLabelForCells].
  const GenerateLabelForCellsFamily();

  /// See also [generateLabelForCells].
  GenerateLabelForCellsProvider call({
    required Cell source,
    required Cell target,
  }) {
    return GenerateLabelForCellsProvider(
      source: source,
      target: target,
    );
  }

  @override
  GenerateLabelForCellsProvider getProviderOverride(
    covariant GenerateLabelForCellsProvider provider,
  ) {
    return call(
      source: provider.source,
      target: provider.target,
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
  String? get name => r'generateLabelForCellsProvider';
}

/// See also [generateLabelForCells].
class GenerateLabelForCellsProvider extends AutoDisposeFutureProvider<String> {
  /// See also [generateLabelForCells].
  GenerateLabelForCellsProvider({
    required Cell source,
    required Cell target,
  }) : this._internal(
          (ref) => generateLabelForCells(
            ref as GenerateLabelForCellsRef,
            source: source,
            target: target,
          ),
          from: generateLabelForCellsProvider,
          name: r'generateLabelForCellsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$generateLabelForCellsHash,
          dependencies: GenerateLabelForCellsFamily._dependencies,
          allTransitiveDependencies:
              GenerateLabelForCellsFamily._allTransitiveDependencies,
          source: source,
          target: target,
        );

  GenerateLabelForCellsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.source,
    required this.target,
  }) : super.internal();

  final Cell source;
  final Cell target;

  @override
  Override overrideWith(
    FutureOr<String> Function(GenerateLabelForCellsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GenerateLabelForCellsProvider._internal(
        (ref) => create(ref as GenerateLabelForCellsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        source: source,
        target: target,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _GenerateLabelForCellsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GenerateLabelForCellsProvider &&
        other.source == source &&
        other.target == target;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, source.hashCode);
    hash = _SystemHash.combine(hash, target.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GenerateLabelForCellsRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `source` of this provider.
  Cell get source;

  /// The parameter `target` of this provider.
  Cell get target;
}

class _GenerateLabelForCellsProviderElement
    extends AutoDisposeFutureProviderElement<String>
    with GenerateLabelForCellsRef {
  _GenerateLabelForCellsProviderElement(super.provider);

  @override
  Cell get source => (origin as GenerateLabelForCellsProvider).source;
  @override
  Cell get target => (origin as GenerateLabelForCellsProvider).target;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
