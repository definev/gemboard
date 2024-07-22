import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:utils/src/helper/debouncer.dart';

Debouncer useDebouncer() => use(_DebouncerHook());

class _DebouncerHook extends Hook<Debouncer> {
  @override
  HookState<Debouncer, Hook<Debouncer>> createState() {
    return _DebouncerHookState();
  }
}

class _DebouncerHookState extends HookState<Debouncer, _DebouncerHook> {
  late final Debouncer debouncer = Debouncer();

  @override
  Debouncer build(BuildContext context) {
    return debouncer;
  }

  @override
  void dispose() {
    debouncer.cancel();
  }
}
