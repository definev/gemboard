import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mix/mix.dart';
import 'package:sliver_tools/sliver_tools.dart';

class GuideView extends StatelessWidget {
  const GuideView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.all(SpaceVariant.medium.resolve(context)),
          sliver: MultiSliver(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StyledText(
                    'Guide - cheat sheet',
                    style: Style(
                      $text.style.ref(TextStyleVariant.h6),
                    ),
                  ),
                  StyledIcon(IconlyLight.arrow_down_square),
                ],
              ),
              SizedBox(height: SpaceVariant.medium.resolve(context)),
              DSHorizontalDivider(),
              SizedBox(height: SpaceVariant.medium.resolve(context)),
              DSMarkdownBody(
                data: '''
The key to using the whiteboard effectively is to understand the different tools and features available. Here is a quick guide to help you get started:

**Drag and Drop:**
- **New Cells:** Long press and drag a new `Cell` from the action bar to place it on the whiteboard.
- **Images:** Drag an image from your device and drop it onto the whiteboard.
- **Links, Text, or Images:** Drag these directly from your browser and drop them onto the whiteboard.

**Selecting Items:**
- **Select Multiple:** Choose the `Select tool` from the action bar, then draw a rectangle to select multiple cells.
- **Single Cell Selection:** Highlight a single cell to see its action bar at the top.
- **Multiple Cells Selection:** Highlight multiple cells and see the group action bar at the top.
- **Cancel Selection:** Double-tap on the whiteboard to cancel your current selection.

### Additional Features for Touch Devices

For touch devices like mobile phones or tablets, you can use these extra features:

**Stylus Support:**
- Use a stylus to select cells on the whiteboard easily.

**Pinch to Zoom:**
- Select the `Hand tool` from the action bar, then use pinch gestures to zoom in and out on your touch device.
''',
                scrollable: false,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
