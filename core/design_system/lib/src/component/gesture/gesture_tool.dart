import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class GestureTool extends StatefulHookWidget {
  const GestureTool({
    super.key,
    this.focusNode,
    this.onPressed,
    this.actions,
    this.shortcuts,
    this.child,
    required this.builder,
  });

  final FocusNode? focusNode;

  final VoidCallback? onPressed;
  final Map<Type, Action<Intent>>? actions;
  final Map<ShortcutActivator, Intent>? shortcuts;

  final Widget Function(
    bool hoverHighlight,
    bool focusHighlight,
    bool? pressed,
  ) builder;
  final Widget? child;

  @override
  State<StatefulWidget> createState() => _GestureToolState();
}

class _GestureToolState extends State<GestureTool> {
  bool? pressed = null;

  VoidCallback? get onPressed {
    return switch (widget.onPressed) {
      final onPressed? => () async {
          pressed = true;
          setState(() {});
          onPressed.call();
          await Future.delayed(Duration(milliseconds: 300));
          pressed = false;
          setState(() {});
        },
      _ => null,
    };
  }

  void activateOnIntent(Intent? intent) {
    onPressed?.call();
  }

  late Map<Type, Action<Intent>> _actionMap = <Type, Action<Intent>>{
    ActivateIntent: CallbackAction<ActivateIntent>(onInvoke: activateOnIntent),
    ButtonActivateIntent:
        CallbackAction<ButtonActivateIntent>(onInvoke: activateOnIntent),
  };

  @override
  void didUpdateWidget(covariant GestureTool oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.actions != null) {
      _actionMap = widget.actions!;
    }
    if (widget.onPressed == null) {
      pressed = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final hoverHighlight = useState(false);
    void onShowHoverHighlight(bool hover) {
      hoverHighlight.value = hover;
    }

    final focusHighlight = useState(false);
    void onShowFocusHighlight(bool focus) {
      focusHighlight.value = focus;
    }

    return FocusableActionDetector(
      focusNode: widget.focusNode,
      onShowHoverHighlight: onShowHoverHighlight,
      onShowFocusHighlight: onShowFocusHighlight,
      actions: _actionMap,
      shortcuts: widget.shortcuts,
      child: GestureDetector(
        onTap: onPressed,
        child: widget.builder(
          hoverHighlight.value,
          focusHighlight.value,
          pressed,
        ),
      ),
    );
  }
}
