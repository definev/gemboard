import 'package:flutter/material.dart';

class DialogPage<T> extends Page<T> {
  DialogPage({
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
    super.canPop,
    super.onPopInvoked,
    required this.builder,
  });

  final WidgetBuilder builder;

  @override
  Route<T> createRoute(BuildContext context) {
    return DialogRoute(
      context: context,
      builder: (context) => this.builder(context),
      settings: this,
    );
  }
}
