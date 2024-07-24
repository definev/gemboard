import 'dart:math';

import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:iconly/iconly.dart';
import 'package:mix/mix.dart';

class BrainstormingCellView extends HookWidget {
  const BrainstormingCellView({
    super.key,
    required this.cell,
    required this.onAskForSuggestion,
  });

  final BrainstormingCell cell;
  final ValueChanged<String> onAskForSuggestion;

  static final colors = [
    ColorVariant.blue,
    ColorVariant.yellow,
    ColorVariant.green,
    ColorVariant.red,
    ColorVariant.purple,
  ];

  @override
  Widget build(BuildContext context) {
    final randomWidths = useMemoized(
      () {
        final rand = Random();

        return [
          for (int i = 0; i < 5; i++) rand.nextDouble() * 200 + 100,
        ];
      },
    );

    final askForSuggestionTextController = useTextEditingController(
      text: cell.question,
    );

    return StyledColumn(
      style: Style(
        $flex.mainAxisSize.min(),
        $flex.gap.ref(SpaceVariant.small),
      ),
      children: [
        DSTextbox(
          controller: askForSuggestionTextController,
          hintText: 'Let your ideas flow freely, write down your topic here',
          autofocus: true,
          onSubmitted: onAskForSuggestion,
          trailing: Button(
            style: Style(
              $box.margin.right(4),
            ),
            highlight: ButtonHighlight.pressed,
            background: ColorVariant.onSurface,
            onPressed: () =>
                onAskForSuggestion(askForSuggestionTextController.text),
            child: StyledIcon(IconlyLight.send),
          ),
        ),
        if (cell.suggestions.isEmpty)
          StyledColumn(
            style: Style(
              $flex.mainAxisSize.min(),
              $flex.gap.ref(SpaceVariant.small),
            ),
            children: [
              for (int index = 0; index < colors.length; index++)
                Row(
                  children: [
                    DSCard(
                      kind: DSCardKind.flat,
                      style: Style(
                        $box.color(colors[index]
                            .resolve(context)
                            .withOpacity(1 - index * 0.2)),
                        $box.margin.horizontal(1.5),
                        $box.minHeight(32),
                        $box.padding.left.ref(SpaceVariant.small),
                        $box.minWidth(randomWidths[index]),
                        $box.alignment.centerLeft(),
                      ),
                      child: SizedBox(),
                    ),
                  ],
                ),
            ],
          )
        else
          StyledColumn(
            style: Style(
              $flex.mainAxisSize.min(),
              $flex.gap.ref(SpaceVariant.small),
            ),
            children: [
              for (final (index, suggestion) in cell.suggestions.indexed)
                DSCard(
                  kind: DSCardKind.flat,
                  style: Style(
                    $box.color.ref(colors[index % colors.length]),
                    $box.margin.all(0),
                    $box.margin.horizontal(1.5),
                    $box.minHeight(32),
                    $box.padding.horizontal.ref(SpaceVariant.small),
                    $box.alignment.centerLeft(),
                  ),
                  child: StyledText(suggestion),
                ),
            ],
          ),
      ],
    );
  }
}
