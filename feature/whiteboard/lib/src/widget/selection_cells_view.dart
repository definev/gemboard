import 'dart:ui';

import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:iconly/iconly.dart';
import 'package:mix/mix.dart';

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
        return toolbarWidthCalculator(context, 4);
      }

      return toolbarWidthCalculator(context, 3);
    }
    return toolbarWidthCalculator(context, 2);
  }

  @override
  Widget build(BuildContext context) {
    final initialLocalPosition = useRef(Offset.zero);
    final initialSelectedCells = useRef(<String, Offset>{});

    return Shortcuts(
      shortcuts: {
        /// Copy / Paste shortcut
        LogicalKeySet(LogicalKeyboardKey.keyC, LogicalKeyboardKey.controlLeft):
            CopySelectionTextIntent.copy,
        LogicalKeySet(LogicalKeyboardKey.keyC, LogicalKeyboardKey.controlLeft):
            CopySelectionTextIntent.cut(SelectionChangedCause.keyboard),
      },
      child: Actions(
        actions: {
          CopySelectionTextIntent: CallbackAction<CopySelectionTextIntent>(
            onInvoke: (intent) {
              if (intent.collapseSelection) {
                onCellsCut();
              } else {
                onCellsCopied();
              }
              return null;
            },
          ),
        },
        child: Focus(
          autofocus: true,
          skipTraversal: true,
          child: LayoutBuilder(
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
                        final delta = (details.globalPosition -
                                initialLocalPosition.value) /
                            scaleFactor;
                        final newSelectedCells = {
                          for (var i = 0; i < selectedCellIds.length; i++)
                            selectedCellIds[i]: initialSelectedCells
                                    .value[selectedCellIds[i]]! +
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
                          color: ColorVariant.yellow
                              .resolve(context)
                              .withOpacity(OpacityVariant.hightlight
                                  .resolve(context)
                                  .value),
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

                        return PortalTarget(
                          visible: showChat.value,
                          portalFollower: Stack(
                            children: [
                              Positioned(
                                left: viewportSelection.left +
                                    (viewportSelection.width - 400) / 2,
                                bottom: noKeyboardConstraints.value.maxHeight -
                                    (viewportSelection.top -
                                        toolbarHeight -
                                        SpaceVariant.small.resolve(context)),
                                width: 400,
                                child: DSTextbox(
                                  controller: chatController,
                                  autofocus: true,
                                  minLines: 1,
                                  maxLines: 4,
                                  hintText: 'Type a message...',
                                  trailing: Button(
                                    onPressed: () {
                                      showChat.value = false;
                                      if (chatController.text.trim().isEmpty)
                                        return;
                                      onChatWithSelectedCells(
                                        selectedCellIds,
                                        chatController.text,
                                      );
                                      chatController.clear();
                                    },
                                    child: StyledIcon(IconlyLight.send),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          child: DSToolbar(
                            direction: Axis.horizontal,
                            children: [
                              DSTooltip(
                                label: StyledText('Chat'),
                                alignment: Alignment.bottomCenter,
                                child: DSToolbarItem(
                                  onPressed: () =>
                                      showChat.value = !showChat.value,
                                  child: StyledIcon(IconlyLight.chat),
                                ),
                              ),
                              ...switch (selectedCells.length == 1) {
                                false => [],
                                true => [
                                    DSTooltip(
                                      label: StyledText('Summarize'),
                                      alignment: Alignment.bottomCenter,
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
                                        alignment: Alignment.bottomCenter,
                                        child: DSToolbarItem(
                                          onPressed: () =>
                                              onTurnArticleIntoEditable(
                                            selectedCells.first as ArticleCell,
                                          ),
                                          child:
                                              StyledIcon(IconlyLight.document),
                                        ),
                                      ),
                                  ],
                              },
                              DSTooltip(
                                label: StyledText('Delete'),
                                alignment: Alignment.bottomCenter,
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
          ),
        ),
      ),
    );
  }
}
