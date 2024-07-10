part of '../router.dart';

class HomeShell extends ShellRouteData {
  const HomeShell();

  static final $parentNavigatorKey = _RootShell.$navigatorKey;
  static final $navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return Material(
      child: ResizableFlex(
        direction: Axis.horizontal,
        initialSize: 300,
        firstChild: GenitLeadSidebar(),
        secondChild: navigator,
      ),
    );
  }
}
