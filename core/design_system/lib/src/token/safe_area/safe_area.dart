import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/foundation.dart';

double get titlebarHeight => kIsWeb
    ? 0
    : switch (defaultTargetPlatform) {
        TargetPlatform.macOS ||
        TargetPlatform.windows =>
          appWindow.titleBarHeight,
        _ => 0,
      };
