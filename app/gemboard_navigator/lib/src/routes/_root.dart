part of '../router.dart';

@TypedShellRoute<RootShell>(
  routes: [
    TypedShellRoute<HomeShell>(
      routes: [
        TypedGoRoute<HomeGreetingRoute>(path: HomeGreetingRoute.location),
        TypedGoRoute<WhiteboardEditorRoute>(
          path: WhiteboardEditorRoute.location,
          routes: [
            TypedGoRoute<WhiteboardExportRoute>(
                path: WhiteboardExportRoute.subLocation),
          ],
        ),
      ],
    ),
    TypedGoRoute<SettingsRoute>(path: SettingsRoute.location),
    TypedGoRoute<WhiteboardSelectorRoute>(
      path: WhiteboardSelectorRoute.location,
    ),
    TypedGoRoute<WhiteboardImportRoute>(
      path: WhiteboardImportRoute.location,
    ),
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
