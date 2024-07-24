part of '../router.dart';

class HomeShell extends ShellRouteData {
  const HomeShell();

  static final $parentNavigatorKey = RootShell.$navigatorKey;
  static final $navigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'HomeShell');
  static final resizableController = ResizableController(shown: false);

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return Portal(
      child: Material(
        color: ColorVariant.background.resolve(context),
        child: ResizableFlex(
          controller: HomeShell.resizableController,
          direction: Axis.horizontal,
          initialSize: 300,
          minSize: 85,
          firstChild: GemboardLeadSidebar(
            resizableController: HomeShell.resizableController,
          ),
          secondChild: Portal(
            child: navigator,
          ),
        ),
      ),
    );
  }

  @override
  Page<void> pageBuilder(
    BuildContext context,
    GoRouterState state,
    Widget navigator,
  ) {
    return CupertinoModalSheetPage(
      key: state.pageKey,
      child: builder(context, state, navigator),
    );
  }
}
