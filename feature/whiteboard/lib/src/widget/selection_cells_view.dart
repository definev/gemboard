import 'dart:ui';

import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:iconly/iconly.dart';
import 'package:mix/mix.dart';

class SelectionCellsView extends HookWidget {
  const SelectionCellsView({
    required this.viewportSelectionStart,
    required this.viewportSelectionEnd,
    required this.scaleFactor,
    required this.selectedCellIds,
    required this.cellMaps,
    required this.onSelectionMove,
  });

  final Offset viewportSelectionStart;
  final Offset viewportSelectionEnd;
  final double scaleFactor;
  final List<String> selectedCellIds;
  final Map<String, (GlobalKey, Cell)> cellMaps;
  final void Function(Map<String, Offset> newOffsets) onSelectionMove;

  @override
  Widget build(BuildContext context) {
    final showChat = useState(false);
    final initialLocalPosition = useRef(Offset.zero);
    final initialSelectedCells = useRef(<String, Offset>{});

    return Stack(
      children: [
        Positioned.fromRect(
          rect: Rect.fromPoints(
            viewportSelectionStart,
            viewportSelectionEnd,
          ),
          child: PortalTarget(
            anchor: Aligned(
              follower: Alignment.bottomCenter,
              target: Alignment.topCenter,
            ),
            portalFollower: Transform.scale(
              scale: scaleFactor,
              alignment: Alignment.bottomCenter,
              child: StyledColumn(
                style: Style(
                  $flex.mainAxisSize.min(),
                  $flex.gap.ref(SpaceVariant.small),
                ),
                children: [
                  if (showChat.value)
                    IntrinsicHeight(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 600),
                        child: DSTextbox(
                          autofocus: true,
                          style: Style(
                            $box.margin.horizontal.ref(SpaceVariant.small),
                          ),
                          hintText: 'Ask a question',
                          minLines: 1,
                          maxLines: 10,
                          trailing: Button(
                            style: Style(
                              $box.margin.horizontal.ref(SpaceVariant.small),
                            ),
                            onPressed: () {
                              showChat.value = false;
                            },
                            child: Icon(IconlyLight.send),
                          ),
                        ),
                      ),
                    ),
                  DSToolbar(
                    style: Style(
                      $box.margin.bottom.ref(SpaceVariant.small),
                    ),
                    direction: Axis.horizontal,
                    children: [
                      Button(
                        onPressed: () => showChat.value = !showChat.value,
                        child: Icon(IconlyLight.chat),
                      ),
                      Button(
                        onPressed: () {},
                        child: Icon(IconlyLight.delete),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            child: GestureDetector(
              supportedDevices: {
                ...PointerDeviceKind.values,
              }..remove(PointerDeviceKind.trackpad),
              onPanStart: (details) {
                initialLocalPosition.value = details.globalPosition;
                initialSelectedCells.value = {
                  for (var i = 0; i < selectedCellIds.length; i++)
                    selectedCellIds[i]: cellMaps[selectedCellIds[i]]!.$2.offset,
                };
              },
              onPanUpdate: (details) {
                final delta =
                    (details.globalPosition - initialLocalPosition.value) / scaleFactor;
                final newSelectedCells = {
                  for (var i = 0; i < selectedCellIds.length; i++)
                    selectedCellIds[i]:
                        initialSelectedCells.value[selectedCellIds[i]]! + delta,
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
        ),
      ],
    );
  }
}
