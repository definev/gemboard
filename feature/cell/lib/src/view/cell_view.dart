import 'package:cell/cell.dart';
import 'package:flutter/material.dart';

import 'article_cell_view.dart';
import 'image_cell_view.dart';
import 'text_cell_view.dart';
import 'url_cell_view.dart';

class CellView extends StatelessWidget {
  const CellView({super.key, required this.cell});

  final Cell cell;

  @override
  Widget build(BuildContext context) {
    return cell.map(
      text: (cell) => TextCellView(cell: cell),
      image: (cell) => ImageCellView(cell: cell),
      article: (cell) => ArticleCellView(cell: cell),
      url: (cell) => UrlCellView(cell: cell),
      unknown: (_) => SizedBox(),
    );
  }
}
