// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_question.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$generateQuestionHash() => r'479021618088a79e309b4e3e83e6fe521a5d099c';

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

/// See also [generateQuestion].
@ProviderFor(generateQuestion)
const generateQuestionProvider = GenerateQuestionFamily();

/// See also [generateQuestion].
class GenerateQuestionFamily extends Family<Raw<Stream<String>>> {
  /// See also [generateQuestion].
  const GenerateQuestionFamily();

  /// See also [generateQuestion].
  GenerateQuestionProvider call({
    required String text,
  }) {
    return GenerateQuestionProvider(
      text: text,
    );
  }

  @override
  GenerateQuestionProvider getProviderOverride(
    covariant GenerateQuestionProvider provider,
  ) {
    return call(
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
  String? get name => r'generateQuestionProvider';
}

/// See also [generateQuestion].
class GenerateQuestionProvider
    extends AutoDisposeProvider<Raw<Stream<String>>> {
  /// See also [generateQuestion].
  GenerateQuestionProvider({
    required String text,
  }) : this._internal(
          (ref) => generateQuestion(
            ref as GenerateQuestionRef,
            text: text,
          ),
          from: generateQuestionProvider,
          name: r'generateQuestionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$generateQuestionHash,
          dependencies: GenerateQuestionFamily._dependencies,
          allTransitiveDependencies:
              GenerateQuestionFamily._allTransitiveDependencies,
          text: text,
        );

  GenerateQuestionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.text,
  }) : super.internal();

  final String text;

  @override
  Override overrideWith(
    Raw<Stream<String>> Function(GenerateQuestionRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GenerateQuestionProvider._internal(
        (ref) => create(ref as GenerateQuestionRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        text: text,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Raw<Stream<String>>> createElement() {
    return _GenerateQuestionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GenerateQuestionProvider && other.text == text;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, text.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GenerateQuestionRef on AutoDisposeProviderRef<Raw<Stream<String>>> {
  /// The parameter `text` of this provider.
  String get text;
}

class _GenerateQuestionProviderElement
    extends AutoDisposeProviderElement<Raw<Stream<String>>>
    with GenerateQuestionRef {
  _GenerateQuestionProviderElement(super.provider);

  @override
  String get text => (origin as GenerateQuestionProvider).text;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
