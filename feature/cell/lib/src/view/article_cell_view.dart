import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

class ArticleCellView extends StatelessWidget {
  const ArticleCellView({
    super.key,
    required this.cell,
  });

  final ArticleCell cell;

  @override
  Widget build(BuildContext context) {
    final cellDecoration = CellDecorationExtension(cell.decoration);
    return DSCard(
      kind: DSCardKind.elevated,
      background: cellDecoration.colorVariant ?? ColorVariant.surface,
      child: DSCardSection(
        background: cellDecoration.colorVariant ?? ColorVariant.surface,
        kind: DSCardKind.elevated,
        header: StyledText(cell.title),
        content: StyledText(cell.content),
      ),
    );
  }
}
