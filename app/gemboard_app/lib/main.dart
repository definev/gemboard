import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gemboard_app/di/di_initializer.dart';
import 'package:gemboard_navigator/gemboard_navigator.dart' as nav;
import 'package:mix/mix.dart';

ProviderContainer container =
    ProviderContainer(overrides: initializeOverrides());

void main() {
  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const gemboardApp(),
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

class gemboardApp extends StatelessWidget {
  const gemboardApp({super.key});

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
              top: md.padding.top +
                  switch (defaultTargetPlatform) {
                    TargetPlatform.macOS => titlebarHeight,
                    TargetPlatform.windows => titlebarHeight,
                    _ => 0,
                  },
            ),
          ),
          child: GestureDetector(
            onTap: () {
              final focusNode = FocusManager.instance.primaryFocus;
              if (focusNode != null) {
                focusNode.unfocus();
              }
            },
            child: MixTheme(
              data: mixTheme,
              child: DesignSystemTheme(
                data: designSystemThemeData,
                child: child!,
              ),
            ),
          ),
        );
      },
    );
  }
}
