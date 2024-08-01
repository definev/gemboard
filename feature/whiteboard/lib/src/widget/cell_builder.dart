import 'dart:async';

import 'package:boundless_stack/boundless_stack.dart';
import 'package:cell/cell.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:graph_edge/graph_edge.dart';
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

    ///
    required this.onAskForSuggestion,
    required this.onSuggestionSelected,
    required this.onAskForSuggestionSubscription,

    ///
    required this.onContentChanged,

    /// Cell
    required this.onCellLinked,
    required this.onConstraintChanged,
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

  /// Editable specific
  final void Function(EditableCell cell, String title, String content)
      onContentChanged;

  /// Cell
  final void Function(Cell source, Cell target, {required bool autoLabel})
      onCellLinked;
  final void Function(Cell cell) onConstraintChanged;

  @override
  State<CellBuilder> createState() => _CellBuilderState();
}

class _CellBuilderState extends State<CellBuilder> {
  bool onHover = false;
  bool onKnobHover = false;
  bool onDrag = false;
  bool perminant = false;

  Offset viewportTopLeft = Offset.zero;

  Offset? leftLocalOffset;
  Offset? leftStartOffset;
  Offset? leftEndOffset;

  late ScrollableDetails horizontalDetails;
  late ScrollableDetails verticalDetails;

  final Debouncer onHoverDebouncer = Debouncer();

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

    onHoverDebouncer.cancel();

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

  (Offset start, Offset end)? edgeWire;
  GlobalKey edgeWirePortalKey = GlobalKey();

  Widget buildEdgeWire({required Cell cell, required Widget child}) {
    var knobHeight = SpaceVariant.gap.resolve(context) * widget.scaleFactor;
    var knobWidth =
        SpaceVariant.large.resolve(context) * widget.scaleFactor * 2;

    final knobColor = ColorVariant.outline.resolve(context);

    Widget buildEdgeKnob({
      required Offset startOffset,
      required Widget child,
    }) {
      return HookBuilder(
        builder: (context) {
          final onKnobHoverDebouncer = useDebouncer();
          return MouseRegion(
            onEnter: (event) {
              onHoverDebouncer.cancel();
              onKnobHoverDebouncer.cancel();
              onHover = true;
              onKnobHover = true;
              setState(() {});
            },
            onExit: (event) {
              onHoverDebouncer.run(
                () => setState(() => onHover = false),
                Duration(milliseconds: 350),
              );
              onKnobHoverDebouncer.run(
                () => setState(() => onKnobHover = false),
                Duration(milliseconds: 150),
              );
            },
            child: Draggable(
              feedback: SizedBox(),
              data: cell,
              onDragStarted: () {
                edgeWire = (startOffset, startOffset);
                onHoverDebouncer.cancel();
                onHover = true;
                onDrag = true;
                setState(() {});
              },
              onDragUpdate: (details) {
                final position = edgeWire!.$2 + details.delta;
                edgeWire = (startOffset, position);
                onHover = true;
                setState(() {});
              },
              onDragEnd: (details) {
                edgeWire = null;
                onDrag = false;
                onKnobHoverDebouncer.run(
                  () => setState(() => onHover = false),
                  Duration(milliseconds: 350),
                );
                setState(() {});
              },
              child: child,
            ),
          );
        },
      );
    }

    Style knobStyle = Style(
      $box.color(knobColor),
      $box.shape.stadium(),
    ).animate();

    Widget buildTween({
      required Function(
        double animatedKnobWidth,
        double animatedKnobHeight,
        double knobWidthMargin,
        double knobHeightMargin,
      ) builder,
    }) {
      return TweenAnimationBuilder(
        curve: Easing.standardDecelerate,
        duration: Duration(milliseconds: 200),
        tween: Tween<double>(
          begin: 0.8,
          end: switch (true) {
            _ when perminant && onHover => 1.4,
            _ when perminant => switch (onKnobHover) {
                true => 1.4,
                false => 1.0,
              },
            _ when onKnobHover => 1.4,
            _ when onHover => 1.0,
            _ => 1,
          },
        ),
        builder: (context, value, child) {
          final animatedKnobHeight = knobHeight * (value + (1.5 * (value - 1)));
          final animatedKnobWidth = knobWidth * value;
          var knobHeightMargin = animatedKnobHeight * 2;
          var knobWidthMargin = animatedKnobWidth / 2;

          return builder(
            animatedKnobWidth,
            animatedKnobHeight,
            knobWidthMargin,
            knobHeightMargin,
          );
        },
      );
    }

    return PortalTarget(
      key: edgeWirePortalKey,
      visible: onHover || onKnobHover || onDrag || perminant,
      portalFollower: Stack(
        children: [
          buildTween(
            builder: (
              animatedKnobWidth,
              animatedKnobHeight,
              knobWidthMargin,
              knobHeightMargin,
            ) =>
                Positioned(
              left: topCenter.dx - knobWidthMargin,
              top: topCenter.dy - knobHeightMargin,
              child: buildEdgeKnob(
                startOffset: Offset(
                  topCenter.dx - knobWidthMargin + animatedKnobWidth / 2,
                  topCenter.dy - knobHeightMargin + animatedKnobHeight / 2,
                ),
                child: Box(
                  style: Style(
                    $box.width(animatedKnobWidth),
                    $box.height(animatedKnobHeight),
                  ).merge(knobStyle),
                ),
              ),
            ),
          ),
          buildTween(
            builder: (
              animatedKnobWidth,
              animatedKnobHeight,
              knobWidthMargin,
              knobHeightMargin,
            ) =>
                Positioned(
              left: centerLeft.dx - knobHeightMargin,
              top: centerLeft.dy - knobWidthMargin,
              child: buildEdgeKnob(
                startOffset: Offset(
                  centerLeft.dx - knobHeightMargin + animatedKnobHeight / 2,
                  centerLeft.dy - knobWidthMargin + animatedKnobWidth / 2,
                ),
                child: Box(
                  style: Style(
                    $box.height(animatedKnobWidth),
                    $box.width(animatedKnobHeight),
                  ).merge(knobStyle),
                ),
              ),
            ),
          ),
          buildTween(
            builder: (
              animatedKnobWidth,
              animatedKnobHeight,
              knobWidthMargin,
              knobHeightMargin,
            ) =>
                Positioned(
              left: centerRight.dx + knobHeightMargin - animatedKnobHeight,
              top: centerRight.dy - knobWidthMargin,
              child: buildEdgeKnob(
                startOffset: Offset(
                  centerRight.dx +
                      knobHeightMargin -
                      animatedKnobHeight +
                      animatedKnobHeight / 2,
                  centerRight.dy - knobWidthMargin + animatedKnobWidth / 2,
                ),
                child: Box(
                  style: Style(
                    $box.height(animatedKnobWidth),
                    $box.width(animatedKnobHeight),
                  ).merge(knobStyle),
                ),
              ),
            ),
          ),
          buildTween(
            builder: (
              animatedKnobWidth,
              animatedKnobHeight,
              knobWidthMargin,
              knobHeightMargin,
            ) =>
                Positioned(
              left: bottomCenter.dx - knobWidthMargin,
              top: bottomCenter.dy + knobHeightMargin - animatedKnobHeight,
              child: buildEdgeKnob(
                startOffset: Offset(
                  bottomCenter.dx - knobWidthMargin + animatedKnobWidth / 2,
                  bottomCenter.dy +
                      knobHeightMargin -
                      animatedKnobHeight +
                      animatedKnobHeight / 2,
                ),
                child: Box(
                  style: Style(
                    $box.width(animatedKnobWidth),
                    $box.height(animatedKnobHeight),
                  ).merge(knobStyle),
                ),
              ),
            ),
          ),
          if (edgeWire case (final start, final end))
            Positioned.fill(
              child: IgnorePointer(
                child: CustomPaint(
                  painter: EdgeTempVisual(
                    context: context,
                    start: start,
                    end: end,
                    scaleFactor: widget.scaleFactor,
                  ),
                ),
              ),
            ),
        ],
      ),
      child: MouseRegion(
        onEnter: (event) {
          onHoverDebouncer.cancel();
          setState(() => onHover = true);
        },
        onExit: (event) => onHoverDebouncer.run(
          () => setState(() => onHover = false),
          Duration(milliseconds: 340),
        ),
        child: DragTarget(
          onAcceptWithDetails: (details) {
            final DragTargetDetails(:data) = details;
            if (data is Cell) {
              widget.onCellLinked(data, cell, autoLabel: true);
            }
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
      url: (cell) => UrlCellView(cell: cell),
      brainstorming: (cell) => BrainstormingCellView(
        cell: cell,
        onSuggestionSelected: (index, color, suggestion) =>
            widget.onSuggestionSelected(cell, index, color, suggestion),
        onAskForSuggestion: (question) =>
            widget.onAskForSuggestion(cell, question),
        onAskForSuggestionSubscription: widget.onAskForSuggestionSubscription,
      ),
      editable: (cell) => EditableCellView(
        cell: cell,
        onConstraintChanged: () => widget.onConstraintChanged(cell),
        onContentChanged: (title, content) =>
            widget.onContentChanged(cell, title, content),
      ),
      image: (cell) => ImageCellView(cell: cell),
      article: (cell) => ArticleCellView(
        cell: cell,
        onConstraintChanged: () => widget.onConstraintChanged(cell),
      ),
      unknown: (_) => SizedBox(),
    );

    child = buildEdgeWire(
      cell: widget.cell,
      child: child,
    );

    return child;
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
