part of '../router.dart';

@TypedShellRoute<_RootShell>(
  routes: [
    TypedShellRoute<HomeShell>(
      routes: [
        TypedGoRoute<HomeGreetingRoute>(
          path: HomeGreetingRoute.location,
          routes: [
            TypedGoRoute<WhiteboardEditorRoute>(
                path: WhiteboardEditorRoute.subLocation),
          ],
        ),
      ],
    ),
    TypedGoRoute<SettingsRoute>(path: SettingsRoute.location),
  ],
)
class _RootShell extends ShellRouteData {
  static final $navigatorKey = GlobalKey<NavigatorState>(debugLabel: '_RootShell');

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) =>
      navigator;
}
