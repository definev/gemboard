import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:genit_navigator/src/feature/home.dart';
import 'package:home/home.dart';


List<Override> initializeOverrides() {
  return [
    HomeNavigation.provider.overrideWithValue(HomeNavigationImpl()),
  ];
}
