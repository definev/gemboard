part of '../router.dart';

class HomeRoute extends GoRouteData {
  const HomeRoute();

  static const location = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return HomeFlow();
  }
}
