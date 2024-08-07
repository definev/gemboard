// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_brainstorming_suggestions.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getBrainstormingSuggestionsHash() =>
    r'94d4d0f7093e08f79204f2dac4e6717816a2ec8d';

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

/// See also [getBrainstormingSuggestions].
@ProviderFor(getBrainstormingSuggestions)
const getBrainstormingSuggestionsProvider = GetBrainstormingSuggestionsFamily();

/// See also [getBrainstormingSuggestions].
class GetBrainstormingSuggestionsFamily
    extends Family<AsyncValue<List<String>>> {
  /// See also [getBrainstormingSuggestions].
  const GetBrainstormingSuggestionsFamily();

  /// See also [getBrainstormingSuggestions].
  GetBrainstormingSuggestionsProvider call({
    required String key,
    required String question,
  }) {
    return GetBrainstormingSuggestionsProvider(
      key: key,
      question: question,
    );
  }

  @override
  GetBrainstormingSuggestionsProvider getProviderOverride(
    covariant GetBrainstormingSuggestionsProvider provider,
  ) {
    return call(
      key: provider.key,
      question: provider.question,
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
  String? get name => r'getBrainstormingSuggestionsProvider';
}

/// See also [getBrainstormingSuggestions].
class GetBrainstormingSuggestionsProvider
    extends AutoDisposeFutureProvider<List<String>> {
  /// See also [getBrainstormingSuggestions].
  GetBrainstormingSuggestionsProvider({
    required String key,
    required String question,
  }) : this._internal(
          (ref) => getBrainstormingSuggestions(
            ref as GetBrainstormingSuggestionsRef,
            key: key,
            question: question,
          ),
          from: getBrainstormingSuggestionsProvider,
          name: r'getBrainstormingSuggestionsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getBrainstormingSuggestionsHash,
          dependencies: GetBrainstormingSuggestionsFamily._dependencies,
          allTransitiveDependencies:
              GetBrainstormingSuggestionsFamily._allTransitiveDependencies,
          key: key,
          question: question,
        );

  GetBrainstormingSuggestionsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
    required this.question,
  }) : super.internal();

  final String key;
  final String question;

  @override
  Override overrideWith(
    FutureOr<List<String>> Function(GetBrainstormingSuggestionsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetBrainstormingSuggestionsProvider._internal(
        (ref) => create(ref as GetBrainstormingSuggestionsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
        question: question,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<String>> createElement() {
    return _GetBrainstormingSuggestionsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetBrainstormingSuggestionsProvider &&
        other.key == key &&
        other.question == question;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);
    hash = _SystemHash.combine(hash, question.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetBrainstormingSuggestionsRef
    on AutoDisposeFutureProviderRef<List<String>> {
  /// The parameter `key` of this provider.
  String get key;

  /// The parameter `question` of this provider.
  String get question;
}

class _GetBrainstormingSuggestionsProviderElement
    extends AutoDisposeFutureProviderElement<List<String>>
    with GetBrainstormingSuggestionsRef {
  _GetBrainstormingSuggestionsProviderElement(super.provider);

  @override
  String get key => (origin as GetBrainstormingSuggestionsProvider).key;
  @override
  String get question =>
      (origin as GetBrainstormingSuggestionsProvider).question;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
