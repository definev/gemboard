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
        GoRouteData.$route(
          path: '/home',
          parentNavigatorKey: HomeRoute.$parentNavigatorKey,
          factory: $HomeRouteExtension._fromState,
        ),
      ],
    );

extension $_RootShellExtension on _RootShell {
  static _RootShell _fromState(GoRouterState state) => _RootShell();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
