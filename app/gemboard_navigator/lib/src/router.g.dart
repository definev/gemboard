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
        ShellRouteData.$route(
          navigatorKey: HomeShell.$navigatorKey,
          parentNavigatorKey: HomeShell.$parentNavigatorKey,
          factory: $HomeShellExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: '/greeting',
              parentNavigatorKey: HomeGreetingRoute.$parentNavigatorKey,
              factory: $HomeGreetingRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: '/whiteboard/q/:id',
              parentNavigatorKey: WhiteboardEditorRoute.$parentNavigatorKey,
              factory: $WhiteboardEditorRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'export',
                  parentNavigatorKey: WhiteboardExportRoute.$parentNavigatorKey,
                  factory: $WhiteboardExportRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        GoRouteData.$route(
          path: '/settings',
          parentNavigatorKey: SettingsRoute.$parentNavigatorKey,
          factory: $SettingsRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/whiteboard/selector',
          parentNavigatorKey: WhiteboardSelectorRoute.$parentNavigatorKey,
          factory: $WhiteboardSelectorRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/whiteboard/import',
          parentNavigatorKey: WhiteboardImportRoute.$parentNavigatorKey,
          factory: $WhiteboardImportRouteExtension._fromState,
        ),
      ],
    );

extension $RootShellExtension on RootShell {
  static RootShell _fromState(GoRouterState state) => const RootShell();
}

extension $HomeShellExtension on HomeShell {
  static HomeShell _fromState(GoRouterState state) => const HomeShell();
}

extension $HomeGreetingRouteExtension on HomeGreetingRoute {
  static HomeGreetingRoute _fromState(GoRouterState state) =>
      const HomeGreetingRoute();

  String get location => GoRouteData.$location(
        '/greeting',
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
        '/whiteboard/q/${Uri.encodeComponent(id)}',
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

extension $WhiteboardExportRouteExtension on WhiteboardExportRoute {
  static WhiteboardExportRoute _fromState(GoRouterState state) =>
      WhiteboardExportRoute(
        id: state.pathParameters['id']!,
        folderId: state.uri.queryParameters['folder-id'],
      );

  String get location => GoRouteData.$location(
        '/whiteboard/q/${Uri.encodeComponent(id)}/export',
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

extension $WhiteboardSelectorRouteExtension on WhiteboardSelectorRoute {
  static WhiteboardSelectorRoute _fromState(GoRouterState state) =>
      const WhiteboardSelectorRoute();

  String get location => GoRouteData.$location(
        '/whiteboard/selector',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $WhiteboardImportRouteExtension on WhiteboardImportRoute {
  static WhiteboardImportRoute _fromState(GoRouterState state) =>
      WhiteboardImportRoute(
        folderId: state.uri.queryParameters['folder-id'],
        parentFolderId: state.uri.queryParameters['parent-folder-id'],
      );

  String get location => GoRouteData.$location(
        '/whiteboard/import',
        queryParams: {
          if (folderId != null) 'folder-id': folderId,
          if (parentFolderId != null) 'parent-folder-id': parentFolderId,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
