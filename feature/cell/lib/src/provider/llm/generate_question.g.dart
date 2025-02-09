// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_question.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$generateFromSuggestionHash() =>
    r'fe75ac07a16f0dc51d257601f99debe874912a81';

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

/// See also [generateFromSuggestion].
@ProviderFor(generateFromSuggestion)
const generateFromSuggestionProvider = GenerateFromSuggestionFamily();

/// See also [generateFromSuggestion].
class GenerateFromSuggestionFamily extends Family<Raw<Stream<String>>> {
  /// See also [generateFromSuggestion].
  const GenerateFromSuggestionFamily();

  /// See also [generateFromSuggestion].
  GenerateFromSuggestionProvider call({
    required String text,
  }) {
    return GenerateFromSuggestionProvider(
      text: text,
    );
  }

  @override
  GenerateFromSuggestionProvider getProviderOverride(
    covariant GenerateFromSuggestionProvider provider,
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
  String? get name => r'generateFromSuggestionProvider';
}

/// See also [generateFromSuggestion].
class GenerateFromSuggestionProvider
    extends AutoDisposeProvider<Raw<Stream<String>>> {
  /// See also [generateFromSuggestion].
  GenerateFromSuggestionProvider({
    required String text,
  }) : this._internal(
          (ref) => generateFromSuggestion(
            ref as GenerateFromSuggestionRef,
            text: text,
          ),
          from: generateFromSuggestionProvider,
          name: r'generateFromSuggestionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$generateFromSuggestionHash,
          dependencies: GenerateFromSuggestionFamily._dependencies,
          allTransitiveDependencies:
              GenerateFromSuggestionFamily._allTransitiveDependencies,
          text: text,
        );

  GenerateFromSuggestionProvider._internal(
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
    Raw<Stream<String>> Function(GenerateFromSuggestionRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GenerateFromSuggestionProvider._internal(
        (ref) => create(ref as GenerateFromSuggestionRef),
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
    return _GenerateFromSuggestionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GenerateFromSuggestionProvider && other.text == text;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, text.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GenerateFromSuggestionRef on AutoDisposeProviderRef<Raw<Stream<String>>> {
  /// The parameter `text` of this provider.
  String get text;
}

class _GenerateFromSuggestionProviderElement
    extends AutoDisposeProviderElement<Raw<Stream<String>>>
    with GenerateFromSuggestionRef {
  _GenerateFromSuggestionProviderElement(super.provider);

  @override
  String get text => (origin as GenerateFromSuggestionProvider).text;
}

String _$generateQuestionHash() => r'5ad3e1401d94e506b5da0f8d2a2b951aaf0d1a00';

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
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

String _$summarizeCellHash() => r'b486ce2e37be6b9e8e22005139732582bc3e43b9';

/// See also [summarizeCell].
@ProviderFor(summarizeCell)
const summarizeCellProvider = SummarizeCellFamily();

/// See also [summarizeCell].
class SummarizeCellFamily extends Family<Raw<Stream<String>>> {
  /// See also [summarizeCell].
  const SummarizeCellFamily();

  /// See also [summarizeCell].
  SummarizeCellProvider call({
    required String title,
    required String content,
  }) {
    return SummarizeCellProvider(
      title: title,
      content: content,
    );
  }

  @override
  SummarizeCellProvider getProviderOverride(
    covariant SummarizeCellProvider provider,
  ) {
    return call(
      title: provider.title,
      content: provider.content,
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
  String? get name => r'summarizeCellProvider';
}

/// See also [summarizeCell].
class SummarizeCellProvider extends AutoDisposeProvider<Raw<Stream<String>>> {
  /// See also [summarizeCell].
  SummarizeCellProvider({
    required String title,
    required String content,
  }) : this._internal(
          (ref) => summarizeCell(
            ref as SummarizeCellRef,
            title: title,
            content: content,
          ),
          from: summarizeCellProvider,
          name: r'summarizeCellProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$summarizeCellHash,
          dependencies: SummarizeCellFamily._dependencies,
          allTransitiveDependencies:
              SummarizeCellFamily._allTransitiveDependencies,
          title: title,
          content: content,
        );

  SummarizeCellProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.title,
    required this.content,
  }) : super.internal();

  final String title;
  final String content;

  @override
  Override overrideWith(
    Raw<Stream<String>> Function(SummarizeCellRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SummarizeCellProvider._internal(
        (ref) => create(ref as SummarizeCellRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        title: title,
        content: content,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Raw<Stream<String>>> createElement() {
    return _SummarizeCellProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SummarizeCellProvider &&
        other.title == title &&
        other.content == content;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, title.hashCode);
    hash = _SystemHash.combine(hash, content.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SummarizeCellRef on AutoDisposeProviderRef<Raw<Stream<String>>> {
  /// The parameter `title` of this provider.
  String get title;

  /// The parameter `content` of this provider.
  String get content;
}

class _SummarizeCellProviderElement
    extends AutoDisposeProviderElement<Raw<Stream<String>>>
    with SummarizeCellRef {
  _SummarizeCellProviderElement(super.provider);

  @override
  String get title => (origin as SummarizeCellProvider).title;
  @override
  String get content => (origin as SummarizeCellProvider).content;
}

String _$getRelatedQuestionsOrTopicsHash() =>
    r'fc9590a66c4c141865b95fbf7fa0798161a431e4';

/// See also [getRelatedQuestionsOrTopics].
@ProviderFor(getRelatedQuestionsOrTopics)
const getRelatedQuestionsOrTopicsProvider = GetRelatedQuestionsOrTopicsFamily();

/// See also [getRelatedQuestionsOrTopics].
class GetRelatedQuestionsOrTopicsFamily
    extends Family<AsyncValue<List<String>>> {
  /// See also [getRelatedQuestionsOrTopics].
  const GetRelatedQuestionsOrTopicsFamily();

  /// See also [getRelatedQuestionsOrTopics].
  GetRelatedQuestionsOrTopicsProvider call({
    required String topicOrQuestion,
  }) {
    return GetRelatedQuestionsOrTopicsProvider(
      topicOrQuestion: topicOrQuestion,
    );
  }

  @override
  GetRelatedQuestionsOrTopicsProvider getProviderOverride(
    covariant GetRelatedQuestionsOrTopicsProvider provider,
  ) {
    return call(
      topicOrQuestion: provider.topicOrQuestion,
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
  String? get name => r'getRelatedQuestionsOrTopicsProvider';
}

/// See also [getRelatedQuestionsOrTopics].
class GetRelatedQuestionsOrTopicsProvider
    extends AutoDisposeFutureProvider<List<String>> {
  /// See also [getRelatedQuestionsOrTopics].
  GetRelatedQuestionsOrTopicsProvider({
    required String topicOrQuestion,
  }) : this._internal(
          (ref) => getRelatedQuestionsOrTopics(
            ref as GetRelatedQuestionsOrTopicsRef,
            topicOrQuestion: topicOrQuestion,
          ),
          from: getRelatedQuestionsOrTopicsProvider,
          name: r'getRelatedQuestionsOrTopicsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getRelatedQuestionsOrTopicsHash,
          dependencies: GetRelatedQuestionsOrTopicsFamily._dependencies,
          allTransitiveDependencies:
              GetRelatedQuestionsOrTopicsFamily._allTransitiveDependencies,
          topicOrQuestion: topicOrQuestion,
        );

  GetRelatedQuestionsOrTopicsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.topicOrQuestion,
  }) : super.internal();

  final String topicOrQuestion;

  @override
  Override overrideWith(
    FutureOr<List<String>> Function(GetRelatedQuestionsOrTopicsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetRelatedQuestionsOrTopicsProvider._internal(
        (ref) => create(ref as GetRelatedQuestionsOrTopicsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        topicOrQuestion: topicOrQuestion,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<String>> createElement() {
    return _GetRelatedQuestionsOrTopicsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetRelatedQuestionsOrTopicsProvider &&
        other.topicOrQuestion == topicOrQuestion;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, topicOrQuestion.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetRelatedQuestionsOrTopicsRef
    on AutoDisposeFutureProviderRef<List<String>> {
  /// The parameter `topicOrQuestion` of this provider.
  String get topicOrQuestion;
}

class _GetRelatedQuestionsOrTopicsProviderElement
    extends AutoDisposeFutureProviderElement<List<String>>
    with GetRelatedQuestionsOrTopicsRef {
  _GetRelatedQuestionsOrTopicsProviderElement(super.provider);

  @override
  String get topicOrQuestion =>
      (origin as GetRelatedQuestionsOrTopicsProvider).topicOrQuestion;
}

String _$summarizeImageCellHash() =>
    r'3e16bc5ad0dfd9cb3a4bbeab18efbb889cc552b1';

/// See also [summarizeImageCell].
@ProviderFor(summarizeImageCell)
const summarizeImageCellProvider = SummarizeImageCellFamily();

/// See also [summarizeImageCell].
class SummarizeImageCellFamily extends Family<Raw<Stream<String>>> {
  /// See also [summarizeImageCell].
  const SummarizeImageCellFamily();

  /// See also [summarizeImageCell].
  SummarizeImageCellProvider call({
    required Cell cell,
  }) {
    return SummarizeImageCellProvider(
      cell: cell,
    );
  }

  @override
  SummarizeImageCellProvider getProviderOverride(
    covariant SummarizeImageCellProvider provider,
  ) {
    return call(
      cell: provider.cell,
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
  String? get name => r'summarizeImageCellProvider';
}

/// See also [summarizeImageCell].
class SummarizeImageCellProvider
    extends AutoDisposeProvider<Raw<Stream<String>>> {
  /// See also [summarizeImageCell].
  SummarizeImageCellProvider({
    required Cell cell,
  }) : this._internal(
          (ref) => summarizeImageCell(
            ref as SummarizeImageCellRef,
            cell: cell,
          ),
          from: summarizeImageCellProvider,
          name: r'summarizeImageCellProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$summarizeImageCellHash,
          dependencies: SummarizeImageCellFamily._dependencies,
          allTransitiveDependencies:
              SummarizeImageCellFamily._allTransitiveDependencies,
          cell: cell,
        );

  SummarizeImageCellProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.cell,
  }) : super.internal();

  final Cell cell;

  @override
  Override overrideWith(
    Raw<Stream<String>> Function(SummarizeImageCellRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SummarizeImageCellProvider._internal(
        (ref) => create(ref as SummarizeImageCellRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        cell: cell,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Raw<Stream<String>>> createElement() {
    return _SummarizeImageCellProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SummarizeImageCellProvider && other.cell == cell;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, cell.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SummarizeImageCellRef on AutoDisposeProviderRef<Raw<Stream<String>>> {
  /// The parameter `cell` of this provider.
  Cell get cell;
}

class _SummarizeImageCellProviderElement
    extends AutoDisposeProviderElement<Raw<Stream<String>>>
    with SummarizeImageCellRef {
  _SummarizeImageCellProviderElement(super.provider);

  @override
  Cell get cell => (origin as SummarizeImageCellProvider).cell;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
