import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gemboard_configuration/gemboard_configuration.dart' as configuration;
import 'package:gemboard_navigator/gemboard_navigator.dart' as navigator;

List<Override> initializeOverrides() {
  return [
    ...configuration.initializeOverrides(),
    ...navigator.initializeOverrides(),
  ];
}
