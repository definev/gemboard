import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:genit_configuration/genit_configuration.dart' as configuration;
import 'package:genit_navigator/genit_navigator.dart' as navigator;

List<Override> initializeOverrides() {
  return [
    ...configuration.initializeOverrides(),
    ...navigator.initializeOverrides(),
  ];
}
