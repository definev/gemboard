import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:mix/mix.dart';
import 'package:super_drag_and_drop/super_drag_and_drop.dart';
import 'package:utils/utils.dart';
import 'package:whiteboard/src/domain/model/whiteboard.dart';
import 'package:whiteboard/src/provider/get_whiteboard_by_id.dart';
import 'package:whiteboard/src/view/whiteboard_view.dart';

class WhiteboardEditorFlow extends ConsumerWidget {
  const WhiteboardEditorFlow({
    super.key,
    required this.id,
  });

  final WhiteboardId id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final whiteboard = ref.watch(getWhiteboardByIdProvider(id: id));
    return switch (whiteboard) {
      AsyncLoading() => const Center(
          child: CircularProgressIndicator(),
        ),
      AsyncData(:final value) => Stack(
          children: [
            Positioned.fill(
              child: WhiteboardView(
                data: value,
                cellsStreamProvider: getCellListProvider(
                  parentId: CellParentId(whiteboardId: id.id),
                ),
                onCellUpdated: (oldValue, newValue) {},
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: DSToolbar(
                style: Style(
                  $box.margin.all.ref(SpaceVariant.large),
                ),
                direction: Axis.horizontal,
                children: [
                  HookBuilder(
                    builder: (context) {
                      final itemKey = useMemoized(() => GlobalKey());
                      return DragItemWidget(
                        key: itemKey,
                        dragItemProvider: (request) {
                          final localPosition = (itemKey.currentContext!
                                  .findRenderObject()! as RenderBox)
                              .globalToLocal(
                            request.location,
                          );
                          print(
                              'Global: ${request.location} | Local: $localPosition');

                          return DragItem(
                            // This data is only accessible when dropping within same
                            // application. (optional)
                            localData: Cell.text(
                              id: CellId(
                                parentId: CellParentId(whiteboardId: id.id),
                                id: Helper.createId(),
                              ),
                              offset: localPosition,
                              width: 200,
                              decoration: CellDecoration(color: 'red'),
                              text: 'Hello World',
                            ).toJson(),
                          );
                        },
                        allowedOperations: () => [
                          DropOperation.link,
                          DropOperation.move,
                          DropOperation.copy,
                          DropOperation.userCancelled,
                        ],
                        dragBuilder: (context, child) => Row(
                          children: [
                            DSVerticalDivider(),
                            child,
                            DSVerticalDivider(),
                          ],
                        ),
                        liftBuilder: (context, child) => Row(
                          children: [
                            DSVerticalDivider(),
                            child,
                            DSVerticalDivider(),
                          ],
                        ),
                        child: DraggableWidget(
                          child: DSToolbarItem(
                            direction: Axis.horizontal,
                            child: Icon(IconlyLight.discovery),
                          ),
                        ),
                      );
                    },
                  ),
                  DSToolbarItem(child: Icon(IconlyLight.bookmark)),
                  DSToolbarItem(child: Icon(IconlyLight.voice)),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SpaceVariant.gap.resolve(context)),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: 42,
                        maxWidth: 200,
                      ),
                      child: DSTextbox(hintText: 'Type your question'),
                    ),
                  ),
                  DSToolbarItem(child: Icon(IconlyLight.arrow_up_circle)),
                ],
              ),
            ),
          ],
        ),
      AsyncError(:final error, stackTrace: final _) => Center(
          child: Text('Error: $error'),
        ),
      _ => SizedBox(),
    };
  }
}
