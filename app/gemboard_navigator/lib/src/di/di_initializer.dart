import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gemboard_navigator/src/feature/home.dart';
import 'package:gemboard_navigator/src/feature/import_export.dart';
import 'package:gemboard_navigator/src/feature/settings.dart';
import 'package:gemboard_navigator/src/feature/whiteboard.dart';
import 'package:home/home.dart';
import 'package:import_export/import_export.dart';
import 'package:settings/settings.dart';
import 'package:whiteboard/whiteboard.dart';

List<Override> initializeOverrides() {
  return [
    HomeNavigation.provider.overrideWithValue(HomeNavigationImpl()),
    WhiteboardNavigation.provider.overrideWithValue(WhiteboardNavigationImpl()),
    SettingsNavigation.provider.overrideWithValue(SettingsNavigationImpl()),
    ImportExportNavigation.provider
        .overrideWithValue(ImportExportNavigationImpl()),
  ];
}
