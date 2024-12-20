import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gemboard_app/di/di_initializer.dart';
import 'package:gemboard_database/gemboard_database.dart';
import 'package:gemboard_navigator/gemboard_navigator.dart' as nav;
import 'package:mix/mix.dart';

ProviderContainer container =
    ProviderContainer(overrides: initializeOverrides());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await container.read(initializeDatabaseProvider.future);

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const GemboardApp(),
    ),
  );

  if (defaultTargetPlatform == TargetPlatform.macOS ||
      defaultTargetPlatform == TargetPlatform.windows ||
      defaultTargetPlatform == TargetPlatform.linux) {
    doWhenWindowReady(() {
      const initialSize = Size(400, 600);
      appWindow.minSize = initialSize;
      appWindow.show();
    });
  }
}

class GemboardApp extends StatelessWidget {
  const GemboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: dsTheme,
      routeInformationProvider: nav.routeInformationProvider,
      routeInformationParser: nav.routeInformationParser,
      routerDelegate: nav.routerDelegate,
      builder: (BuildContext context, Widget? child) {
        final md = MediaQuery.of(context);
        child = MediaQuery(
          data: md.copyWith(
            padding: md.padding.copyWith(
              top: md.padding.top +
                  switch (defaultTargetPlatform) {
                    TargetPlatform.macOS => titlebarHeight,
                    // TargetPlatform.windows => titlebarHeight,
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
        if (defaultTargetPlatform == TargetPlatform.macOS) {
          child = WindowMover(
            child: child,
          );
        }
        if (defaultTargetPlatform == TargetPlatform.windows) {
          child = WindowMover(
            child: child,
          );
        }
        return child;
      },
    );
  }
}
