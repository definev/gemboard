part of '../router.dart';

class HomeRoute extends GoRouteData {
  const HomeRoute();

  static const location = '/home';
  static final $parentNavigatorKey = _RootShell.$navigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return HomeFlow();
  }
}