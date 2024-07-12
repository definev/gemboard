import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:sliver_tools/sliver_tools.dart';

part 'sidebar.style.dart';

class DSSidebarSectionHeader extends StatelessWidget {
  const DSSidebarSectionHeader({
    super.key,
    this.background = ColorVariant.background,
    required this.title,
    this.pinned,
    this.style,
  });

  final Widget title;
  final ColorVariant background;
  final bool? pinned;
  final Style? style;

  @override
  Widget build(BuildContext context) {
    final onBackground = ColorVariant.resolveOnBackground(
      background,
      ColorVariant.onBackground,
    );

    return Box(
      inherit: true,
      style: Style(
        $box.minHeight(40),
        $box.color.ref(background),
        $box.padding.vertical.ref(SpaceVariant.gap),
        $box.padding.left.ref(SpaceVariant.gap),
        $box.padding.right.ref(SpaceVariant.small),
        $text.style.ref(TextStyleVariant.h6),
        $text.style.color.ref(onBackground),
        $icon.color.ref(onBackground),
      ).merge(style),
      child: title,
    );
  }
}

class DSSidebarSection extends StatelessWidget {
  const DSSidebarSection({
    this.header,
    required this.pinned,
    required this.children,
    this.gap,
  });

  final bool pinned;
  final Widget? header;
  final List<Widget> children;
  final double? gap;

  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      pushPinnedChildren: !pinned,
      children: [
        if (header != null)
          SliverPinnedHeader(
            child: header!,
          ),
        MultiSliver(
          children: [
            for (final child in children) ...[
              SizedBox(height: gap ?? SpaceVariant.gap.resolve(context)),
              child,
            ],
            SizedBox(height: gap ?? SpaceVariant.gap.resolve(context)),
          ],
        ),
      ],
    );
  }
}

class DSSidebar extends StatelessWidget {
  const DSSidebar({
    super.key,
    required this.sections,
  });

  /// Usually [DSSidebarSection] widgets.
  final List<Widget> sections;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        MultiSliver(
          children: [
            for (final section in sections) section,
          ],
        )
      ],
    );
  }
}
