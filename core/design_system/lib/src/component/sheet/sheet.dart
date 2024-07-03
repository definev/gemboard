import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mix/mix.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

part 'sheet.variant.dart';

class DSSheet extends StatelessWidget {
  const DSSheet({
    super.key,
    required this.child,
    this.appBar,
    this.bottomBar,
    this.initialExtent,
    this.extent = const Extent.proportional(1),
    this.minExtent,
    this.maxExtent,
    this.physics,
    this.kind = DSSheetKind.draggable,
    this.transitionObserver,
  });

  final PreferredSizeWidget? appBar;
  final Widget child;
  final Widget? bottomBar;
  final Extent? initialExtent;
  final Extent extent;
  final Extent? minExtent;
  final Extent? maxExtent;
  final NavigationSheetTransitionObserver? transitionObserver;

  final SheetPhysics? physics;
  final DSSheetKind kind;

  @override
  Widget build(BuildContext context) {
    final content = ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(
          SpaceVariant.mediumLarge.resolve(context),
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: extent.resolve(constraints.biggest),
              child: SheetContentScaffold(
                backgroundColor: ColorVariant.background.resolve(context),
                appBar: appBar,
                body: Column(
                  children: [
                    Expanded(child: child),
                    if (bottomBar != null)
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: SpaceVariant.mediumLarge.resolve(context),
                          vertical: SpaceVariant.small.resolve(context),
                        ),
                        child: bottomBar!,
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
    return switch (kind) {
      DSSheetKind.draggable => DraggableSheet(
          keyboardDismissBehavior:
              const SheetKeyboardDismissBehavior.onDragDown(),
          initialExtent: initialExtent ?? Extent.proportional(1),
          maxExtent: maxExtent ?? Extent.proportional(1),
          minExtent: minExtent ?? Extent.proportional(1),
          physics: physics,
          child: content,
        ),
      DSSheetKind.scrollable => ScrollableSheet(
          initialExtent: initialExtent ?? Extent.proportional(1),
          maxExtent: maxExtent ?? Extent.proportional(1),
          minExtent: minExtent ?? Extent.proportional(1),
          physics: physics,
          child: content,
        ),
      _ => throw UnimplementedError(),
    };
  }
}

class DSSheetAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DSSheetAppBar({
    super.key,
    this.size = AppBarSizeVariant.small,
    this.leading,
    this.title,
  });

  final AppBarSizeVariant size;
  final Widget? leading;
  final Widget? title;

  @override
  Widget build(BuildContext context) {
    final canPop = Navigator.canPop(context);

    return SafeArea(
      child: SheetDraggable(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: ColorVariant.background.resolve(context),
            border: Border(
              bottom: BorderSide(
                color: ColorVariant.disable.resolve(context),
                width: 1,
              ),
            ),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: switch (true) {
                  _ when leading != null => leading!,
                  _ when canPop => DSBackButton(
                      style: Style(
                        $icon.color(ColorVariant.onBackground.resolve(context)),
                      ),
                      kind: DSBackButtonKind.close,
                    ),
                  _ => null,
                },
              ),
              Align(
                alignment: Alignment.center,
                child: Box(
                  style: Style(
                    $text.style.ref(TextStyleVariant.title),
                    $text.style.color.ref(ColorVariant.onBackground),
                  ),
                  child: title,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => DSAppBar.getPreferredSize(size);
}
