// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask_board_view.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$askBoardAppearanceHash() =>
    r'08b5243448e4c3e4ee09cbf410823cecc8ad840e';

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

abstract class _$AskBoardAppearance
    extends BuildlessAutoDisposeNotifier<AskBoardAppearanceData> {
  late final String id;

  AskBoardAppearanceData build(
    String id,
  );
}

/// See also [AskBoardAppearance].
@ProviderFor(AskBoardAppearance)
const askBoardAppearanceProvider = AskBoardAppearanceFamily();

/// See also [AskBoardAppearance].
class AskBoardAppearanceFamily extends Family<AskBoardAppearanceData> {
  /// See also [AskBoardAppearance].
  const AskBoardAppearanceFamily();

  /// See also [AskBoardAppearance].
  AskBoardAppearanceProvider call(
    String id,
  ) {
    return AskBoardAppearanceProvider(
      id,
    );
  }

  @override
  AskBoardAppearanceProvider getProviderOverride(
    covariant AskBoardAppearanceProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'askBoardAppearanceProvider';
}

/// See also [AskBoardAppearance].
class AskBoardAppearanceProvider extends AutoDisposeNotifierProviderImpl<
    AskBoardAppearance, AskBoardAppearanceData> {
  /// See also [AskBoardAppearance].
  AskBoardAppearanceProvider(
    String id,
  ) : this._internal(
          () => AskBoardAppearance()..id = id,
          from: askBoardAppearanceProvider,
          name: r'askBoardAppearanceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$askBoardAppearanceHash,
          dependencies: AskBoardAppearanceFamily._dependencies,
          allTransitiveDependencies:
              AskBoardAppearanceFamily._allTransitiveDependencies,
          id: id,
        );

  AskBoardAppearanceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  AskBoardAppearanceData runNotifierBuild(
    covariant AskBoardAppearance notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(AskBoardAppearance Function() create) {
    return ProviderOverride(
      origin: this,
      override: AskBoardAppearanceProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<AskBoardAppearance, AskBoardAppearanceData>
      createElement() {
    return _AskBoardAppearanceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AskBoardAppearanceProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AskBoardAppearanceRef
    on AutoDisposeNotifierProviderRef<AskBoardAppearanceData> {
  /// The parameter `id` of this provider.
  String get id;
}

class _AskBoardAppearanceProviderElement
    extends AutoDisposeNotifierProviderElement<AskBoardAppearance,
        AskBoardAppearanceData> with AskBoardAppearanceRef {
  _AskBoardAppearanceProviderElement(super.provider);

  @override
  String get id => (origin as AskBoardAppearanceProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
