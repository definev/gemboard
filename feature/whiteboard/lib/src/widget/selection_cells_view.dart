import 'dart:ui';

import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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
    required this.onSelectionMove,
    required this.onSelectionsDelete,
    required this.onCellSummarize,
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

  final void Function(Map<String, Offset> newOffsets) onSelectionMove;
  final void Function(List<String> selectedCellIds) onSelectionsDelete;
  final void Function(Cell cell) onCellSummarize;

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

  double calculateToolbarWidth(BuildContext context) {
    if (selectedCellIds.length == 1) {
      return SpaceVariant.small.resolve(context) * 4 +
          (SpaceVariant.large.resolve(context) * 2) * 3;
    }
    return SpaceVariant.small.resolve(context) * 3 +
        (SpaceVariant.large.resolve(context) * 2) * 2;
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
                  onSelectionMove(newSelectedCells);
                },
                onPanEnd: (details) {
                  initialLocalPosition.value = Offset.zero;
                  initialSelectedCells.value = {};
                },
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: ColorVariant.yellow.resolve(context).withOpacity(
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

                  return PortalTarget(
                    visible: showChat.value,
                    portalFollower: Stack(
                      children: [
                        Positioned(
                          left: viewportSelection.left +
                              (viewportSelection.width - 400) / 2,
                          bottom: constraints.maxHeight -
                              (viewportSelection.top -
                                  toolbarHeight -
                                  SpaceVariant.small.resolve(context)),
                          width: 400,
                          child: DSTextbox(
                            autofocus: true,
                            minLines: 1,
                            maxLines: 4,
                            trailing: Button(
                              onPressed: () => showChat.value = false,
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
                            onPressed: () {
                              showChat.value = !showChat.value;
                            },
                            child: StyledIcon(IconlyLight.chat),
                          ),
                        ),
                        if (selectedCellIds.length == 1)
                          DSTooltip(
                            label: StyledText('Summarize'),
                            alignment: Alignment.bottomCenter,
                            child: DSToolbarItem(
                              child: StyledIcon(
                                  CupertinoIcons.doc_text_viewfinder),
                            ),
                          ),
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
    );
  }
}
