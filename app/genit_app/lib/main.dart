import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:genit_app/di/di_initializer.dart';
import 'package:genit_navigator/genit_navigator.dart' as nav;
import 'package:mix/mix.dart';

ProviderContainer container =
    ProviderContainer(overrides: initializeOverrides());

void main() {
  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const GenitApp(),
    ),
  );

  doWhenWindowReady(() {
    const initialSize = Size(400, 600);
    appWindow.minSize = initialSize;
    appWindow.show();
  });
}

class GenitApp extends StatelessWidget {
  const GenitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: dsTheme,
      routeInformationProvider: nav.routeInformationProvider,
      routeInformationParser: nav.routeInformationParser,
      routerDelegate: nav.routerDelegate,
      builder: (context, child) {
        final md = MediaQuery.of(context);
        return MediaQuery(
          data: md.copyWith(
            padding: md.padding.copyWith(
              top: switch (defaultTargetPlatform) {
                TargetPlatform.macOS => 26,
                TargetPlatform.windows => 26,
                _ => 0,
              },
            ),
          ),
          child: MixTheme(
            data: mixTheme,
            child: DesignSystemTheme(
              data: designSystemThemeData,
              child: child!,
            ),
          ),
        );
      },
    );
  }
}
