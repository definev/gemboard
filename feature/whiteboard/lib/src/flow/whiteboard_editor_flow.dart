import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:genit_common/genit_common.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mix/mix.dart';
import 'package:super_drag_and_drop/super_drag_and_drop.dart';
import 'package:utils/utils.dart';
import 'package:whiteboard/src/domain/data/cursor_mode.dart';
import 'package:whiteboard/src/domain/model/whiteboard.dart';
import 'package:whiteboard/src/provider/get_whiteboard_by_id.dart';
import 'package:whiteboard/src/view/whiteboard_view.dart';
import 'package:whiteboard/src/widget/whiteboard_cursor_tool.dart';

final defaultCursorMode = switch (defaultTargetPlatform) {
  TargetPlatform.android || TargetPlatform.iOS => CursorMode.handTool,
  _ => CursorMode.move,
};

class WhiteboardEditorFlow extends HookConsumerWidget {
  const WhiteboardEditorFlow({
    super.key,
    required this.id,
    required this.resizableController,
  });

  static const allowedOperations = [
    DropOperation.link,
    DropOperation.move,
    DropOperation.copy,
    DropOperation.userCancelled,
  ];

  final WhiteboardId id;
  final ResizableController? resizableController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cursorMode = useState(defaultCursorMode);

    final whiteboard = ref.watch(getWhiteboardByIdProvider(id: id));

    var actionTool = DSToolbar(
      children: [
        HookBuilder(
          builder: (context) {
            final itemKey = useMemoized(() => GlobalKey());
            return DragItemWidget(
              key: itemKey,
              dragItemProvider: (request) {
                final localPosition =
                    (itemKey.currentContext!.findRenderObject()! as RenderBox)
                        .globalToLocal(request.location);

                return DragItem(
                  localData: Cell.article(
                    id: CellId(
                      parentId: CellParentId(whiteboardId: id.id),
                      id: Helper.createId(),
                    ),
                    offset: localPosition,
                    width: 200,
                    decoration: CellDecoration(color: 'red'),
                    title: 'How to use Whiteboard',
                    content: 'Whiteboard is a tool for collaboration',
                    editable: false,
                  ).toJson(),
                );
              },
              allowedOperations: () => allowedOperations,
              child: DraggableWidget(
                child: DSTooltip(
                  alignment: Alignment.bottomCenter,
                  label: StyledText('Brainstorming'),
                  child: Button(
                    style: Style(
                      $box.height(40),
                      $box.width(40),
                      $box.alignment.center(),
                    ),
                    onPressed: () {},
                    child: Icon(IconlyLight.discovery),
                  ),
                ),
              ),
            );
          },
        ),
        HookBuilder(
          builder: (context) {
            final itemKey = useMemoized(() => GlobalKey());
            return DragItemWidget(
              key: itemKey,
              dragItemProvider: (request) {
                final localPosition =
                    (itemKey.currentContext!.findRenderObject()! as RenderBox)
                        .globalToLocal(request.location);

                return DragItem(
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
              allowedOperations: () => allowedOperations,
              child: DraggableWidget(
                child: DSTooltip(
                  alignment: Alignment.bottomCenter,
                  label: StyledText('Notes'),
                  child: Button(
                    style: Style(
                      $box.height(40),
                      $box.width(40),
                      $box.alignment.center(),
                    ),
                    onPressed: () {},
                    child: Icon(IconlyLight.document),
                  ),
                ),
              ),
            );
          },
        ),
        HookBuilder(
          builder: (context) {
            final itemKey = useMemoized(() => GlobalKey());
            return DragItemWidget(
              key: itemKey,
              dragItemProvider: (request) {
                final localPosition =
                    (itemKey.currentContext!.findRenderObject()! as RenderBox)
                        .globalToLocal(request.location);

                return DragItem(
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
              allowedOperations: () => allowedOperations,
              child: DraggableWidget(
                child: DSTooltip(
                  alignment: Alignment.bottomCenter,
                  label: StyledText('Chat'),
                  child: Button(
                    style: Style(
                      $box.height(40),
                      $box.width(40),
                      $box.alignment.center(),
                    ),
                    onPressed: () {},
                    child: Icon(IconlyLight.chat),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );

    final cursorModeTool = DSToolbar(
      children: [
        DSTooltip(
          alignment: Alignment.bottomCenter,
          label: StyledText('Move'),
          child: Button(
            style: Style(
              $box.height(40),
              $box.width(40),
              $box.alignment.center(),
            ),
            kind: switch (cursorMode.value) {
              CursorMode.move => ButtonKind.filled,
              CursorMode.handTool => ButtonKind.flat,
            },
            onPressed: () => cursorMode.value = CursorMode.move,
            child: Icon(LineIcons.mousePointer),
          ),
        ),
        DSTooltip(
          alignment: Alignment.bottomCenter,
          label: StyledText('Hand tool'),
          child: Button(
            style: Style(
              $box.height(40),
              $box.width(40),
              $box.alignment.center(),
            ),
            kind: switch (cursorMode.value) {
              CursorMode.move => ButtonKind.flat,
              CursorMode.handTool => ButtonKind.filled,
            },
            onPressed: () => cursorMode.value = CursorMode.handTool,
            child: Icon(LineIcons.paperHandAlt),
          ),
        ),
      ],
    );

    final verticalScrollController = useScrollController();
    final verticalDetails = useMemoized(
      () => ScrollableDetails.vertical(
        controller: verticalScrollController,
        physics: switch (defaultTargetPlatform) {
          TargetPlatform.android ||
          TargetPlatform.iOS =>
            NeverScrollableScrollPhysics(),
          _ => AlwaysScrollableScrollPhysics(),
        },
      ),
    );
    final horizontalScrollController = useScrollController();
    final horizontalDetails = useMemoized(
      () => ScrollableDetails.horizontal(
        controller: horizontalScrollController,
        physics: switch (defaultTargetPlatform) {
          TargetPlatform.android ||
          TargetPlatform.iOS =>
            NeverScrollableScrollPhysics(),
          _ => AlwaysScrollableScrollPhysics(),
        },
      ),
    );
    final scaleFactor = useState(0.5);

    return switch (whiteboard) {
      AsyncLoading() => const Center(
          child: CircularProgressIndicator(),
        ),
      AsyncData(:final value) => () {
          var whiteboardBuilder = WhiteboardCursorTool(
            cursorMode: cursorMode,
            horizontalDetails: horizontalDetails,
            verticalDetails: verticalDetails,
            onSelectionStart: () => ref.read(
              deselectCellProvider(
                parentId: CellParentId(whiteboardId: id.id),
              ).future,
            ),
            onSelection: (rect) async {
              final viewportTopLeft = Offset(
                horizontalDetails.controller!.offset,
                verticalDetails.controller!.offset,
              );
              final viewportRect = Rect.fromPoints(
                (rect.topLeft + viewportTopLeft) / scaleFactor.value,
                (rect.bottomRight + viewportTopLeft) / scaleFactor.value,
              );

              await ref.read(
                selectCellProvider(
                  parentId: CellParentId(whiteboardId: id.id),
                  selection: viewportRect,
                ).future,
              );
            },
            whiteboardBuilder: (
              enableMoveByMouse,
              enableMoveByTouch,
              onGrab,
            ) =>
                WhiteboardView(
              key: ValueKey('whiteboard ${id.id}'),
              scaleFactor: scaleFactor,
              enableMoveByMouse: cursorMode.value == CursorMode.handTool,
              enableMoveByTouch: cursorMode.value == CursorMode.handTool,
              verticalDetails: verticalDetails,
              horizontalDetails: horizontalDetails,
              onScaleStart: () => onGrab.value = true,
              onScaleEnd: () => onGrab.value = false,
              data: value,
              cellsStreamProvider: getCellListProvider(
                parentId: CellParentId(whiteboardId: id.id),
              ),
              onCellCreated: (value) => ref.read(
                createCellProvider(
                  parentId: CellParentId(whiteboardId: id.id),
                  data: value,
                ).future,
              ),
              onCellUpdated: (oldValue, newValue) => ref.read(
                updateCellProvider(
                  id: newValue.id,
                  data: newValue,
                ).future,
              ),
              onCellsUpdated: (cells) => ref.read(
                updateCellsProvider(
                  parentId: CellParentId(whiteboardId: id.id),
                  cells: cells,
                ).future,
              ),
            ),
          );
          final appBar = Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                WindowMover(
                  child: Box(
                    style: Style(
                      $box.color.ref(ColorVariant.surface),
                      $box.shadow(
                          blurRadius: 10,
                          color: ColorVariant.onSurface
                              .resolve(context)
                              .withOpacity(OpacityVariant.hightlight
                                  .resolve(context)
                                  .value)),
                      $box.padding.all.ref(SpaceVariant.small),
                      $flex.mainAxisAlignment.center(),
                    ),
                    child: SafeArea(
                      child: StyledRow(
                        children: [
                          Expanded(
                            child: Center(
                              child: IntrinsicWidth(
                                child: EmojiLabelEditor(
                                  readOnly: true,
                                  emoji: value.emoji,
                                  label: value.title,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(SpaceVariant.small.resolve(context)),
                  child: StyledFlex(
                    direction: Axis.horizontal,
                    style: Style(
                      $flex.mainAxisSize.min(),
                      $flex.gap.ref(SpaceVariant.medium),
                    ),
                    children: [
                      actionTool,
                      cursorModeTool,
                    ],
                  ),
                ),
              ],
            ),
          );
          return Stack(
            children: [
              Positioned.fill(child: whiteboardBuilder),
              appBar,
            ],
          );
        }(),
      AsyncError(:final error, stackTrace: final _) => Center(
          child: Text('Error: $error'),
        ),
      _ => SizedBox(),
    };
  }
}
