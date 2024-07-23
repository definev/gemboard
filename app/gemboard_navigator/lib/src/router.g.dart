// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $_RootShell,
    ];

RouteBase get $_RootShell => ShellRouteData.$route(
      navigatorKey: _RootShell.$navigatorKey,
      factory: $_RootShellExtension._fromState,
      routes: [
        ShellRouteData.$route(
          navigatorKey: HomeShell.$navigatorKey,
          parentNavigatorKey: HomeShell.$parentNavigatorKey,
          factory: $HomeShellExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: '/whiteboard/:id',
              parentNavigatorKey: WhiteboardEditorRoute.$parentNavigatorKey,
              factory: $WhiteboardEditorRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: '/settings',
          parentNavigatorKey: SettingsRoute.$parentNavigatorKey,
          factory: $SettingsRouteExtension._fromState,
        ),
      ],
    );

extension $_RootShellExtension on _RootShell {
  static _RootShell _fromState(GoRouterState state) => _RootShell();
}

extension $HomeShellExtension on HomeShell {
  static HomeShell _fromState(GoRouterState state) => const HomeShell();
}

extension $WhiteboardEditorRouteExtension on WhiteboardEditorRoute {
  static WhiteboardEditorRoute _fromState(GoRouterState state) =>
      WhiteboardEditorRoute(
        id: state.pathParameters['id']!,
        folderId: state.uri.queryParameters['folder-id'],
        $extra: state.extra as ResizableController?,
      );

  String get location => GoRouteData.$location(
        '/whiteboard/${Uri.encodeComponent(id)}',
        queryParams: {
          if (folderId != null) 'folder-id': folderId,
        },
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $SettingsRouteExtension on SettingsRoute {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
