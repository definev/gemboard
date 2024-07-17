import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/widgets.dart';
import 'package:mix/mix.dart';

class TextCellView extends StatelessWidget {
  const TextCellView({super.key, required this.cell});

  final TextCell cell;

  @override
  Widget build(BuildContext context) {
    final cellDecoration = CellDecorationExtension(cell.decoration);

    Widget child = DSCard(
      background: cellDecoration.colorVariant ?? ColorVariant.surface,
      kind: DSCardKind.outlined,
      style: Style(
        $box.padding.all.ref(SpaceVariant.medium),
        cell.selected ? $box.color.ref(ColorVariant.yellow) : null,
      ),
      child: StyledText(
        cell.mapOrNull(text: (cell) => cell.text) ?? '',
      ),
    );

    if (cell.height == null) {
      child = child;
    } else {
      child = SizedBox(
        height: cell.height,
        child: child,
      );
    }

    return child;
  }
}
