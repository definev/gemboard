// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_question.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$generateQuestionHash() => r'e6b84cf75c6af6e22adaf5be3f10f59844c3f44e';

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

String _$summarizeCellHash() => r'f85d203c8b391b28cadeb870773262827466f4e9';

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

String _$summarizeImageCellHash() =>
    r'b11a5ae997cb074dab04e2698466b290cecd183f';

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
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
