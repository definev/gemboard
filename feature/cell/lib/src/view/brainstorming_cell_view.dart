import 'dart:async';
import 'dart:math';

import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:iconly/iconly.dart';
import 'package:mix/mix.dart';

class BrainstormingCellView extends HookWidget {
  const BrainstormingCellView({
    super.key,
    required this.cell,
    required this.onAskForSuggestion,
    required this.onSuggestionSelected,
    required this.onAskForSuggestionSubscription,
  });

  final BrainstormingCell cell;
  final ValueChanged<String> onAskForSuggestion;
  final StreamSubscription? onAskForSuggestionSubscription;
  final void Function(int index, String suggestion) onSuggestionSelected;

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

    AsyncSnapshot onAskForSuggestionAsyncValue = useFuture(
      onAskForSuggestionSubscription?.asFuture(),
    );

    var placeHolderList = StyledColumn(
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
    );
    var suggestionCards = StyledColumn(
      style: Style(
        $flex.mainAxisSize.min(),
        $flex.crossAxisAlignment.start(),
        $flex.gap.ref(SpaceVariant.small),
      ),
      children: [
        for (final (index, suggestion) in cell.suggestions.indexed)
          IntrinsicWidth(
            child: GestureDetector(
              onTap: () => onSuggestionSelected(index, suggestion),
              child: DSCard(
                kind: DSCardKind.flat,
                background: colors[index % colors.length],
                style: Style(
                  $box.margin.all(0),
                  $box.margin.horizontal(1.5),
                  $box.minHeight(32),
                  $box.padding.horizontal.ref(SpaceVariant.small),
                  $box.padding.vertical.ref(SpaceVariant.small),
                  $box.alignment.centerLeft(),
                ),
                child: StyledRow(
                  inherit: true,
                  style: Style(
                    $flex.mainAxisAlignment.spaceBetween(),
                    $flex.gap.ref(SpaceVariant.large),
                  ),
                  children: [
                    StyledText(suggestion),
                    StyledIcon(IconlyLight.arrow_right_circle),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
    final loadingIndicator = StyledColumn(
      style: Style(
        $flex.mainAxisSize.min(),
        $flex.gap.ref(SpaceVariant.small),
      ),
      children: [
        for (int i = 0; i < 5; i++)
          StyledRow(
            style: Style(
              $flex.mainAxisAlignment.center(),
            ),
            children: [
              StyledText('Loading suggestions...'),
              StyledIcon(IconlyLight.scan),
            ],
          )
              .animate(
                delay: Duration(milliseconds: i * 100),
                onInit: (controller) => controller.loop(),
              )
              .slideY()
              .fadeIn(),
      ],
    );

    return VBox(
      style: Style(
          $flex.mainAxisSize.min(),
          $flex.crossAxisAlignment.start(),
          $box.color(ColorVariant.surface
              .resolve(context)
              .withOpacity(OpacityVariant.surface.resolve(context).value))),
      children: [
        DSTextbox(
          controller: askForSuggestionTextController,
          hintText: 'Let your ideas flow freely, write down your topic here',
          autofocus: cell.question == null,
          readOnly: cell.question != null,
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
        Padding(
          padding:  EdgeInsets.symmetric(
            horizontal: SpaceVariant.medium.resolve(context),
            vertical: SpaceVariant.medium.resolve(context),
          ),
          child: switch (onAskForSuggestionAsyncValue) {
            _ when (cell.suggestions.isNotEmpty) => suggestionCards,
            _ when onAskForSuggestionAsyncValue.hasData => suggestionCards,
            _
                when onAskForSuggestionAsyncValue.connectionState ==
                    ConnectionState.waiting =>
              loadingIndicator,
            _ => placeHolderList,
          },
        ),
      ],
    );
  }
}
