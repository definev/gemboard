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
    final kind = switch (cell.decoration.cardKind) {
      CellCardKind.flat => DSCardKind.flat,
      CellCardKind.elevated => DSCardKind.elevated,
      CellCardKind.outlined => DSCardKind.outlined,
    };
    final cellDecoration = CellDecorationExtension(cell.decoration);
    return DSCard(
      kind: kind,
      background: cellDecoration.colorVariant ?? ColorVariant.surface,
      child: DSCardSection(
        kind: kind,
        background: cellDecoration.colorVariant ?? ColorVariant.surface,
        header: DSMarkdownBody(data: cell.title),
        content: Mix(
          data: Style(
            DSCardKind.elevated(
              $text.style.color.ref(ColorVariant.onSurface),
            ),
            DSCardKind.flat(
              $text.style.color(cellDecoration.onColorValue(context)),
            ),
            DSCardKind.outlined(
              $text.style.color(cellDecoration.onColorValue(context)),
            ),
          ).applyVariant(kind).of(context),
          child: DSMarkdownBody(data: cell.content),
        ),
      ),
    );
  }
}
