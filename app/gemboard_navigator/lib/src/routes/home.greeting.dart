part of '../router.dart';

class HomeGreetingRoute extends GoRouteData {
  const HomeGreetingRoute();

  static const location = '/greeting';
  static final $parentNavigatorKey = HomeShell.$navigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return HomeFlow(
      resizableController: HomeShell.resizableController,
    );
  }
}
