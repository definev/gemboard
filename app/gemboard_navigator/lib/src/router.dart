import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:go_router/go_router.dart';
import 'package:home/home.dart';
import 'package:settings/settings.dart';
import 'package:whiteboard/whiteboard.dart';

part 'router.g.dart';
part 'routes/_root.dart';
part 'routes/home.dart';
part 'routes/home.greeting.dart';
part 'routes/settings.dart';
part 'routes/whiteboard.dart';

final router = () {
  print('${$appRoutes}');

  return GoRouter(
    navigatorKey: RootShell.$navigatorKey,
    routes: [
      GoRoute(
        parentNavigatorKey: RootShell.$navigatorKey,
        path: SettingsRoute.location,
        builder: (context, state) =>
            $SettingsRouteExtension._fromState(state).build(context, state),
      ),
      ShellRoute(
        parentNavigatorKey: RootShell.$navigatorKey,
        navigatorKey: HomeShell.$navigatorKey,
        builder: (context, state, navigator) => $HomeShellExtension
            ._fromState(state)
            .builder(context, state, navigator),
        routes: [
          GoRoute(
            path: HomeGreetingRoute.location,
            parentNavigatorKey: HomeShell.$navigatorKey,
            builder: (context, state) => $HomeGreetingRouteExtension
                ._fromState(state)
                .build(context, state),
            routes: [
              GoRoute(
                path: WhiteboardEditorRoute.subLocation,
                parentNavigatorKey: HomeShell.$navigatorKey,
                builder: (context, state) => $WhiteboardEditorRouteExtension
                    ._fromState(state)
                    .build(context, state),
              ),
            ],
          ),
        ],
      ),
    ],
    initialLocation: HomeGreetingRoute.location,
    // initialLocation: MyDeskRoute.location,
    initialExtra: HomeShell.resizableController,
  );
}();
