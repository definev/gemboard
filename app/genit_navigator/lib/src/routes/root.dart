part of '../router.dart';

@TypedShellRoute<HomeShellRoute>(
  routes: [
    TypedGoRoute<HomeRoute>(path: HomeRoute.location),
    TypedGoRoute<AskBoardRoute>(path: AskBoardRoute.location),
  ],
)
class HomeShellRoute extends ShellRouteData {
  const HomeShellRoute();

  static final $navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return _HomeShellView(
      navigator: navigator,
    );
  }
}

class _HomeShellView extends StatefulWidget {
  const _HomeShellView({
    required this.navigator,
  });

  final Widget navigator;

  @override
  State<_HomeShellView> createState() => _HomeShellViewState();
}

class _HomeShellViewState extends State<_HomeShellView> {
  var ratio = 0.3;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Scaffold(
        body: SafeArea(
          child: PaddedRow(
            padding: EdgeInsets.all(SpaceVariant.small.resolve(context)),
            children: [
              SizedBox(
                height: constraints.maxHeight,
                width: constraints.maxWidth * ratio,
                child: Placeholder(
                  child: Center(
                    child: Text('Sidebar'),
                  ),
                ),
              ),
              SizedBox(
                height: constraints.maxHeight,
                width: SpaceVariant.medium.resolve(context),
                child: MouseRegion(
                  cursor: SystemMouseCursors.grab,
                  child: GestureDetector(
                    child: ColoredBox(color: Colors.transparent),
                    onPanUpdate: (details) => setState(
                      () {
                        ratio =
                            (ratio + details.delta.dx / constraints.maxWidth)
                                .clamp(0.1, 0.9);
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                child: widget.navigator,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
