import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:sliver_tools/sliver_tools.dart';

part 'sidebar.style.dart';

class DSSidebarSection {
  const DSSidebarSection({
    this.header,
    required this.pinned,
    required this.children,
  });

  final bool pinned;
  final Widget? header;
  final List<Widget> children;
}

class DSSidebar extends StyledWidget {
  const DSSidebar({
    super.key,
    super.orderOfModifiers = const [],
    super.inherit,
    super.style,
    required this.sections,
  });

  final List<DSSidebarSection> sections;

  @override
  Widget build(BuildContext context) {
    return withMix(
      context,
      (context) => VBox(
        style: Style(
          $box.color.ref(ColorVariant.surface),
        ),
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                MultiSliver(
                  children: [
                    for (final section in sections)
                      MultiSliver(
                        pushPinnedChildren: !section.pinned,
                        children: [
                          if (section.header != null)
                            SliverPinnedHeader(
                              child: section.header!,
                            ),
                          StyledColumn(
                            style: Style(
                              $flex.gap.ref(SpaceVariant.gap),
                            ),
                            children: section.children,
                          ),
                        ],
                      ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
