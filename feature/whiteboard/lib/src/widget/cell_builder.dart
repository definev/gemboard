import 'dart:async';

import 'package:boundless_stack/boundless_stack.dart';
import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:mix/mix.dart';
import 'package:utils/utils.dart';

class CellBuilder extends StatefulWidget {
  const CellBuilder({
    super.key,
    required this.notifier,
    required this.stackPositionDataMap,
    required this.cell,
    required this.horizontalDetails,
    required this.verticalDetails,
    required this.scaleFactor,
    required this.onAskForSuggestion,
    required this.onSuggestionSelected,
    required this.onAskForSuggestionSubscription,
  });

  final ScrollableDetails horizontalDetails;
  final ScrollableDetails verticalDetails;
  final ValueNotifier<StackPositionData> notifier;
  final Map<String, ValueNotifier<StackPositionData>> stackPositionDataMap;
  final Cell cell;
  final double scaleFactor;

  /// Brainstorming specific
  final void Function(BrainstormingCell cell, String question)
      onAskForSuggestion;
  final void Function(
    BrainstormingCell cell,
    int index,
    ColorVariant color,
    String suggestion,
  ) onSuggestionSelected;
  final StreamSubscription? onAskForSuggestionSubscription;

  @override
  State<CellBuilder> createState() => _CellBuilderState();
}

class _CellBuilderState extends State<CellBuilder> {
  bool onHover = false;
  bool perminant = false;

  Offset viewportTopLeft = Offset.zero;

  Offset? leftLocalOffset;
  Offset? leftStartOffset;
  Offset? leftEndOffset;

  late ScrollableDetails horizontalDetails;
  late ScrollableDetails verticalDetails;

  final Debouncer debouncer = Debouncer();

  final GlobalKey portalFollowerKey = GlobalKey();

  void updateViewportTopLeft() {
    final horizontalOffset = widget.horizontalDetails.controller?.offset ?? 0;
    final verticalOffset = widget.verticalDetails.controller?.offset ?? 0;
    viewportTopLeft = Offset(horizontalOffset, verticalOffset);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    horizontalDetails = widget.horizontalDetails;
    verticalDetails = widget.verticalDetails;

    horizontalDetails.controller?.addListener(updateViewportTopLeft);
    verticalDetails.controller?.addListener(updateViewportTopLeft);

    updateViewportTopLeft();
  }

  @override
  void dispose() {
    widget.horizontalDetails.controller?.removeListener(updateViewportTopLeft);
    widget.verticalDetails.controller?.removeListener(updateViewportTopLeft);

    debouncer.cancel();

    super.dispose();
  }

  @override
  void didUpdateWidget(covariant CellBuilder oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.horizontalDetails != oldWidget.horizontalDetails) {
      oldWidget.horizontalDetails.controller
          ?.removeListener(updateViewportTopLeft);
      widget.horizontalDetails.controller?.addListener(updateViewportTopLeft);
      horizontalDetails = widget.horizontalDetails;
    }

    if (widget.verticalDetails != oldWidget.verticalDetails) {
      oldWidget.verticalDetails.controller
          ?.removeListener(updateViewportTopLeft);
      widget.verticalDetails.controller?.addListener(updateViewportTopLeft);
      verticalDetails = widget.verticalDetails;
    }
  }

  Offset get topLeft => Offset(
        widget.cell.offset.dx * widget.scaleFactor - viewportTopLeft.dx,
        widget.cell.offset.dy * widget.scaleFactor - viewportTopLeft.dy,
      );

  // Widget buildConnectCellTemporaryEdge(Offset offset, Widget placeholder) {
  //   return Positioned.fill(
  //     child: CustomPaint(
  //       painter: EdgeTempVisual(
  //         context: context,
  //         scaleFactor: widget.scaleFactor,
  //         startLocal: leftLocalOffset!,
  //         startGlobal: leftStartOffset!,
  //         endGlobal: leftEndOffset!,
  //         portalFollowerKey: portalFollowerKey,
  //         childSize: Size(32, 32),
  //       ),
  //       child: Stack(
  //         children: [
  //           Positioned(
  //             left: offset.dx,
  //             top: offset.dy,
  //             height: actionButtonSize.height,
  //             width: actionButtonSize.width,
  //             child: Transform.scale(
  //               alignment: Alignment.topLeft,
  //               scale: widget.scaleFactor,
  //               child: placeholder,
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // Widget buildConnectCell(Offset offset, Widget placeholder) => Positioned(
  //       left: offset.dx,
  //       top: offset.dy,
  //       height: actionButtonSize.height,
  //       width: actionButtonSize.width,
  //       child: Transform.scale(
  //         alignment: Alignment.topLeft,
  //         scale: widget.scaleFactor,
  //         child: MouseRegion(
  //           onHover: (_) => setState(() => onHover = true),
  //           onExit: (_) => setState(() => onHover = false),
  //           child: Draggable(
  //             data: widget.cell,
  //             feedback: Transform.scale(
  //               alignment: Alignment.topLeft,
  //               scale: widget.scaleFactor,
  //               child: SizedBox(),
  //             ),
  //             dragAnchorStrategy: (draggable, context, position) {
  //               leftLocalOffset =
  //                   childDragAnchorStrategy(draggable, context, position);
  //               return leftLocalOffset! * widget.scaleFactor;
  //             },
  //             onDragStarted: () => setState(() => perminant = true),
  //             onDragUpdate: (details) {
  //               if (leftStartOffset == null) {
  //                 leftStartOffset = details.globalPosition;
  //                 leftEndOffset = leftStartOffset;
  //               } else {
  //                 leftEndOffset = details.globalPosition;
  //                 setState(() {});
  //               }
  //             },
  //             onDragEnd: (_) => setState(() {
  //               leftLocalOffset = null;
  //               leftStartOffset = null;
  //               leftEndOffset = null;
  //               perminant = false;
  //             }),
  //             child: placeholder,
  //           ),
  //         ),
  //       ),
  //     );

  CellAppearance get cellAppearance => CellAppearance(widget.cell);

  Offset get centerLeft => Offset(
        topLeft.dx,
        topLeft.dy + cellAppearance.rect.height * widget.scaleFactor / 2,
      );
  Offset get centerRight => Offset(
        topLeft.dx + widget.cell.width * widget.scaleFactor,
        topLeft.dy + cellAppearance.rect.height * widget.scaleFactor / 2,
      );
  Offset get bottomCenter => Offset(
        topLeft.dx + widget.cell.width * widget.scaleFactor / 2,
        topLeft.dy + cellAppearance.rect.height * widget.scaleFactor,
      );
  Offset get topCenter => Offset(
        topLeft.dx + widget.cell.width * widget.scaleFactor / 2,
        topLeft.dy,
      );

  Widget buildEdgeWire({required Cell cell, required Widget child}) {
    final knobHeightMargin =
        SpaceVariant.medium.resolve(context) * widget.scaleFactor;
    final knobWidthMargin =
        SpaceVariant.large.resolve(context) * widget.scaleFactor;
    final knobHeight = (SpaceVariant.gap.resolve(context)) * widget.scaleFactor;
    final knobWidth =
        SpaceVariant.large.resolve(context) * widget.scaleFactor * 2;
    final knobColor = ColorVariant.outline.resolve(context);

    Widget buildEdgeKnob({
      required Widget child,
    }) {
      return MouseRegion(
        onEnter: (event) {
          debouncer.cancel();
          setState(() => onHover = true);
        },
        onExit: (event) => debouncer.run(
          () => setState(() => onHover = false),
          Duration(milliseconds: 340),
        ),
        child: child,
      );
    }

    Style knobStyle = Style(
      $box.color(knobColor),
      $box.shape.stadium(),
      switch (perminant) {
        true => $box.color(knobColor),
        false => null,
      },
    );

    return PortalTarget(
      visible: onHover || perminant,
      portalFollower: Stack(
        children: [
          Positioned(
            left: topCenter.dx - knobWidthMargin,
            top: topCenter.dy - knobHeightMargin,
            child: buildEdgeKnob(
              child: Box(
                style: Style(
                  $box.width(knobWidth),
                  $box.height(knobHeight),
                ).merge(knobStyle),
              ),
            ),
          ),
          Positioned(
            left: centerLeft.dx - knobHeightMargin,
            top: centerLeft.dy - knobWidthMargin,
            child: buildEdgeKnob(
                child: Box(
              style: Style(
                $box.height(knobWidth),
                $box.width(knobHeight),
              ).merge(knobStyle),
            )),
          ),
          Positioned(
            left: centerRight.dx + knobHeightMargin - knobHeight,
            top: centerRight.dy - knobWidthMargin,
            child: buildEdgeKnob(
                child: Box(
              style: Style(
                $box.height(knobWidth),
                $box.width(knobHeight),
              ).merge(knobStyle),
            )),
          ),
          Positioned(
            left: bottomCenter.dx - knobWidthMargin,
            top: bottomCenter.dy + knobHeightMargin - knobHeight,
            child: buildEdgeKnob(
              child: Box(
                style: Style(
                  $box.width(knobWidth),
                  $box.height(knobHeight),
                ).merge(knobStyle),
              ),
            ),
          ),
        ],
      ),
      child: MouseRegion(
        onEnter: (event) {
          debouncer.cancel();
          setState(() => onHover = true);
        },
        onExit: (event) => debouncer.run(
          () => setState(() => onHover = false),
          Duration(milliseconds: 340),
        ),
        child: DragTarget(
          onAcceptWithDetails: (details) {
            final DragTargetDetails(:data, :offset) = details;
            print('Accepted $data at $offset');
          },
          builder: (context, candidateData, rejectedData) => GestureDetector(
            onLongPress: () => setState(() => perminant = !perminant),
            child: child,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    widget.stackPositionDataMap[widget.cell.id.id] = widget.notifier;

    Widget child = widget.cell.map(
      brainstorming: (cell) => BrainstormingCellView(
        cell: cell,
        onSuggestionSelected: (index, color, suggestion) =>
            widget.onSuggestionSelected(cell, index, color, suggestion),
        onAskForSuggestion: (question) =>
            widget.onAskForSuggestion(cell, question),
        onAskForSuggestionSubscription: widget.onAskForSuggestionSubscription,
      ),
      editable: (cell) => EditableCellView(cell: cell),
      image: (cell) => ImageCellView(cell: cell),
      article: (cell) => ArticleCellView(cell: cell),
      url: (cell) => UrlCellView(cell: cell),
      unknown: (_) => SizedBox(),
    );

    child = buildEdgeWire(
      cell: widget.cell,
      child: child,
    );

    return child;

    return MouseRegion(
      onHover: (event) {
        debouncer.run(
          () => setState(() => onHover = true),
          Duration(milliseconds: 400),
        );
      },
      onExit: (event) {
        debouncer.cancel();
        setState(() => onHover = false);
      },
      child: child,
      // child: CellView(cell: widget.cell),
      // child: PortalTarget(
      //   visible: onHover || perminant,
      //   portalFollower: Stack(
      //     key: portalFollowerKey,
      //     children: [
      //       buildConnectCell(centerRight, connectCell),
      //       buildChatCell(topCenter, chatCell),
      //       if (leftStartOffset != null && leftEndOffset != null)
      //         buildConnectCellTemporaryEdge(centerRight, connectCell),
      //     ],
      //   ),
      //   child: CellView(cell: widget.cell),
      // ),
    );
  }

  Widget buildChatCell(Offset topCenter, DSCard placeholder) {
    return Positioned(
      left: topCenter.dx,
      top: topCenter.dy,
      child: Transform.scale(
        alignment: Alignment.topLeft,
        scale: widget.scaleFactor,
        child: HookBuilder(
          builder: (context) {
            final showChat = useState(false);

            return MouseRegion(
              onHover: (_) => setState(() => onHover = true),
              onExit: (_) => setState(() => onHover = false),
              child: PortalTarget(
                anchor: Aligned(
                  follower: Alignment.bottomCenter,
                  target: Alignment.topCenter,
                ),
                portalFollower: switch (showChat.value) {
                  true => Text('Chat'),
                  false => SizedBox(),
                },
                child: GestureDetector(
                  onTapDown: (_) => showChat.value = true,
                  child: placeholder,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
