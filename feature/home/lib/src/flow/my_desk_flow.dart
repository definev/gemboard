import 'package:boundless_stack/boundless_stack.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MyDeskFlow extends HookWidget {
  const MyDeskFlow({super.key});

  @override
  Widget build(BuildContext context) {
    final scaleFactor = useState(0.5);

    final horizontalDetails = ScrollableDetails.horizontal(
      controller: useScrollController(),
    );
    final verticalDetails = ScrollableDetails.vertical(
      controller: useScrollController(),
    );

    return ZoomStackGestureDetector(
      scaleFactor: scaleFactor.value,
      onScaleFactorChanged: (value) => scaleFactor.value = value,
      stack: (key, scaleFactor) => BoundlessStack(
        key: key,
        backgroundBuilder: GridBackground.backgroundBuilder(scale: scaleFactor),
        scaleFactor: scaleFactor,
        horizontalDetails: horizontalDetails,
        verticalDetails: verticalDetails,
        delegate: BoundlessStackListDelegate(
          children: [],
        ),
      ),
    );
  }
}
