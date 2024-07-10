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
              path: '/default-board',
              parentNavigatorKey: MyDeskRoute.$parentNavigatorKey,
              factory: $MyDeskRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $_RootShellExtension on _RootShell {
  static _RootShell _fromState(GoRouterState state) => _RootShell();
}

extension $HomeShellExtension on HomeShell {
  static HomeShell _fromState(GoRouterState state) => const HomeShell();
}

extension $MyDeskRouteExtension on MyDeskRoute {
  static MyDeskRoute _fromState(GoRouterState state) => const MyDeskRoute();

  String get location => GoRouteData.$location(
        '/default-board',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
