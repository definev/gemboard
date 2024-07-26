import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ImageCellView extends StatelessWidget {
  const ImageCellView({
    super.key,
    required this.cell,
  });

  final ImageCell cell;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: ColorVariant.surface.resolve(context),
      child: Image.network(cell.url.toString()),
    );
  }
}
