import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

// ignore: deprecated_member_use
KeyEventResult Function(FocusNode node, RawKeyEvent event) handleEnterKey({
  required VoidCallback onSubmit,
}) {
  return (node, event) {
    final instance = HardwareKeyboard.instance;
    if (!instance.isShiftPressed &&
        instance.isLogicalKeyPressed(LogicalKeyboardKey.enter)) {
      // ignore: deprecated_member_use
      if (event is RawKeyDownEvent) onSubmit();
      return KeyEventResult.handled;
    } else {
      return KeyEventResult.ignored;
    }
  };
}
