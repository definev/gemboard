part of '../router.dart';

@TypedShellRoute<_RootShell>(
  routes: [
    TypedShellRoute<HomeShell>(
      routes: [
        TypedGoRoute<MyDeskRoute>(path: MyDeskRoute.location)
      ],
    ),
  ],
)
class _RootShell extends ShellRouteData {
  static final $navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return navigator;
  }
}
