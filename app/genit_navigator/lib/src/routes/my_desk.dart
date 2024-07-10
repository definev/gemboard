part of '../router.dart';

class MyDeskRoute extends GoRouteData {
  const MyDeskRoute();

  static const location = '/default-board';
  static final $parentNavigatorKey = HomeShell.$navigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return MyDeskFlow();
  }
}
