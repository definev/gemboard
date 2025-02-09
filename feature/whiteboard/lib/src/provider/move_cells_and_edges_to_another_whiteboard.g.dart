// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move_cells_and_edges_to_another_whiteboard.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$moveCellsAndEdgesToAnotherWhiteboardHash() =>
    r'28f109496d0e2b0bd3148b44583158f915903b1d';

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

/// See also [moveCellsAndEdgesToAnotherWhiteboard].
@ProviderFor(moveCellsAndEdgesToAnotherWhiteboard)
const moveCellsAndEdgesToAnotherWhiteboardProvider =
    MoveCellsAndEdgesToAnotherWhiteboardFamily();

/// See also [moveCellsAndEdgesToAnotherWhiteboard].
class MoveCellsAndEdgesToAnotherWhiteboardFamily
    extends Family<AsyncValue<void>> {
  /// See also [moveCellsAndEdgesToAnotherWhiteboard].
  const MoveCellsAndEdgesToAnotherWhiteboardFamily();

  /// See also [moveCellsAndEdgesToAnotherWhiteboard].
  MoveCellsAndEdgesToAnotherWhiteboardProvider call({
    required List<Cell> cells,
    required List<Edge> edges,
    required Whiteboard targetWhiteboard,
    required Offset viewportTopLeft,
    required double scaleFactor,
  }) {
    return MoveCellsAndEdgesToAnotherWhiteboardProvider(
      cells: cells,
      edges: edges,
      targetWhiteboard: targetWhiteboard,
      viewportTopLeft: viewportTopLeft,
      scaleFactor: scaleFactor,
    );
  }

  @override
  MoveCellsAndEdgesToAnotherWhiteboardProvider getProviderOverride(
    covariant MoveCellsAndEdgesToAnotherWhiteboardProvider provider,
  ) {
    return call(
      cells: provider.cells,
      edges: provider.edges,
      targetWhiteboard: provider.targetWhiteboard,
      viewportTopLeft: provider.viewportTopLeft,
      scaleFactor: provider.scaleFactor,
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
  String? get name => r'moveCellsAndEdgesToAnotherWhiteboardProvider';
}

/// See also [moveCellsAndEdgesToAnotherWhiteboard].
class MoveCellsAndEdgesToAnotherWhiteboardProvider
    extends AutoDisposeFutureProvider<void> {
  /// See also [moveCellsAndEdgesToAnotherWhiteboard].
  MoveCellsAndEdgesToAnotherWhiteboardProvider({
    required List<Cell> cells,
    required List<Edge> edges,
    required Whiteboard targetWhiteboard,
    required Offset viewportTopLeft,
    required double scaleFactor,
  }) : this._internal(
          (ref) => moveCellsAndEdgesToAnotherWhiteboard(
            ref as MoveCellsAndEdgesToAnotherWhiteboardRef,
            cells: cells,
            edges: edges,
            targetWhiteboard: targetWhiteboard,
            viewportTopLeft: viewportTopLeft,
            scaleFactor: scaleFactor,
          ),
          from: moveCellsAndEdgesToAnotherWhiteboardProvider,
          name: r'moveCellsAndEdgesToAnotherWhiteboardProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$moveCellsAndEdgesToAnotherWhiteboardHash,
          dependencies:
              MoveCellsAndEdgesToAnotherWhiteboardFamily._dependencies,
          allTransitiveDependencies: MoveCellsAndEdgesToAnotherWhiteboardFamily
              ._allTransitiveDependencies,
          cells: cells,
          edges: edges,
          targetWhiteboard: targetWhiteboard,
          viewportTopLeft: viewportTopLeft,
          scaleFactor: scaleFactor,
        );

  MoveCellsAndEdgesToAnotherWhiteboardProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.cells,
    required this.edges,
    required this.targetWhiteboard,
    required this.viewportTopLeft,
    required this.scaleFactor,
  }) : super.internal();

  final List<Cell> cells;
  final List<Edge> edges;
  final Whiteboard targetWhiteboard;
  final Offset viewportTopLeft;
  final double scaleFactor;

  @override
  Override overrideWith(
    FutureOr<void> Function(MoveCellsAndEdgesToAnotherWhiteboardRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MoveCellsAndEdgesToAnotherWhiteboardProvider._internal(
        (ref) => create(ref as MoveCellsAndEdgesToAnotherWhiteboardRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        cells: cells,
        edges: edges,
        targetWhiteboard: targetWhiteboard,
        viewportTopLeft: viewportTopLeft,
        scaleFactor: scaleFactor,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _MoveCellsAndEdgesToAnotherWhiteboardProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MoveCellsAndEdgesToAnotherWhiteboardProvider &&
        other.cells == cells &&
        other.edges == edges &&
        other.targetWhiteboard == targetWhiteboard &&
        other.viewportTopLeft == viewportTopLeft &&
        other.scaleFactor == scaleFactor;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, cells.hashCode);
    hash = _SystemHash.combine(hash, edges.hashCode);
    hash = _SystemHash.combine(hash, targetWhiteboard.hashCode);
    hash = _SystemHash.combine(hash, viewportTopLeft.hashCode);
    hash = _SystemHash.combine(hash, scaleFactor.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MoveCellsAndEdgesToAnotherWhiteboardRef
    on AutoDisposeFutureProviderRef<void> {
  /// The parameter `cells` of this provider.
  List<Cell> get cells;

  /// The parameter `edges` of this provider.
  List<Edge> get edges;

  /// The parameter `targetWhiteboard` of this provider.
  Whiteboard get targetWhiteboard;

  /// The parameter `viewportTopLeft` of this provider.
  Offset get viewportTopLeft;

  /// The parameter `scaleFactor` of this provider.
  double get scaleFactor;
}

class _MoveCellsAndEdgesToAnotherWhiteboardProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with MoveCellsAndEdgesToAnotherWhiteboardRef {
  _MoveCellsAndEdgesToAnotherWhiteboardProviderElement(super.provider);

  @override
  List<Cell> get cells =>
      (origin as MoveCellsAndEdgesToAnotherWhiteboardProvider).cells;
  @override
  List<Edge> get edges =>
      (origin as MoveCellsAndEdgesToAnotherWhiteboardProvider).edges;
  @override
  Whiteboard get targetWhiteboard =>
      (origin as MoveCellsAndEdgesToAnotherWhiteboardProvider).targetWhiteboard;
  @override
  Offset get viewportTopLeft =>
      (origin as MoveCellsAndEdgesToAnotherWhiteboardProvider).viewportTopLeft;
  @override
  double get scaleFactor =>
      (origin as MoveCellsAndEdgesToAnotherWhiteboardProvider).scaleFactor;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
