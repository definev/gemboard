import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mix/mix.dart';

class ArticleCellView extends StatelessWidget {
  const ArticleCellView({
    super.key,
    required this.cell,
    required this.onConstraintChanged,
  });

  final ArticleCell cell;

  final VoidCallback onConstraintChanged;

  @override
  Widget build(BuildContext context) {
    final scale = DesignSystemTheme.of(context).scale;

    final kind = switch (cell.decoration.cardKind) {
      CellCardKind.flat => DSCardKind.flat,
      CellCardKind.elevated => DSCardKind.elevated,
      CellCardKind.outlined => DSCardKind.outlined,
    };

    final cellDecoration = CellDecorationExtension(cell.decoration);
    final background = cellDecoration.colorVariant ?? ColorVariant.surface;

    Widget content = switch (cell.decoration.constraints) {
      false => DSMarkdownBody(data: cell.content),
      true => ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: 300 * scale,
          ),
          child: DSMarkdownBody(
            data: cell.content,
            scrollable: true,
          ),
        ),
    };

    content = Mix(
      data: Style(
        DSCardKind.elevated(
          $text.style.color.ref(ColorVariant.onSurface),
        ),
        DSCardKind.flat(
          $text.style.color(cellDecoration.onColorValue(context)),
        ),
        DSCardKind.outlined(
          $text.style.color.ref(ColorVariant.onSurface),
        ),
      ).applyVariant(kind).of(context),
      child: content,
    );

    content = SelectionArea(child: content);

    return DSCard(
      kind: kind,
      background: background,
      child: DSCardSection(
        kind: kind,
        background: background,
        header: Row(
          children: [
            Expanded(
              child: DSMarkdownBody(data: cell.title),
            ),
            Button(
              background: background,
              onPressed: onConstraintChanged,
              child: StyledIcon(
                switch (cell.decoration.constraints) {
                  false => LineIcons.caretUp,
                  true => LineIcons.caretDown,
                },
              ),
            ),
          ],
        ),
        content: content,
      ),
    );
  }
}
