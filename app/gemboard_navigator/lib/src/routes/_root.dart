part of '../router.dart';

@TypedShellRoute<_RootShell>(
  routes: [
    TypedShellRoute<HomeShell>(
      routes: [
        TypedGoRoute<WhiteboardEditorRoute>(
            path: WhiteboardEditorRoute.location),
      ],
    ),
    TypedGoRoute<SettingsRoute>(path: SettingsRoute.location),
  ],
)
class _RootShell extends ShellRouteData {
  static final $navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return navigator;
  }
}
