// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $rootShell,
    ];

RouteBase get $rootShell => ShellRouteData.$route(
      navigatorKey: RootShell.$navigatorKey,
      factory: $RootShellExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/settings',
          parentNavigatorKey: SettingsRoute.$parentNavigatorKey,
          factory: $SettingsRouteExtension._fromState,
        ),
        ShellRouteData.$route(
          navigatorKey: HomeShell.$navigatorKey,
          parentNavigatorKey: HomeShell.$parentNavigatorKey,
          factory: $HomeShellExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: '/',
              parentNavigatorKey: HomeGreetingRoute.$parentNavigatorKey,
              factory: $HomeGreetingRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: ':id',
                  parentNavigatorKey: WhiteboardEditorRoute.$parentNavigatorKey,
                  factory: $WhiteboardEditorRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
      ],
    );

extension $RootShellExtension on RootShell {
  static RootShell _fromState(GoRouterState state) => const RootShell();
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

extension $HomeShellExtension on HomeShell {
  static HomeShell _fromState(GoRouterState state) => const HomeShell();
}

extension $HomeGreetingRouteExtension on HomeGreetingRoute {
  static HomeGreetingRoute _fromState(GoRouterState state) =>
      const HomeGreetingRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $WhiteboardEditorRouteExtension on WhiteboardEditorRoute {
  static WhiteboardEditorRoute _fromState(GoRouterState state) =>
      WhiteboardEditorRoute(
        id: state.pathParameters['id']!,
        folderId: state.uri.queryParameters['folder-id'],
      );

  String get location => GoRouteData.$location(
        '/${Uri.encodeComponent(id)}',
        queryParams: {
          if (folderId != null) 'folder-id': folderId,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
