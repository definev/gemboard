import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

class CellView extends StatelessWidget {
  const CellView({super.key, required this.cell});

  final Cell cell;

  @override
  Widget build(BuildContext context) {
    Widget child = DSCard(
      background: ColorVariant.blue,
      kind: DSCardKind.outlined,
      child: DSCardSection(
        background: ColorVariant.blue,
        kind: DSCardKind.outlined,
        header: StyledText(
          cell.map(
            text: (_) => 'text',
            image: (_) => 'image',
            article: (_) => 'article',
            url: (_) => 'url',
          ),
        ),
        content: Text(
          cell.mapOrNull(text: (cell) => cell.text) ?? '',
        ),
      ),
    );

    if (cell.height == null) {
      child = Align(
        alignment: Alignment.topCenter,
        child: IntrinsicHeight(
          child: child,
        ),
      );
    }

    return child;
  }
}
