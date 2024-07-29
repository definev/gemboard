import 'dart:math';

import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:gemboard_common/gemboard_common.dart';
import 'package:graph_edge/graph_edge.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mix/mix.dart';
import 'package:super_drag_and_drop/super_drag_and_drop.dart';
import 'package:utils/utils.dart';
import 'package:whiteboard/src/domain/data/cursor_mode.dart';
import 'package:whiteboard/src/domain/data/whiteboard_position.dart';
import 'package:whiteboard/src/provider/get_whiteboard_position.dart';
import 'package:whiteboard/src/provider/set_whiteboard_position.dart';
import 'package:whiteboard/src/view/whiteboard_view.dart';
import 'package:whiteboard/src/widget/whiteboard_cursor_tool.dart';
import 'package:whiteboard/whiteboard.dart';

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
    final whiteboardAsyncValue = ref.watch(getWhiteboardByIdProvider(id: id));

    return switch (whiteboardAsyncValue) {
      AsyncLoading() => const Center(
          child: CircularProgressIndicator(),
        ),
      AsyncData(:final value) => WhiteboardEditorFlowData(
          data: value,
          resizableController: resizableController,
        ),
      AsyncError(:final error, stackTrace: final _) => Center(
          child: Text('Error: $error'),
        ),
      _ => SizedBox(),
    };
  }
}

class WhiteboardEditorFlowData extends HookConsumerWidget {
  const WhiteboardEditorFlowData({
    super.key,
    required this.data,
    required this.resizableController,
  });

  final Whiteboard data;
  final ResizableController? resizableController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = data.id;

    final showChat = useState(false);
    final chatTextController = useTextEditingController();
    useEffect(() {
      if (showChat.value) {
        chatTextController.text = '';
      }
      return null;
    }, [showChat.value]);
    final cursorMode = useState(defaultCursorMode);

    /// This is base scale for all element in canvas

    ButtonKind kindBasedOn(CursorMode cursorMode, CursorMode target) {
      return cursorMode == target ? ButtonKind.filled : ButtonKind.flat;
    }

    final scaleFactor = useState(0.5);
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
      [cursorMode.value],
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
      [cursorMode.value],
    );

    final whiteboardKey = useMemoized(() =>
        GlobalKey<WhiteboardViewState>(debugLabel: 'whiteboard ${id.id}'));

    var whiteboardBuilder = Portal(
      child: WhiteboardCursorTool(
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
        whiteboardBuilder: (enableMoveByMouse, enableMoveByTouch, onGrab) =>
            WhiteboardView(
          key: whiteboardKey,
          canvasScale: WhiteboardPosition.canvasScale,
          scaleFactor: scaleFactor,
          enableMoveByMouse: cursorMode.value == CursorMode.handTool,
          enableMoveByTouch: cursorMode.value == CursorMode.handTool,
          verticalDetails: verticalDetails,
          horizontalDetails: horizontalDetails,
          onScaleStart: () => onGrab.value = true,
          onScaleEnd: () => onGrab.value = false,
          data: data,

          /// Edge related
          edgesStreamProvider: getEdgeListProvider(
            parentId: EdgeParentId(whiteboardId: id.id),
          ),
          onEdgeCreated: (value) => ref.read(
            createEdgeProvider(
              parentId: EdgeParentId(whiteboardId: id.id),
              data: value,
            ).future,
          ),
          onEdgeUpdated: (oldValue, newValue) => ref.read(
            updateEdgeProvider(
              id: newValue.id,
              data: newValue,
            ).future,
          ),
          onEdgesDeleted: (edgeIds) => ref.read(
            deleteEdgesProvider(
              ids: [
                for (final edgeId in edgeIds)
                  EdgeId(
                    parentId: EdgeParentId(whiteboardId: id.id),
                    id: edgeId,
                  ),
              ],
            ).future,
          ),
          onEdgesUpdated: (edges) => ref.read(
            updateEdgesProvider(
              parentId: EdgeParentId(whiteboardId: id.id),
              edges: edges,
            ).future,
          ),

          /// Cell related
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
          onCellsDeleted: (cellIds) async {
            await ref.read(
              deleteCellsProvider(
                ids: [
                  for (final cellId in cellIds)
                    CellId(
                      parentId: CellParentId(whiteboardId: id.id),
                      id: cellId,
                    ),
                ],
              ).future,
            );
            for (final cellId in cellIds) {
              await ref.read(
                deleteCellEdgeProvider(
                  parentId: EdgeParentId(whiteboardId: id.id),
                  cellId: cellId,
                ).future,
              );
            }
          },
        ),
      ),
    );
    final appBar = Align(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          DSAppbar(
            border: WhiteboardDecoration(data).colorValue(context),
            title: IntrinsicWidth(
              child: EmojiLabelEditor(
                emoji: data.emoji,
                label: data.title,
                onEmojiSelected: (emoji) => ref.read(
                  updateWhiteboardProvider(
                    id: id,
                    data: data.copyWith(emoji: emoji),
                  ).future,
                ),
                onLabelChanged: (label) => ref.read(
                  updateWhiteboardProvider(
                    id: id,
                    data: data.copyWith(title: label),
                  ).future,
                ),
              ),
            ),
          ),
        ],
      ),
    );

    final whiteboard = LayoutBuilder(
      builder: (context, constraints) {
        final cellWidth = min(
              constraints.maxWidth - SpaceVariant.mediumLarge.resolve(context),
              480.0,
            ) *
            WhiteboardPosition.canvasScale;
        final actionTool = DSToolbar(
          children: [
            HookBuilder(
              builder: (context) {
                final itemKey = useMemoized(() => GlobalKey());
                return DragItemWidget(
                  key: itemKey,
                  dragItemProvider: (request) {
                    final localPosition = (itemKey.currentContext!
                            .findRenderObject()! as RenderBox)
                        .globalToLocal(request.location);

                    return DragItem(
                      localData: Cell.brainstorming(
                        id: CellId(
                          parentId: CellParentId(whiteboardId: id.id),
                          id: Helper.createId(),
                        ),
                        offset: localPosition,
                        width: cellWidth,
                        decoration: CellDecoration(color: 'yellow'),
                        question: null,
                        suggestions: [],
                      ).toJson(),
                    );
                  },
                  allowedOperations: () =>
                      WhiteboardEditorFlow.allowedOperations,
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
                        onPressed: () {
                          final cell = Cell.brainstorming(
                            id: CellId(
                              parentId: CellParentId(whiteboardId: id.id),
                              id: Helper.createId(),
                            ),
                            offset:
                                whiteboardKey.currentState!.offsetToViewport(
                              constraints.biggest.topCenter(Offset.zero),
                            ),
                            width: cellWidth,
                            decoration: CellDecoration(color: 'yellow'),
                            question: null,
                            suggestions: [],
                          );
                          whiteboardKey.currentState?.cell_onCreated(cell);
                        },
                        child: StyledIcon(IconlyLight.discovery),
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
                    final localPosition = (itemKey.currentContext!
                            .findRenderObject()! as RenderBox)
                        .globalToLocal(request.location);

                    return DragItem(
                      localData: Cell.editable(
                        id: CellId(
                          parentId: CellParentId(whiteboardId: id.id),
                          id: Helper.createId(),
                        ),
                        offset: localPosition,
                        width: cellWidth,
                        decoration:
                            CellDecoration(color: ColorVariant.randonColor()),
                        title: '',
                        content: '',
                      ).toJson(),
                    );
                  },
                  allowedOperations: () =>
                      WhiteboardEditorFlow.allowedOperations,
                  child: DraggableWidget(
                    child: DSTooltip(
                      alignment: Alignment.bottomCenter,
                      label: StyledText('Note'),
                      child: Button(
                        style: Style(
                          $box.height(40),
                          $box.width(40),
                          $box.alignment.center(),
                        ),
                        onPressed: () {
                          final cell = Cell.editable(
                            id: CellId(
                              parentId: CellParentId(whiteboardId: id.id),
                              id: Helper.createId(),
                            ),
                            offset:
                                whiteboardKey.currentState!.offsetToViewport(
                              constraints.biggest.topCenter(Offset.zero),
                            ),
                            width: cellWidth,
                            decoration: CellDecoration(
                                color: ColorVariant.randonColor()),
                            title: '',
                            content: '',
                          );
                          whiteboardKey.currentState?.cell_onCreated(cell);
                        },
                        child: StyledIcon(IconlyLight.document),
                      ),
                    ),
                  ),
                );
              },
            ),
            DSTooltip(
              alignment: Alignment.bottomCenter,
              label: StyledText('Chat'),
              child: Button(
                style: Style(
                  $box.height(40),
                  $box.width(40),
                  $box.alignment.center(),
                ),
                onPressed: () => showChat.value = !showChat.value,
                child: StyledIcon(IconlyLight.chat),
              ),
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
                kind: kindBasedOn(cursorMode.value, CursorMode.move),
                onPressed: () => cursorMode.value = CursorMode.move,
                child: StyledIcon(LineIcons.mousePointer),
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
                kind: kindBasedOn(cursorMode.value, CursorMode.handTool),
                onPressed: () => cursorMode.value = CursorMode.handTool,
                child: StyledIcon(LineIcons.paperHandAlt),
              ),
            ),
          ],
        );

        final actionToolWidth = SpaceVariant.small.resolve(context) * 4 +
            (SpaceVariant.large.resolve(context) * 2) * 3;
        final cursorModeToolWidth = SpaceVariant.small.resolve(context) * 4 +
            (SpaceVariant.large.resolve(context) * 2) * 3;

        return MediaQuery.removeViewPadding(
          context: context,
          child: Stack(
            children: [
              Positioned.fill(child: whiteboardBuilder),
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: actionToolWidth +
                      cursorModeToolWidth +
                      SpaceVariant.small.resolve(context) * 2 +
                      SpaceVariant.medium.resolve(context),
                  child: VBox(
                    style: Style(
                      $box.padding.all.ref(SpaceVariant.small),
                      $flex.gap.ref(SpaceVariant.small),
                      $flex.mainAxisSize.min(),
                    ),
                    children: [
                      StyledFlex(
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
                      if (showChat.value)
                        DSTextbox(
                          autofocus: true,
                          controller: chatTextController,
                          hintText: 'Type a message...',
                          minLines: 1,
                          maxLines: 8,
                          trailing: Button(
                            onPressed: () {
                              whiteboardKey.currentState?.cell_onAskNewQuestion(
                                  chatTextController.text);
                              showChat.value = false;
                            },
                            child: StyledIcon(IconlyLight.send),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );

    return HookConsumer(
      builder: (context, ref, child) {
        useEffect(() {
          Debouncer debouncer = Debouncer();
          () async {
            final position =
                await ref.read(getWhiteboardPositionProvider(id: id).future);

            final WhiteboardPosition(:offset, :scale) = position;
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              scaleFactor.value = scale;
              while (!(verticalScrollController.hasClients &&
                  horizontalScrollController.hasClients)) {
                await Future.delayed(Duration(milliseconds: 10));
              }
              if (verticalScrollController.offset != offset.dy) {
                verticalScrollController.jumpTo(offset.dy);
              }

              if (horizontalScrollController.offset != offset.dx) {
                horizontalScrollController.jumpTo(offset.dx);
              }
            });
          }();

          void onMove() {
            debouncer.run(
              () {
                ref.read(
                  setWhiteboardPositionProvider(
                    id: id,
                    position: WhiteboardPosition(
                      whiteboardId: id.id,
                      scale: scaleFactor.value,
                      offset: Offset(
                        horizontalScrollController.offset,
                        verticalScrollController.offset,
                      ),
                    ),
                  ).future,
                );
              },
              Duration(milliseconds: 200),
            );
          }

          horizontalScrollController.addListener(onMove);
          verticalScrollController.addListener(onMove);
          scaleFactor.addListener(onMove);
          return () {
            horizontalScrollController.removeListener(onMove);
            verticalScrollController.removeListener(onMove);
            scaleFactor.removeListener(onMove);
            debouncer.cancel();
          };
        }, []);
        return child!;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Column(
          children: [
            appBar,
            Expanded(
              child: whiteboard,
            ),
          ],
        ),
      ),
    );
  }
}
