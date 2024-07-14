import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:go_router/go_router.dart';
import 'package:home/home.dart';
import 'package:whiteboard/whiteboard.dart';

part 'router.g.dart';
part 'routes/_root.dart';
part 'routes/home.dart';
part 'routes/my_desk.dart';
part 'routes/whiteboard.dart';

final router = GoRouter(
  routes: $appRoutes,
  initialLocation: MyDeskRoute.location,
);
