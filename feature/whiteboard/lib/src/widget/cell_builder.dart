import 'package:boundless_stack/boundless_stack.dart';
import 'package:cell/cell.dart';
import 'package:flutter/material.dart';

class CellBuilder extends StatefulWidget {
  const CellBuilder({
    super.key,
    required this.notifier,
    required this.stackPositionDataMap,
    required this.cell,
  });

  final ValueNotifier<StackPositionData> notifier;
  final Map<String, ValueNotifier<StackPositionData>> stackPositionDataMap;
  final Cell cell;

  @override
  State<CellBuilder> createState() => _CellBuilderState();
}

class _CellBuilderState extends State<CellBuilder> {
  @override
  Widget build(BuildContext context) {
    widget.stackPositionDataMap[widget.cell.id.id] = widget.notifier;
    return CellView(cell: widget.cell);
  }
}
