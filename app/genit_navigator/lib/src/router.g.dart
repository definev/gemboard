// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $askBoardRoute,
      $homeRoute,
    ];

RouteBase get $askBoardRoute => GoRouteData.$route(
      path: '/board/:id',
      factory: $AskBoardRouteExtension._fromState,
    );

extension $AskBoardRouteExtension on AskBoardRoute {
  static AskBoardRoute _fromState(GoRouterState state) => AskBoardRoute(
        id: state.pathParameters['id']!,
        $extra: state.extra as AskBoard?,
      );

  String get location => GoRouteData.$location(
        '/board/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
