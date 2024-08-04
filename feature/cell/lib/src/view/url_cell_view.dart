import 'package:cell/src/domain/model/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:mix/mix.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:utils/utils.dart';

class UrlCellView extends ConsumerWidget {
  const UrlCellView({
    super.key,
    required this.cell,
  });

  final UrlCell cell;

  static final linkPreviewProvider = FutureProvider.family<Metadata?, String>(
    (ref, url) async => LinkAnalyzer.getInfo(url),
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scale = DesignSystemTheme.of(context).scale;

    final linkPreview = ref.watch(linkPreviewProvider(cell.url.toString()));

    return DSCard(
      kind: DSCardKind.elevated,
      style: Style(
        $box.padding.right.ref(SpaceVariant.small),
      ),
      child: SizedBox(
        height: 34 * scale + SpaceVariant.small.resolve(context) * 2,
        child: switch (linkPreview) {
          AsyncLoading() => StyledRow(
              style: Style(
                $flex.gap.ref(SpaceVariant.small),
              ),
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: ColoredBox(
                    color: ColorVariant.yellow.resolve(context),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      StyledText(
                        'Hang on, fetching preview...',
                        style: Style(
                          $text.style.ref(TextStyleVariant.p2),
                          $text.style.fontWeight.bold(),
                          $text.overflow.ellipsis(),
                        ),
                      ),
                      StyledText(
                        cell.url.toString(),
                        style: Style(
                          $text.style.ref(TextStyleVariant.p4),
                          $text.style.color.ref(ColorVariant.yellow),
                          $text.style.decoration.underline(),
                          $text.style.decorationColor.ref(ColorVariant.yellow),
                          $text.style.decorationStyle.wavy(),
                          $text.overflow.ellipsis(),
                        ),
                      ),
                    ],
                  )
                      .animate(
                        onPlay: (controller) => controller.loop(),
                      )
                      .shimmer(),
                ),
                Button(
                  onPressed: () => launchUrl(
                    cell.url,
                    mode: LaunchMode.externalApplication,
                  ),
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: StyledIcon(IconlyLight.upload),
                  ),
                )
              ],
            ),
          AsyncData(:final value) => switch (value) {
              null => StyledRow(
                  style: Style(
                    $flex.gap.ref(SpaceVariant.small),
                  ),
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: ColoredBox(
                        color: ColorVariant.yellow.resolve(context),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          StyledText(
                            'Oops! No preview available',
                            style: Style(
                              $text.style.ref(TextStyleVariant.p2),
                              $text.style.fontWeight.bold(),
                              $text.overflow.ellipsis(),
                            ),
                          ),
                          StyledText(
                            cell.url.toString(),
                            style: Style(
                              $text.style.ref(TextStyleVariant.p4),
                              $text.style.color.ref(ColorVariant.yellow),
                              $text.style.decoration.underline(),
                              $text.style.decorationColor
                                  .ref(ColorVariant.yellow),
                              $text.style.decorationStyle.wavy(),
                              $text.overflow.ellipsis(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Button(
                      onPressed: () => launchUrl(
                        cell.url,
                        mode: LaunchMode.externalApplication,
                      ),
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: StyledIcon(IconlyLight.upload),
                      ),
                    ),
                  ],
                ),
              final value => () {
                  final imageProvider = buildImageProvider(
                    value.image,
                    value.image,
                  );
                  return StyledRow(
                    style: Style(
                      $flex.gap.ref(SpaceVariant.small),
                    ),
                    children: [
                      SizedBox.square(
                        dimension: 34 * scale +
                            SpaceVariant.small.resolve(context) * 2,
                        child: ColoredBox(
                          color: ColorVariant.yellow.resolve(context).withOpacity(0.2),
                          child: switch (imageProvider) {
                            _ when imageProvider.image != null => Image(
                                image: imageProvider.image!,
                                fit: BoxFit.contain,
                                errorBuilder: (context, error, stackTrace) =>
                                    ColoredBox(
                                  color: ColorVariant.yellow.resolve(context),
                                ),
                              ),
                            _ when imageProvider.svgImage != null =>
                              imageProvider.svgImage,
                            _ => Container(),
                          },
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            StyledText(
                              value.title ?? 'Untitled',
                              style: Style(
                                $text.style.ref(TextStyleVariant.p2),
                                $text.style.fontWeight.bold(),
                                $text.overflow.ellipsis(),
                              ),
                            ),
                            StyledText(
                              cell.url.toString(),
                              style: Style(
                                $text.style.ref(TextStyleVariant.p4),
                                $text.style.color.ref(ColorVariant.yellow),
                                $text.style.decoration.underline(),
                                $text.style.decorationColor
                                    .ref(ColorVariant.yellow),
                                $text.style.decorationStyle.wavy(),
                                $text.overflow.ellipsis(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Button(
                        onPressed: () => launchUrl(
                          cell.url,
                          mode: LaunchMode.externalApplication,
                        ),
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: StyledIcon(IconlyLight.upload),
                        ),
                      ),
                    ],
                  );
                }(),
            },
          AsyncError() => StyledRow(
              style: Style(
                $flex.gap.ref(SpaceVariant.small),
              ),
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: ColoredBox(
                    color: ColorVariant.yellow.resolve(context),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      StyledText(
                        'Oops! Something went wrong',
                        style: Style(
                          $text.style.ref(TextStyleVariant.p2),
                          $text.style.color.ref(ColorVariant.red),
                          $text.style.fontWeight.bold(),
                          $text.overflow.ellipsis(),
                        ),
                      ),
                      StyledText(
                        cell.url.toString(),
                        style: Style(
                          $text.style.ref(TextStyleVariant.p4),
                          $text.style.color.ref(ColorVariant.yellow),
                          $text.style.decoration.underline(),
                          $text.style.decorationColor.ref(ColorVariant.yellow),
                          $text.style.decorationStyle.wavy(),
                          $text.overflow.ellipsis(),
                        ),
                      ),
                    ],
                  ),
                ),
                Button(
                  onPressed: () => launchUrl(cell.url),
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: StyledIcon(IconlyLight.upload),
                  ),
                )
              ],
            ),
          _ => StyledText(
              'No preview available',
              style: Style(
                $text.style.ref(TextStyleVariant.p),
              ),
            ),
        },
      ),
    );
  }
}
