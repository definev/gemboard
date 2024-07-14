import 'package:boundless_stack/boundless_stack.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:whiteboard/src/domain/model/whiteboard.dart';

class WhiteboardView extends StatefulWidget {
  const WhiteboardView({
    super.key,
    required this.data,
    this.scaleFactor,
    this.horizontalDetails,
    this.verticalDetails,
  });

  final Whiteboard data;

  /// Whiteboard infinite scrollable configuration
  final ValueNotifier<double>? scaleFactor;
  final ScrollableDetails? verticalDetails;
  final ScrollableDetails? horizontalDetails;

  @override
  State<WhiteboardView> createState() => _WhiteboardViewState();
}

class _WhiteboardViewState extends State<WhiteboardView> {
  late ValueNotifier<double> scaleFactor;

  late ScrollableDetails verticalDetails;
  late ScrollableDetails horizontalDetails;

  Map<String, GlobalKey> cellKeys = {
    'mock': GlobalKey(
      debugLabel: 'WhiteboardView.cell | mock',
    ),
  };

  @override
  void initState() {
    super.initState();
    scaleFactor = widget.scaleFactor ?? ValueNotifier(1.0);
    verticalDetails = widget.verticalDetails ??
        ScrollableDetails.vertical(
          controller: ScrollController(
            debugLabel: 'WhiteboardView.vertical | ${widget.data.id.id}',
          ),
        );
    horizontalDetails = widget.horizontalDetails ??
        ScrollableDetails.horizontal(
          controller: ScrollController(
            debugLabel: 'WhiteboardView.horizontal | ${widget.data.id.id}',
          ),
        );
  }

  @override
  void didUpdateWidget(covariant WhiteboardView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.scaleFactor != oldWidget.scaleFactor) {
      scaleFactor = widget.scaleFactor ?? ValueNotifier(1.0);
    }
    if (widget.verticalDetails != null &&
        widget.verticalDetails != oldWidget.verticalDetails) {
      verticalDetails.controller?.dispose();
      verticalDetails = widget.verticalDetails!;
    }

    if (widget.verticalDetails == null && oldWidget.verticalDetails != null) {
      verticalDetails.controller?.dispose();
      verticalDetails = ScrollableDetails.vertical(
        controller: ScrollController(
          debugLabel: 'WhiteboardView.vertical | ${widget.data.id.id}',
        ),
      );
    }

    if (widget.horizontalDetails != null &&
        widget.horizontalDetails != oldWidget.horizontalDetails) {
      horizontalDetails.controller?.dispose();
      horizontalDetails = widget.horizontalDetails!;
    }

    if (widget.horizontalDetails == null &&
        oldWidget.horizontalDetails != null) {
      horizontalDetails.controller?.dispose();
      horizontalDetails = ScrollableDetails.horizontal(
        controller: ScrollController(
          debugLabel: 'WhiteboardView.horizontal | ${widget.data.id.id}',
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: scaleFactor,
      builder: (context, child) => ZoomStackGestureDetector(
        scaleFactor: scaleFactor.value,
        onScaleFactorChanged: (value) => scaleFactor.value = value,
        stack: (key, scaleFactor) => BoundlessStack(
          horizontalDetails: horizontalDetails,
          verticalDetails: verticalDetails,
          backgroundBuilder: GridBackground.backgroundBuilder(
            scale: scaleFactor,
          ),
          delegate: BoundlessStackListDelegate(
            children: [
              StackPosition(
                key: cellKeys['mock']!,
                scaleFactor: scaleFactor,
                data: StackPositionData(
                  layer: 0,
                  height: 100,
                  width: 200,
                  offset: Offset.zero,
                ),
                builder: (context, notifier, child) {
                  return Container(
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        'Whiteboard',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
          scaleFactor: scaleFactor,
        ),
      ),
    );
  }
}
