import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gemboard_navigator/src/feature/home.dart';
import 'package:gemboard_navigator/src/feature/whiteboard.dart';
import 'package:home/home.dart';
import 'package:whiteboard/whiteboard.dart';


List<Override> initializeOverrides() {
  return [
    HomeNavigation.provider.overrideWithValue(HomeNavigationImpl()),
    WhiteboardNavigation.provider.overrideWithValue(WhiteboardNavigationImpl()),
  ];
}
