part of '../router.dart';

class WhiteboardSelectorRoute extends GoRouteData {
  const WhiteboardSelectorRoute();

  static const location = '/whiteboard/selector';
  static const subLocation = 'whiteboard/selector';
  static final $parentNavigatorKey = RootShell.$navigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return WhiteboardSelectorFlow();
  }

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CupertinoModalSheetPage(
      child: build(context, state),
    );
  }
}
