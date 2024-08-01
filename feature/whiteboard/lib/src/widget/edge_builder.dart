import 'dart:math';

import 'package:boundless_stack/boundless_stack.dart';
import 'package:cell/cell.dart';
import 'package:flutter/material.dart';
import 'package:graph_edge/graph_edge.dart';

class EdgeBuilder extends StatefulWidget {
  const EdgeBuilder({
    super.key,
    required this.notifier,
    required this.edge,
    required this.cellKeys,
    required this.stackPositionDataMap,

    ///
    required this.onEdgeDeleted,
    required this.onAutoLabel,
    required this.onEdgeLabelChanged,
  });

  static (
    Rect sourceCellRect,
    Rect targetCellRect,
    Rect edgeRect,
  ) computeEdgeBounds(
    (GlobalKey, Cell) source,
    (GlobalKey, Cell) target,
  ) {
    final sourceCellRect = _EdgeBuilderState._computeCellBound(source);
    final targetCellRect = _EdgeBuilderState._computeCellBound(target);
    final edgeRect =
        _EdgeBuilderState._computeEdgeRect(sourceCellRect, targetCellRect);
    return (sourceCellRect, targetCellRect, edgeRect);
  }

  final Edge edge;
  final ValueNotifier<StackPositionData> notifier;
  final Map<String, (GlobalKey, Cell)> cellKeys;
  final Map<String, ValueNotifier<StackPositionData>> stackPositionDataMap;

  ///
  final void Function(Edge edge) onEdgeDeleted;
  final void Function(String label) onEdgeLabelChanged;
  final void Function(Edge data) onAutoLabel;

  @override
  State<StatefulWidget> createState() => _EdgeBuilderState();
}

class _EdgeBuilderState extends State<EdgeBuilder> {
  ValueNotifier<StackPositionData>? sourcePositionData;
  ValueNotifier<StackPositionData>? targetPositionData;

  Rect sourceCellRect = Rect.zero;
  Rect targetCellRect = Rect.zero;
  Rect edgeRect = Rect.zero;

  (GlobalKey, Cell) get source => widget.cellKeys[widget.edge.source]!;
  (GlobalKey, Cell) get target => widget.cellKeys[widget.edge.target]!;

  static Rect _computeCellBound((GlobalKey, Cell) value) {
    final (_, sourceCell) = value;

    final cellRect = Rect.fromLTWH(
      sourceCell.offset.dx,
      sourceCell.offset.dy,
      sourceCell.width,
      sourceCell.height ?? sourceCell.preferredHeight ?? 100,
    );

    return cellRect;
  }

  static Rect _computeEdgeRect(Rect newSourceCellRect, Rect newTargetCellRect) {
    final edgeTopLeft = Offset(
      min(newSourceCellRect.left, newTargetCellRect.left),
      min(newSourceCellRect.top, newTargetCellRect.top),
    );
    final edgeBottomRight = Offset(
      max(newSourceCellRect.right, newTargetCellRect.right),
      max(newSourceCellRect.bottom, newTargetCellRect.bottom),
    );

    return Rect.fromPoints(edgeTopLeft, edgeBottomRight);
  }

  Rect _computeCellBoundWithStackPosition(
      StackPositionData position, Cell cell) {
    return Rect.fromLTWH(
      position.offset.dx,
      position.offset.dy,
      position.width ?? position.preferredWidth ?? cell.width,
      position.height ??
          cell.height ??
          position.preferredHeight ??
          cell.preferredHeight ??
          0,
    );
  }

  void computeEdgeBounds(
    (GlobalKey<State<StatefulWidget>>, Cell) source,
    (GlobalKey<State<StatefulWidget>>, Cell) target, {
    StackPositionData? sourcePosition,
    StackPositionData? targetPosition,
  }) {
    Rect newSourceCellRect = switch (sourcePosition) {
      null => _computeCellBound(source),
      final position => _computeCellBoundWithStackPosition(position, source.$2),
    };
    Rect newTargetCellRect = switch (targetPosition) {
      null => _computeCellBound(target),
      final position => _computeCellBoundWithStackPosition(position, target.$2),
    };

    Rect newEdgeRect = _computeEdgeRect(newSourceCellRect, newTargetCellRect);

    sourceCellRect = newSourceCellRect;
    targetCellRect = newTargetCellRect;
    edgeRect = newEdgeRect;

    widget.notifier.value = StackPositionData(
      id: widget.edge.id.id,
      layer: widget.edge.layer,
      offset: edgeRect.topLeft,
      width: edgeRect.width,
      height: edgeRect.height,
    );
  }

  @override
  void initState() {
    super.initState();
    sourcePositionData = widget.stackPositionDataMap[widget.edge.source];
    targetPositionData = widget.stackPositionDataMap[widget.edge.target];
    sourcePositionData?.addListener(onStackPositionDataChanged);
    targetPositionData?.addListener(onStackPositionDataChanged);
    onStackPositionDataChanged();
    if (sourcePositionData == null || targetPositionData == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        sourcePositionData = widget.stackPositionDataMap[widget.edge.source];
        targetPositionData = widget.stackPositionDataMap[widget.edge.target];
        sourcePositionData?.addListener(onStackPositionDataChanged);
        targetPositionData?.addListener(onStackPositionDataChanged);
        onStackPositionDataChanged();
      });
    }
  }

  void onStackPositionDataChanged() {
    computeEdgeBounds(
      source,
      target,
      sourcePosition: sourcePositionData?.value,
      targetPosition: targetPositionData?.value,
    );
  }

  void onStackPositionValueNotifierUpdated() {
    final newSourcePositionData =
        widget.stackPositionDataMap[widget.edge.source];
    final newTargetPositionData =
        widget.stackPositionDataMap[widget.edge.target];

    if (sourcePositionData != newSourcePositionData) {
      sourcePositionData?.removeListener(onStackPositionDataChanged);
      sourcePositionData = newSourcePositionData;
      sourcePositionData?.addListener(onStackPositionDataChanged);
    }

    if (targetPositionData != newTargetPositionData) {
      targetPositionData?.removeListener(onStackPositionDataChanged);
      targetPositionData = newTargetPositionData;
      targetPositionData?.addListener(onStackPositionDataChanged);
    }
  }

  @override
  void dispose() {
    sourcePositionData?.removeListener(onStackPositionDataChanged);
    targetPositionData?.removeListener(onStackPositionDataChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    onStackPositionValueNotifierUpdated();

    return EdgeView(
      data: widget.edge,
      source: sourceCellRect,
      target: targetCellRect,
      onEdgeDeleted: widget.onEdgeDeleted,
      onAutoLabel: widget.onAutoLabel,
      onEdgeLabelChanged: widget.onEdgeLabelChanged,
    );
  }
}
