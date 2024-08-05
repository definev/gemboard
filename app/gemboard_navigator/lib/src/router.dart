import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:go_router/go_router.dart';
import 'package:home/home.dart';
import 'package:import_export/import_export.dart';
import 'package:settings/settings.dart';
import 'package:utils/utils.dart';
import 'package:whiteboard/whiteboard.dart';

part 'router.g.dart';
part 'routes/_root.dart';
part 'routes/home.dart';
part 'routes/home.greeting.dart';
part 'routes/settings.dart';
part 'routes/whiteboard.dart';
part 'routes/whiteboard.export.dart';
part 'routes/whiteboard.selector.dart';

final router = () {
  final router = GoRouter(
    routes: $appRoutes,
    initialLocation: HomeGreetingRoute.location,
  );
  return router;
}();
