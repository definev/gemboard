import 'dart:io';

import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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

    var errorWidget = Box(
      style: Style(
        $box.padding.all.ref(SpaceVariant.medium),
        $box.color.ref(ColorVariant.surface),
        $box.border.all(
          color: CellDecorationExtension(cell.decoration).colorValue(context),
          width: 1.5 * scale,
        ),
      ),
      child: SizedBox(
        height: 100 * scale,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              StyledText(
                '😵',
                style: Style(
                  $text.style.ref(TextStyleVariant.emoji),
                  $text.style.fontSize(48 * scale),
                ),
              ),
              StyledText(
                'Something went wrong',
                style: Style(
                  $text.style.ref(TextStyleVariant.p),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    return SizedBox(
      width: double.infinity,
      child: switch (cell.url.scheme) {
        'file' => Image.file(
            File(cell.url.toFilePath()),
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              debugPrint(error.toString());
              return errorWidget;
            },
          ),
        'http' || 'https' => Image.network(
            cell.url.toString(),
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => errorWidget,
          ),
        'data' => HookBuilder(
            builder: (context) {
              final base64 = useMemoized(() => cell.url.data!.contentAsBytes());
              return Image.memory(
                base64,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => errorWidget,
              );
            },
          ),
        _ => StyledText(
            'This text can\'t displayed',
            style: Style(
              $text.style.ref(TextStyleVariant.p),
            ),
          )
      },
    );
  }
}
