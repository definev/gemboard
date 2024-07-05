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
      builder: (context, constraints) => WindowTitleBarBox(
        child: ColoredBox(
          color: ColorVariant.background.resolve(context),
          child: Stack(
            children: [
              Positioned.fill(
                child: MoveWindow(),
              ),
              Positioned.fill(
                child: SafeArea(
                  child: PaddedRow(
                    padding:
                        EdgeInsets.all(SpaceVariant.small.resolve(context)),
                    children: [
                      SizedBox(
                        height: constraints.maxHeight,
                        width: constraints.maxWidth * ratio,
                        child: SideBar(),
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
                                ratio = (ratio +
                                        details.delta.dx / constraints.maxWidth)
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
            ],
          ),
        ),
      ),
    );
  }
}

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
          child: WindowButtons(),
        ),
        Expanded(
          child: Placeholder(
            child: Center(
              child: Text('Sidebar'),
            ),
          ),
        ),
      ],
    );
  }
}

final buttonColors = WindowButtonColors(
    iconNormal: const Color(0xFF805306),
    mouseOver: const Color(0xFFF6A00C),
    mouseDown: const Color(0xFF805306),
    iconMouseOver: const Color(0xFF805306),
    iconMouseDown: const Color(0xFFFFD500));

final closeButtonColors = WindowButtonColors(
    mouseOver: const Color(0xFFD32F2F),
    mouseDown: const Color(0xFFB71C1C),
    iconNormal: const Color(0xFF805306),
    iconMouseOver: Colors.white);

class WindowButtons extends StatelessWidget {
  const WindowButtons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(colors: buttonColors),
        MaximizeWindowButton(colors: buttonColors),
        CloseWindowButton(colors: closeButtonColors),
      ],
    );
  }
}
