import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:genit_app/di/di_initializer.dart';
import 'package:genit_navigator/genit_navigator.dart' as nav;

ProviderContainer container = ProviderContainer(overrides: initializeOverrides());

void main() {
  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const GenitApp(),
    ),
  );
}

class GenitApp extends StatelessWidget {
  const GenitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: genitTheme,
      routeInformationProvider: nav.routeInformationProvider,
      routeInformationParser: nav.routeInformationParser,
      routerDelegate: nav.routerDelegate,
    );
  }
}
