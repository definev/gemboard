part of '../router.dart';

@TypedGoRoute<AskBoardRoute>(path: AskBoardRoute.location)
class AskBoardRoute extends GoRouteData {
  const AskBoardRoute({
    required this.id,
    this.$extra,
  });

  static const location = '/board/:id';

  final String id;
  final AskBoard? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return AskBoardFlow(
      id: id,
      board: $extra,
    );
  }
}
