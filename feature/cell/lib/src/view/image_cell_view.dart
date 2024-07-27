import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

class ImageCellView extends StatelessWidget {
  const ImageCellView({
    super.key,
    required this.cell,
  });

  final ImageCell cell;

  @override
  Widget build(BuildContext context) {
    final scale = DesignSystemTheme.of(context).scale;

    return Box(
      style: Style(
        $box.padding.all.ref(SpaceVariant.medium),
        $box.color.ref(ColorVariant.surface),
        $box.border.all(
          color: CellDecorationExtension(cell.decoration).colorValue(context),
          width: 1.5 * scale,
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Image.network(
          cell.url.toString(),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
