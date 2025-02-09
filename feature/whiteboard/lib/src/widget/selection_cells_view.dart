import 'dart:math';
import 'dart:ui';

import 'package:boundless_stack/boundless_stack.dart';
import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:mix/mix.dart';
import 'package:utils/utils.dart';

class SelectionCellsView extends HookWidget {
  SelectionCellsView({
    required this.horizontalPosition,
    required this.verticalPosition,
    required this.viewportSelection,
    required this.horizontalDetails,
    required this.verticalDetails,
    required this.scaleFactor,
    required this.selectedCells,
    required this.cellMaps,
    required this.stackPositionDataMap,

    ///
    required this.selectionStartDxCell,
    required this.selectionStartDyCell,
    required this.selectionEndDxCell,
    required this.selectionEndDyCell,

    //
    required this.onSelectionsMove,
    required this.onSelectionsDelete,
    required this.onChatWithSelectedCells,

    /// ArticleCell
    required this.onTurnArticleIntoEditable,
    required this.onCellSummarize,

    /// Copy / paste
    required this.onCellsCopied,
    required this.onCellsCut,

    /// Move cell to another whiteboard
    required this.onMoveCellsToAnotherWhiteboard,
  });

  final ViewportOffset horizontalPosition;
  final ViewportOffset verticalPosition;
  final ScrollableDetails horizontalDetails;
  final ScrollableDetails verticalDetails;
  final Rect viewportSelection;
  final double scaleFactor;
  final List<Cell> selectedCells;
  late final List<String> selectedCellIds =
      selectedCells.map((e) => e.id.id).toList();

  final Map<String, (GlobalKey, Cell)> cellMaps;
  final Map<String, ValueNotifier<StackPositionData>> stackPositionDataMap;

  final Cell selectionStartDxCell;
  final Cell selectionStartDyCell;
  final Cell selectionEndDxCell;
  final Cell selectionEndDyCell;

  final void Function(Map<String, Offset> newOffsets) onSelectionsMove;
  final void Function(List<String> selectedCellIds) onSelectionsDelete;
  final void Function(List<String> selectedCellIds, String text)
      onChatWithSelectedCells;

  /// ArticleCell
  final void Function(ArticleCell cell) onTurnArticleIntoEditable;

  /// ArticleCell | EditableCell
  final void Function(Cell cell) onCellSummarize;

  /// Copy / Paste
  final VoidCallback onCellsCut;
  final VoidCallback onCellsCopied;

  /// Move cell to another whiteboard
  final void Function(List<String> selectedCellIds)
      onMoveCellsToAnotherWhiteboard;

  Widget buildSingleCellToolbar({
    required Cell cell,
  }) {
    return cell.maybeMap(
      orElse: () => const SizedBox(),
      editable: (editable) => HookBuilder(
        builder: (context) {
          final showChat = useState(false);
          return DSToolbar(
            children: [
              DSToolbarItem(
                onPressed: () => showChat.value = !showChat.value,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    StyledIcon(IconlyLight.chat),
                  ],
                ),
              ),
              DSToolbarItem(
                onPressed: () => onSelectionsDelete(selectedCellIds),
                child: StyledIcon(IconlyLight.delete),
              ),
            ],
          );
        },
      ),
      // image: image,
      // article: article,
      // url: url,
    );
  }

  double toolbarWidthCalculator(BuildContext context, int actionCount) {
    return SpaceVariant.small.resolve(context) * (actionCount + 1) +
        (SpaceVariant.large.resolve(context) * 2) * actionCount;
  }

  double calculateToolbarWidth(BuildContext context) {
    if (selectedCellIds.length == 1) {
      if (selectedCells.first is ArticleCell) {
        return toolbarWidthCalculator(context, 5);
      }

      return toolbarWidthCalculator(context, 4);
    }
    return toolbarWidthCalculator(context, 3);
  }

  @override
  Widget build(BuildContext context) {
    final initialLocalPosition = useRef(Offset.zero);
    final initialSelectedCells = useRef(<String, Offset>{});

    return LayoutBuilder(
      builder: (context, constraints) {
        final toolbarWidth = calculateToolbarWidth(context);
        final toolbarHeight = (SpaceVariant.large.resolve(context) +
                SpaceVariant.small.resolve(context)) *
            2;
        var left = viewportSelection.left;
        var top = viewportSelection.top;
        left += (viewportSelection.width - toolbarWidth) / 2;
        top -= toolbarHeight;

        return Stack(
          children: [
            Positioned.fromRect(
              rect: viewportSelection,
              child: GestureDetector(
                supportedDevices: {
                  ...PointerDeviceKind.values,
                }..remove(PointerDeviceKind.trackpad),
                onPanStart: (details) {
                  initialLocalPosition.value = details.globalPosition;
                  initialSelectedCells.value = {
                    for (var i = 0; i < selectedCellIds.length; i++)
                      selectedCellIds[i]:
                          cellMaps[selectedCellIds[i]]!.$2.offset,
                  };
                },
                onPanUpdate: (details) {
                  final delta =
                      (details.globalPosition - initialLocalPosition.value) /
                          scaleFactor;
                  final newSelectedCells = {
                    for (var i = 0; i < selectedCellIds.length; i++)
                      selectedCellIds[i]:
                          initialSelectedCells.value[selectedCellIds[i]]! +
                              delta,
                  };
                  onSelectionsMove(newSelectedCells);
                },
                onPanEnd: (details) {
                  initialLocalPosition.value = Offset.zero;
                  initialSelectedCells.value = {};
                },
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: ColorVariant.yellow.resolve(context).withValues(alpha:
                        OpacityVariant.hightlight.resolve(context).value),
                    border: Border.all(
                      color: ColorVariant.yellow.resolve(context),
                      width: 2 * scaleFactor,
                    ),
                  ),
                  child: const SizedBox.expand(),
                ),
              ),
            ),
            Positioned(
              left: left,
              top: top,
              child: HookBuilder(
                builder: (context) {
                  final showChat = useState(false);
                  final chatController = useTextEditingController();
                  void onSubmit() {
                    showChat.value = false;
                    if (chatController.text.trim().isEmpty) return;
                    onChatWithSelectedCells(
                      selectedCellIds,
                      chatController.text,
                    );
                    chatController.clear();
                  }

                  final chatFocusNode = useFocusNode(
                    onKey: handleEnterKey(onSubmit: onSubmit),
                  );
                  useEffect(() {
                    if (showChat.value) {
                      chatController.clear();
                      chatFocusNode.requestFocus();
                    }
                    return null;
                  }, [showChat.value]);

                  final noKeyboardConstraints = useState(constraints);
                  final keyboardVisibilityController =
                      useMemoized(() => KeyboardVisibilityController());
                  useOnStreamChange(
                    keyboardVisibilityController.onChange,
                    onData: (event) {
                      if (event == false) {
                        noKeyboardConstraints.value = constraints;
                      }
                    },
                  );

                  var suggestionsChat = HookConsumer(
                    builder: (context, ref, child) {
                      final first = selectedCells.first;
                      final suggestionsAsyncValue =
                          useState<AsyncValue<List<String>>>(
                        AsyncValue.loading(),
                      );
                      ref.listen(
                        getRelatedQuestionsOrTopicsProvider(
                          topicOrQuestion: first.map(
                            brainstorming: (value) =>
                                '${value.preContext}: ${value.question}',
                            editable: (value) {
                              final content = '''TITLE: ${value.title}
CONTENT: ${value.content}''';
                              return switch (value.preContext) {
                                null => content,
                                final context =>
                                  '''CONTEXT: ${context}\n${content}''',
                              };
                            },
                            article: (value) {
                              final content = '''TITLE: ${value.title}
CONTENT: ${value.content}''';
                              return switch (value.preContext) {
                                null => content,
                                final context =>
                                  '''CONTEXT: ${context}\n${content}''',
                              };
                            },
                            image: (value) => '',
                            unknown: (_) => '',
                            url: (value) => '',
                            header: (value) => value.title,
                          ),
                        ),
                        (previous, next) => suggestionsAsyncValue.value = next,
                      );

                      return ListenableBuilder(
                        listenable: chatController,
                        builder: (context, child) {
                          if (chatController.text.isNotEmpty) return SizedBox();
                          return suggestionsAsyncValue.value.map(
                            data: (value) => VBox(
                              style: Style(
                                $flex.gap.ref(SpaceVariant.gap),
                                $box.color.ref(ColorVariant.background),
                              ),
                              children: [
                                for (final idea in value.value
                                    .sublist(0, min(3, value.value.length)))
                                  Button(
                                    style: Style(
                                      $box.minHeight(
                                          SpaceVariant.large.resolve(context) *
                                              2),
                                      $text.style.ref(TextStyleVariant.p3),
                                      $text.textAlign.center(),
                                      $box.alignment.center(),
                                    ),
                                    background: CellDecorationExtension(
                                                first.decoration)
                                            .colorVariant ??
                                        ColorVariant.blue,
                                    onPressed: () {
                                      suggestionsAsyncValue.value = AsyncData(
                                        value.value
                                            .where((element) => element != idea)
                                            .toList(),
                                      );

                                      chatController.text = idea;
                                      onSubmit();
                                    },
                                    child: StyledText(idea),
                                  ),
                              ],
                            ),
                            error: (_) => SizedBox(),
                            loading: (_) => SizedBox(),
                          );
                        },
                      );
                    },
                  );
                  var overlayChat = SeparatedColumn(
                    separatorBuilder: () =>
                        SizedBox(height: SpaceVariant.small.resolve(context)),
                    children: [
                      DSTextbox(
                        controller: chatController,
                        focusNode: chatFocusNode,
                        autofocus: true,
                        minLines: 1,
                        maxLines: 4,
                        hintText: 'Type a message...',
                        trailing: Button(
                          onPressed: onSubmit,
                          child: StyledIcon(IconlyLight.send),
                        ),
                      ),
                      if (selectedCells.length == 1)
                        switch (selectedCells.first) {
                          ImageCell() ||
                          UnknownCell() ||
                          UrlCell() =>
                            SizedBox(),
                          _ => suggestionsChat,
                        },
                    ],
                  );
                  return PortalTarget(
                    visible: showChat.value,
                    portalFollower: ListenableBuilder(
                      listenable: chatController,
                      builder: (context, child) => Stack(
                        children: [
                          Positioned(
                            left: viewportSelection.left +
                                (viewportSelection.width - 400) / 2,
                            top: viewportSelection.top +
                                SpaceVariant.small.resolve(context),
                            width: 400,
                            child: overlayChat,
                          ),
                        ],
                      ),
                    ),
                    child: DSToolbar(
                      direction: Axis.horizontal,
                      children: [
                        DSTooltip(
                          label: StyledText('Chat'),
                          alignment: Alignment.topCenter,
                          child: DSToolbarItem(
                            onPressed: () => showChat.value = !showChat.value,
                            child: StyledIcon(IconlyLight.chat),
                          ),
                        ),
                        ...switch (selectedCells.length == 1) {
                          false => [],
                          true => [
                              if (selectedCells.first is ImageCell)
                                DSTooltip(
                                  label: StyledText('Describe image'),
                                  alignment: Alignment.topCenter,
                                  child: DSToolbarItem(
                                    onPressed: () => onCellSummarize(
                                      cellMaps[selectedCellIds.first]!.$2,
                                    ),
                                    child: StyledIcon(
                                        CupertinoIcons.doc_text_viewfinder),
                                  ),
                                )
                              else
                                DSTooltip(
                                  label: StyledText('Summarize'),
                                  alignment: Alignment.topCenter,
                                  child: DSToolbarItem(
                                    onPressed: () => onCellSummarize(
                                      cellMaps[selectedCellIds.first]!.$2,
                                    ),
                                    child: StyledIcon(
                                        CupertinoIcons.doc_text_viewfinder),
                                  ),
                                ),
                              if (selectedCells.first is ArticleCell)
                                DSTooltip(
                                  label: StyledText('Turn into editable'),
                                  alignment: Alignment.topCenter,
                                  child: DSToolbarItem(
                                    onPressed: () => onTurnArticleIntoEditable(
                                      selectedCells.first as ArticleCell,
                                    ),
                                    child: StyledIcon(IconlyLight.document),
                                  ),
                                ),
                            ],
                        },
                        DSTooltip(
                          label: StyledText('Export to whiteboard'),
                          alignment: Alignment.topCenter,
                          child: DSToolbarItem(
                            onPressed: () =>
                                onMoveCellsToAnotherWhiteboard(selectedCellIds),
                            child: StyledIcon(IconlyLight.upload),
                          ),
                        ),
                        DSTooltip(
                          label: StyledText('Delete'),
                          alignment: Alignment.topCenter,
                          child: DSToolbarItem(
                            onPressed: () =>
                                onSelectionsDelete(selectedCellIds),
                            child: StyledIcon(IconlyLight.delete),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }

  static Rect computeSelectionRect({
    required Offset selectionStart,
    required Offset selectionEnd,
    required Offset viewportTopLeft,
    ValueNotifier<StackPositionData>? selectionStartDx,
    ValueNotifier<StackPositionData>? selectionStartDy,
    ValueNotifier<StackPositionData>? selectionEndDx,
    ValueNotifier<StackPositionData>? selectionEndDy,
    required Offset spacingOffset,
    required double scaleFactor,
  }) {
    selectionStart = Offset(
      switch (selectionStartDx) {
        null => selectionStart.dx,
        final selectionStartDx => selectionStartDx.value.offset.dx,
      },
      switch (selectionStartDy) {
        null => selectionStart.dy,
        final selectionStartDy => selectionStartDy.value.offset.dy,
      },
    );
    selectionEnd = Offset(
      switch (selectionEndDx) {
        null => selectionEnd.dx,
        final selectionEndDx => selectionEndDx.value.offset.dx +
            (selectionEndDx.value.width ??
                selectionEndDx.value.preferredWidth ??
                0),
      },
      switch (selectionEndDy) {
        null => selectionEnd.dy,
        final selectionEndDy => selectionEndDy.value.offset.dy +
            (selectionEndDy.value.height ??
                selectionEndDy.value.preferredHeight ??
                0),
      },
    );

    var viewportSelectionStart =
        ((selectionStart - viewportTopLeft / scaleFactor) - spacingOffset) *
            scaleFactor;
    var viewportSelectionEnd =
        ((selectionEnd - viewportTopLeft / scaleFactor) + spacingOffset) *
            scaleFactor;

    return Rect.fromPoints(viewportSelectionStart, viewportSelectionEnd);
  }
}
