import 'package:boxy/boxy.dart';
import 'package:flutter/widgets.dart';

class WidgetSizeListener extends StatefulWidget {
  const WidgetSizeListener({
    super.key,
    required this.onChanged,
    required this.child,
  });

  final void Function(Size size) onChanged;
  final Widget child;

  @override
  State<WidgetSizeListener> createState() => _WidgetSizeListenerState();
}

class _WidgetSizeListenerState extends State<WidgetSizeListener> {
  Size? _size;

  @override
  Widget build(BuildContext context) {
    return CustomBoxy(
      delegate: _WidgetSizeListener(
        onChanged: (size) {
          if (size == _size) return;
          _size = size;
          WidgetsBinding.instance.addPostFrameCallback(
            (_) => widget.onChanged(size),
          );
        },
      ),
      children: [
        BoxyId(
          id: #_child,
          child: widget.child,
        ),
      ],
    );
  }
}

class _WidgetSizeListener extends BoxyDelegate {
  _WidgetSizeListener({
    required this.onChanged,
  });

  final void Function(Size size) onChanged;

  @override
  Size layout() {
    final child = getChild(#_child);
    final size = child.layout(constraints);

    onChanged(size);

    return size;
  }
}
