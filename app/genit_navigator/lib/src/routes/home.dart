part of '../router.dart';

class HomeShell extends ShellRouteData {
  const HomeShell();

  static final $parentNavigatorKey = _RootShell.$navigatorKey;
  static final $navigatorKey = GlobalKey<NavigatorState>();
  static final resizableController = ResizableController();

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return _HomeShellView(
      state: state,
      navigator: navigator,
    );
  }
}

class _HomeShellView extends StatefulWidget {
  const _HomeShellView({
    required this.state,
    required this.navigator,
  });

  final GoRouterState state;
  final Widget navigator;

  @override
  State<_HomeShellView> createState() => _HomeShellViewState();
}

class _HomeShellViewState extends State<_HomeShellView> {
  @override
  Widget build(BuildContext context) {
    return Portal(
      child: Material(
        color: ColorVariant.surface.resolve(context),
        child: ResizableFlex(
          controller: HomeShell.resizableController,
          direction: Axis.horizontal,
          initialSize: 300,
          minSize: 85,
          firstChild: GenitLeadSidebar(
            resizableController: HomeShell.resizableController,
          ),
          secondChild: widget.navigator,
        ),
      ),
    );
  }
}
