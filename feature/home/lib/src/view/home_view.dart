import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResizableFlex(
        direction: Axis.horizontal,
        firstChild: DSSidebar(
          sections: [
            DSSidebarSection(
              pinned: true,
              children: [
              ],
            ),
          ],
        ),
        secondChild: SizedBox(),
      ),
    );
  }
}
