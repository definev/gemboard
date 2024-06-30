// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask_page_view.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$askPageAppearanceHash() => r'ab7cba232735e5cbcbb6dc69d9892fb8cd53108e';

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

abstract class _$AskPageAppearance
    extends BuildlessNotifier<AskPageAppearanceData> {
  late final String askBoardId;
  late final AskPageId id;

  AskPageAppearanceData build({
    required String askBoardId,
    required AskPageId id,
  });
}

/// See also [AskPageAppearance].
@ProviderFor(AskPageAppearance)
const askPageAppearanceProvider = AskPageAppearanceFamily();

/// See also [AskPageAppearance].
class AskPageAppearanceFamily extends Family<AskPageAppearanceData> {
  /// See also [AskPageAppearance].
  const AskPageAppearanceFamily();

  /// See also [AskPageAppearance].
  AskPageAppearanceProvider call({
    required String askBoardId,
    required AskPageId id,
  }) {
    return AskPageAppearanceProvider(
      askBoardId: askBoardId,
      id: id,
    );
  }

  @override
  AskPageAppearanceProvider getProviderOverride(
    covariant AskPageAppearanceProvider provider,
  ) {
    return call(
      askBoardId: provider.askBoardId,
      id: provider.id,
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
  String? get name => r'askPageAppearanceProvider';
}

/// See also [AskPageAppearance].
class AskPageAppearanceProvider
    extends NotifierProviderImpl<AskPageAppearance, AskPageAppearanceData> {
  /// See also [AskPageAppearance].
  AskPageAppearanceProvider({
    required String askBoardId,
    required AskPageId id,
  }) : this._internal(
          () => AskPageAppearance()
            ..askBoardId = askBoardId
            ..id = id,
          from: askPageAppearanceProvider,
          name: r'askPageAppearanceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$askPageAppearanceHash,
          dependencies: AskPageAppearanceFamily._dependencies,
          allTransitiveDependencies:
              AskPageAppearanceFamily._allTransitiveDependencies,
          askBoardId: askBoardId,
          id: id,
        );

  AskPageAppearanceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.askBoardId,
    required this.id,
  }) : super.internal();

  final String askBoardId;
  final AskPageId id;

  @override
  AskPageAppearanceData runNotifierBuild(
    covariant AskPageAppearance notifier,
  ) {
    return notifier.build(
      askBoardId: askBoardId,
      id: id,
    );
  }

  @override
  Override overrideWith(AskPageAppearance Function() create) {
    return ProviderOverride(
      origin: this,
      override: AskPageAppearanceProvider._internal(
        () => create()
          ..askBoardId = askBoardId
          ..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        askBoardId: askBoardId,
        id: id,
      ),
    );
  }

  @override
  NotifierProviderElement<AskPageAppearance, AskPageAppearanceData>
      createElement() {
    return _AskPageAppearanceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AskPageAppearanceProvider &&
        other.askBoardId == askBoardId &&
        other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, askBoardId.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AskPageAppearanceRef on NotifierProviderRef<AskPageAppearanceData> {
  /// The parameter `askBoardId` of this provider.
  String get askBoardId;

  /// The parameter `id` of this provider.
  AskPageId get id;
}

class _AskPageAppearanceProviderElement
    extends NotifierProviderElement<AskPageAppearance, AskPageAppearanceData>
    with AskPageAppearanceRef {
  _AskPageAppearanceProviderElement(super.provider);

  @override
  String get askBoardId => (origin as AskPageAppearanceProvider).askBoardId;
  @override
  AskPageId get id => (origin as AskPageAppearanceProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
