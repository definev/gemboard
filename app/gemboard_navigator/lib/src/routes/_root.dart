part of '../router.dart';

@TypedShellRoute<RootShell>(
  routes: [
    TypedGoRoute<SettingsRoute>(path: SettingsRoute.location),
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
    TypedGoRoute<WhiteboardSelectorRoute>(
        path: WhiteboardSelectorRoute.location),
  ],
)
class RootShell extends ShellRouteData {
  const RootShell();

  static final $navigatorKey =
      GlobalKey<NavigatorState>(debugLabel: '_RootShell');

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) =>
      navigator;
}
