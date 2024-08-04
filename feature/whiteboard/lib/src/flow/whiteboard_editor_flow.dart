import 'dart:math';

import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:gemboard_common/gemboard_common.dart';
import 'package:graph_edge/graph_edge.dart';
import 'package:home/home.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mix/mix.dart';
import 'package:settings/settings.dart';
import 'package:super_drag_and_drop/super_drag_and_drop.dart';
import 'package:utils/utils.dart';
import 'package:whiteboard/src/domain/data/cursor_mode.dart';
import 'package:whiteboard/src/domain/data/whiteboard_position.dart';
import 'package:whiteboard/src/provider/get_whiteboard_position.dart';
import 'package:whiteboard/src/provider/move_cells_and_edges_to_another_whiteboard.dart';
import 'package:whiteboard/src/provider/set_whiteboard_position.dart';
import 'package:whiteboard/src/view/guide_view.dart';
import 'package:whiteboard/src/view/whiteboard_view.dart';
import 'package:whiteboard/src/widget/whiteboard_cursor_tool.dart';
import 'package:whiteboard/src/widget/whiteboard_focusable_gesture.dart';
import 'package:whiteboard/whiteboard.dart';

final defaultCursorMode = switch (defaultTargetPlatform) {
  TargetPlatform.android || TargetPlatform.iOS => CursorMode.handTool,
  _ => CursorMode.selectionTool,
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
    final homeNavigation = ref.read(HomeNavigation.provider);

    final id = data.id;

    final showChat = useState(false);
    final chatFocusNode = useFocusNode();
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

    final scaleFactor = useState(WhiteboardPosition.defaultScaleFactor);
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

    useEffect(() {
      Debouncer debouncer = Debouncer();
      () async {
        final position =
            await ref.read(getWhiteboardPositionProvider(id: id).future);

        final WhiteboardPosition(:offset, :scale) = position;
        debugPrint('WhiteboardPosition: topLeft: $offset, scale: $scale');
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          while (!verticalScrollController.hasClients ||
              !horizontalScrollController.hasClients) {
            await Future.delayed(Duration(milliseconds: 1));
          }
          scaleFactor.value = scale;
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
            debugPrint(
                'onMove to topLeft: ${Offset(horizontalScrollController.offset, verticalScrollController.offset)}, scale: ${scaleFactor.value}');
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

    final whiteboardKey = useMemoized(() =>
        GlobalKey<WhiteboardViewState>(debugLabel: 'whiteboard ${id.id}'));

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
            trailing: Button(
              style: Style(
                $box.height(32),
                $box.width(32),
                $box.margin.horizontal.ref(SpaceVariant.small),
                $box.borderRadius.circular(SpaceVariant.small.resolve(context)),
              ),
              background: ColorVariant.onBackground,
              onPressed: () async {
                await ref.read(
                  deleteWhiteboardProvider(id: id).future,
                );
                homeNavigation.goToHome();
              },
              child: StyledIcon(IconlyLight.delete),
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

        Widget whiteboardBuilder = WhiteboardCursorTool(
          cursorMode: cursorMode,
          horizontalDetails: horizontalDetails,
          verticalDetails: verticalDetails,
          onDoubleTap: () => ref.read(
            deselectAllCellProvider(
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

            if (cursorMode.value == CursorMode.selectionToolInverse) {
              await ref.read(
                deselectCellProvider(
                  parentId: CellParentId(whiteboardId: id.id),
                  selection: viewportRect,
                ).future,
              );
              return;
            }

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
            enableMoveByStylus,
            onGrab,
          ) =>
              WhiteboardView(
            key: whiteboardKey,
            canvasScale: WhiteboardPosition.canvasScale,
            scaleFactor: scaleFactor,
            enableMoveByMouse: enableMoveByMouse,
            enableMoveByTouch: enableMoveByTouch,
            enableMoveByStylus: enableMoveByStylus,
            verticalDetails: verticalDetails,
            horizontalDetails: horizontalDetails,
            onScaleStart: () => onGrab.value = true,
            onScaleEnd: () => onGrab.value = false,
            data: data,

            /// Shortcuts Callback
            onHandToolSelected: () => cursorMode.value = CursorMode.handTool,
            onSelectionToolSelected: () =>
                cursorMode.value = CursorMode.selectionTool,
            onToggleSelection: () => switch (cursorMode.value) {
              CursorMode.selectionTool => cursorMode.value =
                  CursorMode.selectionToolInverse,
              CursorMode.selectionToolInverse => cursorMode.value =
                  CursorMode.selectionTool,
              CursorMode.handTool => cursorMode.value =
                  CursorMode.selectionTool,
            },

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
            onMoveCellsToAnotherWhiteboard: ({
              required List<Cell> cells,
              required List<Edge> edges,
            }) async {
              final whiteboardNavigation =
                  ref.read(WhiteboardNavigation.provider);
              final whiteboard =
                  await whiteboardNavigation.pushWhiteboardSelector();
              if (whiteboard == null) return;

              await ref.read(
                moveCellsAndEdgesToAnotherWhiteboardProvider(
                  viewportTopLeft: Offset(
                    horizontalDetails.controller!.offset,
                    verticalDetails.controller!.offset,
                  ),
                  scaleFactor: scaleFactor.value,
                  cells: cells,
                  edges: edges,
                  targetWhiteboard: whiteboard,
                ).future,
              );
            },
          ),
        );
        whiteboardBuilder = WhiteboardKeyboardShortcuts(
          id: data.id,
          onImageReceived: (position, uri) =>
              whiteboardKey.currentState?.cell_onImageReceived(position, uri),
          onLinkReceived: (position, uri) =>
              whiteboardKey.currentState?.cell_onLinkReceived(position, uri),
          onTextReceived: (position, value) =>
              whiteboardKey.currentState?.cell_onTextReceived(position, value),
          onHandToolSelected: () => cursorMode.value = CursorMode.handTool,
          onSelectionToolSelected: () {
            if (cursorMode.value == CursorMode.selectionTool) {
              cursorMode.value = CursorMode.selectionToolInverse;
            } else {
              cursorMode.value = CursorMode.selectionTool;
            }
          },
          onBrainstormingTriggered: () {},
          onChatTriggered: () {
            showChat.value = !showChat.value;
            chatFocusNode.requestFocus();
          },
          onNoteTriggered: () {},
          child: whiteboardBuilder,
        );
        whiteboardBuilder = Portal(
          child: whiteboardBuilder,
        );

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
                      label: StyledText(
                          'Brainstorming\n(${WhiteboardKeyboardShortcuts.brainstormingShortcut})'),
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
                      label: StyledText(
                          'Note\n(${WhiteboardKeyboardShortcuts.noteShortcut})'),
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
              label: StyledText(
                  'Chat\n(${WhiteboardKeyboardShortcuts.chatShortcut})'),
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
              label: switch (cursorMode.value) {
                CursorMode.selectionToolInverse => StyledText(
                    'Selection tool (inverse)\n(${WhiteboardKeyboardShortcuts.selectionToolShortcut})'),
                _ => StyledText(
                    'Selection tool\n(${WhiteboardKeyboardShortcuts.selectionToolShortcut})'),
              },
              child: Button(
                style: Style(
                  $box.height(40),
                  $box.width(40),
                  $box.alignment.center(),
                ),
                kind: switch (cursorMode.value) {
                  CursorMode.selectionTool => ButtonKind.filled,
                  CursorMode.selectionToolInverse => ButtonKind.filled,
                  CursorMode.handTool => ButtonKind.flat,
                },
                onPressed: () => cursorMode.value = CursorMode.selectionTool,
                child: switch (cursorMode.value) {
                  CursorMode.selectionToolInverse =>
                    StyledIcon(LineIcons.objectUngroup),
                  _ => StyledIcon(LineIcons.objectGroup),
                },
              ),
            ),
            DSTooltip(
              alignment: Alignment.bottomCenter,
              label: StyledText(
                  'Hand tool\n(${WhiteboardKeyboardShortcuts.handToolShortcut})'),
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

        Widget viewport = Stack(
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
                        focusNode: chatFocusNode,
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
            Positioned.fill(
              child: HookConsumer(
                builder: (context, ref, child) {
                  final open = useState(false);
                  ref.listen(
                    getIsOnboardedProvider,
                    (_, next) async {
                      if (next is AsyncData) {
                        open.value = !next.value!;
                        if (next.value == false) {
                          await ref.read(setIsOnboardedProvider(true).future);
                        }
                      }
                    },
                  );

                  final openStyle = Style(
                    $box.margin.all.ref(SpaceVariant.medium),
                    $box.padding.all(0),
                    $box.height(min(400, constraints.maxHeight)),
                    $box.width(min(500, constraints.maxWidth)),
                    $box.color.ref(ColorVariant.surface),
                    $with.scale(1),
                  );
                  final closeStyle = Style(
                    $box.margin.all.ref(SpaceVariant.medium),
                    $box.padding.all(0),
                    $box.height(40),
                    $box.width(40),
                    $with.scale(1),
                  );

                  return Stack(
                    children: [
                      Positioned.fill(
                        child: IgnorePointer(
                          ignoring: !open.value,
                          child: GestureDetector(
                            onTap: () => open.value = false,
                            child: Box(
                              style: Style(
                                switch (open.value) {
                                  true => $box.color(ColorVariant.onBackground
                                      .resolve(context)
                                      .withOpacity(OpacityVariant.hightlight
                                          .resolve(context)
                                          .value)),
                                  false => $box.color.transparent(),
                                },
                              ).animate(),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Button(
                          style: switch (open.value) {
                            true => openStyle,
                            false => closeStyle,
                          },
                          onPressed: () => open.value = !open.value,
                          child: switch (open.value) {
                            false => StyledIcon(LineIcons.questionCircleAlt),
                            true => GuideView(),
                          },
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        );

        viewport = Focus(
          autofocus: true,
          canRequestFocus: true,
          skipTraversal: true,
          child: viewport,
        );

        viewport = MediaQuery.removeViewPadding(
          context: context,
          child: viewport,
        );

        return viewport;
      },
    );

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          appBar,
          Expanded(
            child: whiteboard,
          ),
        ],
      ),
    );
  }
}
