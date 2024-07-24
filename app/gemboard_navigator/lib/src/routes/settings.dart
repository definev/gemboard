part of '../router.dart';

class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  static const location = '/settings';
  static final $parentNavigatorKey = RootShell.$navigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SettingsFlow();
  }

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CupertinoModalSheetPage(
      child: build(context, state),
    );
  }
}
