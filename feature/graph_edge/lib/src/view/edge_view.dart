import 'package:flutter/material.dart';
import 'package:graph_edge/src/domain/model/edge.dart';

class EdgeView extends StatelessWidget {
  const EdgeView({
    super.key,
    required this.data,
  });

  final Edge data;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.red.withOpacity(0.5),
    );
  }
}
