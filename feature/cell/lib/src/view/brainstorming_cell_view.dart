import 'dart:async';
import 'dart:math';

import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:iconly/iconly.dart';
import 'package:mix/mix.dart';
import 'package:utils/utils.dart';

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
  final void Function(
    int index,
    ColorVariant color,
    String suggestion,
  ) onSuggestionSelected;

  static final colors = [
    ColorVariant.blue,
    ColorVariant.yellow,
    ColorVariant.green,
    ColorVariant.red,
    ColorVariant.purple,
  ];

  @override
  Widget build(BuildContext context) {
    final scale = DesignSystemTheme.of(context).scale;

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
    void onSubmit() {
      onAskForSuggestion(askForSuggestionTextController.text);
    }

    final askForSuggestionFocusNode = useFocusNode(
      onKey: handleEnterKey(onSubmit: onSubmit),
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
                  $box.minHeight(32 * scale),
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
              onTap: () => onSuggestionSelected(
                index,
                colors[index % colors.length],
                suggestion,
              ),
              child: DSCard(
                kind: DSCardKind.flat,
                background: colors[index % colors.length],
                style: Style(
                  $box.margin.all(0),
                  $box.margin.horizontal(1.5 * scale),
                  $box.minHeight(32 * scale),
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
                    Expanded(
                      child: StyledText(suggestion),
                    ),
                    StyledIcon(
                      IconlyLight.arrow_right_circle,
                      style: Style(
                        $icon.size(SpaceVariant.large.resolve(context)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
    final loadingIndicator = HookBuilder(
      builder: (context) {
        final rand = useMemoized(() => Random());
        final rand5Widths = useState(<double>[]);
        void regenerate() {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            rand5Widths.value = [
              for (int i = 0; i < 5; i++)
                (cell.width - 50 * scale) * rand.nextDouble() + 50 * scale,
            ];
          });
        }

        useEffect(() {
          regenerate();
          return null;
        }, []);

        return StyledColumn(
          style: Style(
            $flex.mainAxisSize.min(),
            $flex.crossAxisAlignment.start(),
            $flex.gap.ref(SpaceVariant.small),
          ),
          children: [
            for (final (index, width) in rand5Widths.value.indexed)
              SizedBox()
                  .animate(onPlay: (controller) => controller.loop())
                  .custom(
                    end: width,
                    builder: (context, value, child) => TweenAnimationBuilder(
                      tween: Tween(begin: 0.0, end: value),
                      curve: Easing.standard,
                      duration: Duration(milliseconds: 400),
                      builder: (context, value, child) => DSCard(
                        kind: DSCardKind.flat,
                        background: colors[index % colors.length],
                        child: SizedBox(
                          height: SpaceVariant.mediumLarge.resolve(context) * 2,
                          width: value,
                        ),
                      ),
                    ),
                  )
                  .callback(
                    delay: 200.ms,
                    duration: 200.ms,
                    callback: (value) => regenerate(),
                  ),
          ],
        );
      },
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
          focusNode: askForSuggestionFocusNode,
          hintText: 'Let your ideas flow freely, write down your topic here',
          autofocus: cell.question == null,
          onSubmitted: onAskForSuggestion,
          trailing: Button(
            highlight: ButtonHighlight.pressed,
            background: ColorVariant.onSurface,
            onPressed: onSubmit,
            child: StyledIcon(IconlyLight.send),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SpaceVariant.medium.resolve(context),
            vertical: SpaceVariant.medium.resolve(context),
          ),
          child: switch (onAskForSuggestionAsyncValue) {
            _ when onAskForSuggestionAsyncValue.hasData => suggestionCards,
            _ when onAskForSuggestionAsyncValue.hasError => StyledText(
                'Failed to load suggestions',
                style: Style(
                  $text.style.ref(TextStyleVariant.p2),
                  $text.style.color.ref(ColorVariant.red),
                  $text.textAlign.center(),
                ),
              ),
            _
                when onAskForSuggestionAsyncValue.connectionState ==
                    ConnectionState.waiting =>
              loadingIndicator,
            _ when cell.suggestions.isNotEmpty => suggestionCards,
            _ when cell.suggestions.isEmpty => SizedBox(
                height: SpaceVariant.large.resolve(context) * 4,
                child: Center(
                  child: Button(
                    style: Style(
                      $box.padding.vertical.ref(SpaceVariant.medium),
                      $box.padding.horizontal.ref(SpaceVariant.mediumLarge),
                    ),
                    background: ColorVariant.green,
                    kind: ButtonKind.filled,
                    onPressed: () {
                      if (cell.question != null) {
                        onAskForSuggestion(cell.question!);
                      }
                    },
                    child: StyledText('I need more ideas'),
                  ),
                ),
              ),
            _ => placeHolderList,
          },
        ),
      ],
    );
  }
}
