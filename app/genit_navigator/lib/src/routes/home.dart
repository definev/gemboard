part of '../router.dart';

@TypedGoRoute<HomeRoute>(path: HomeRoute.location)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  static const location = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const BoardsFlow();
  }
}
