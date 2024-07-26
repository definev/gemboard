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
    final cursorMode = useState(defaultCursorMode);

    /// This is base scale for all element in canvas
    final canvasScale = useState(1.0);

    ButtonKind kindBasedOn(CursorMode cursorMode, CursorMode target) {
      return cursorMode == target ? ButtonKind.filled : ButtonKind.flat;
    }

    final whiteboardAsyncValue = ref.watch(getWhiteboardByIdProvider(id: id));

    Widget actionTool(BoxConstraints constraints) {
      final cellWidth = min(
        constraints.maxWidth - SpaceVariant.mediumLarge.resolve(context),
        480.0,
      ) * canvasScale.value;
      return DSToolbar(
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
                    localData: Cell.editable(
                      id: CellId(
                        parentId: CellParentId(whiteboardId: id.id),
                        id: Helper.createId(),
                      ),
                      offset: localPosition,
                      width: cellWidth,
                      decoration: CellDecoration(color: 'red'),
                      title: '',
                      content: '',
                    ).toJson(),
                  );
                },
                allowedOperations: () => allowedOperations,
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
                    localData: Cell.editable(
                      id: CellId(
                        parentId: CellParentId(whiteboardId: id.id),
                        id: Helper.createId(),
                      ),
                      offset: localPosition,
                      width: cellWidth,
                      decoration: CellDecoration(color: 'red'),
                      title: '',
                      content: '',
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
    }

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
            kind: kindBasedOn(cursorMode.value, CursorMode.handTool),
            onPressed: () => cursorMode.value = CursorMode.handTool,
            child: Icon(LineIcons.paperHandAlt),
          ),
        ),
        DSTooltip(
          alignment: Alignment.bottomCenter,
          label: StyledText('Free move'),
          child: Button(
            style: Style(
              $box.height(40),
              $box.width(40),
              $box.alignment.center(),
            ),
            kind: kindBasedOn(cursorMode.value, CursorMode.freeMove),
            onPressed: () => cursorMode.value = CursorMode.freeMove,
            child: Icon(LineIcons.alternateExpandArrows),
          ),
        ),
      ],
    );

    final scaleFactor = useState(0.5);
    final verticalScrollController = useScrollController();
    final verticalDetails = useMemoized(
      () => ScrollableDetails.vertical(
        controller: verticalScrollController,
        physics: switch (defaultTargetPlatform) {
          TargetPlatform.android ||
          TargetPlatform.iOS when cursorMode.value != CursorMode.freeMove =>
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
          TargetPlatform.iOS when cursorMode.value != CursorMode.freeMove =>
            NeverScrollableScrollPhysics(),
          _ => AlwaysScrollableScrollPhysics(),
        },
      ),
      [cursorMode.value],
    );

    final whiteboardKey = useMemoized(() =>
        GlobalKey<WhiteboardViewState>(debugLabel: 'whiteboard ${id.id}'));

    return switch (whiteboardAsyncValue) {
      AsyncLoading() => const Center(
          child: CircularProgressIndicator(),
        ),
      AsyncData(:final value) => () {
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
              whiteboardBuilder:
                  (enableMoveByMouse, enableMoveByTouch, onGrab) =>
                      WhiteboardView(
                key: whiteboardKey,
                canvasScale: canvasScale.value,
                scaleFactor: scaleFactor,
                enableMoveByMouse: cursorMode.value == CursorMode.handTool,
                enableMoveByTouch: cursorMode.value == CursorMode.handTool,
                verticalDetails: verticalDetails,
                horizontalDetails: horizontalDetails,
                onScaleStart: () => onGrab.value = true,
                onScaleEnd: () => onGrab.value = false,
                data: value,

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
                onCellsDeleted: (cellIds) => ref.read(
                  deleteCellsProvider(
                    ids: [
                      for (final cellId in cellIds)
                        CellId(
                          parentId: CellParentId(whiteboardId: id.id),
                          id: cellId,
                        ),
                    ],
                  ).future,
                ),
              ),
            ),
          );
          final appBar = Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                DSAppbar(
                  border: WhiteboardDecoration(value).colorValue(context),
                  title: IntrinsicWidth(
                    child: EmojiLabelEditor(
                      emoji: value.emoji,
                      label: value.title,
                      onEmojiSelected: (emoji) => ref.read(
                        updateWhiteboardProvider(
                          id: id,
                          data: value.copyWith(emoji: emoji),
                        ).future,
                      ),
                      onLabelChanged: (label) => ref.read(
                        updateWhiteboardProvider(
                          id: id,
                          data: value.copyWith(title: label),
                        ).future,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
          return HookConsumer(
            builder: (context, ref, child) {
              ref.listen(
                getWhiteboardPositionProvider(id: id),
                (previous, next) {
                  if (next.valueOrNull case WhiteboardPosition position) {
                    final WhiteboardPosition(:offset, :scale) = position;
                    WidgetsBinding.instance.addPostFrameCallback((_) async {
                      scaleFactor.value = scale;
                      while (!(verticalScrollController.hasClients &&
                          horizontalScrollController.hasClients)) {
                        await Future.delayed(Duration(milliseconds: 1));
                      }
                      if (verticalScrollController.offset != offset.dy) {
                        verticalScrollController.jumpTo(offset.dy);
                      }

                      if (horizontalScrollController.offset != offset.dx) {
                        horizontalScrollController.jumpTo(offset.dx);
                      }
                    });
                  }
                },
              );
              useEffect(() {
                Debouncer debouncer = Debouncer();

                void onMove() {
                  debouncer.run(
                    () {
                      ref.read(
                        setWhiteboardPositionProvider(
                          id: id,
                          position: WhiteboardPosition(
                            scale: scaleFactor.value,
                            offset: Offset(
                              horizontalScrollController.offset,
                              verticalScrollController.offset,
                            ),
                          ),
                        ).future,
                      );
                    },
                    Duration(milliseconds: 800),
                  );
                }

                horizontalScrollController.addListener(onMove);
                verticalScrollController.addListener(onMove);
                scaleFactor.addListener(onMove);
                return () {
                  horizontalScrollController.removeListener(onMove);
                  verticalScrollController.removeListener(onMove);
                  scaleFactor.removeListener(onMove);
                };
              }, []);
              return child!;
            },
            child: Scaffold(
              body: Column(
                children: [
                  appBar,
                  Expanded(
                    child: LayoutBuilder(
                      builder: (context, constraints) => Stack(
                        children: [
                          Positioned.fill(child: whiteboardBuilder),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.all(
                                  SpaceVariant.small.resolve(context)),
                              child: StyledFlex(
                                direction: Axis.horizontal,
                                style: Style(
                                  $flex.mainAxisSize.min(),
                                  $flex.gap.ref(SpaceVariant.medium),
                                ),
                                children: [
                                  actionTool(constraints),
                                  cursorModeTool,
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }(),
      AsyncError(:final error, stackTrace: final _) => Center(
          child: Text('Error: $error'),
        ),
      _ => SizedBox(),
    };
  }
}
