import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:mix/mix.dart';

class DSTooltip extends HookWidget {
  const DSTooltip({
    super.key,
    required this.label,
    required this.child,
    this.alignment = Alignment.topCenter,
  });

  final Widget label;
  final Widget child;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    final show = useState(false);
    final focusNode = useFocusNode();
    useEffect(() {
      void onFocusNode() {
        if (focusNode.hasFocus) {
          show.value = true;
        } else {
          show.value = false;
        }
      }

      focusNode.addListener(onFocusNode);
      return () => focusNode.removeListener(onFocusNode);
    }, []);

    return MouseRegion(
      onEnter: (_) => show.value = true,
      onExit: (_) => show.value = false,
      child: PortalTarget(
        visible: show.value,
        anchor: Aligned(
          target: alignment,
          follower: -alignment,
        ),
        portalFollower: Box(
          style: Style(
            $box.color.ref(ColorVariant.surface),
            $box.padding.all.ref(SpaceVariant.small),
            $box.margin.all.ref(SpaceVariant.small),
            $text.style.ref(TextStyleVariant.p2),
            $text.textAlign.center(),
          ),
          child: label,
        ) //
            .animate(
              target: show.value ? 1.0 : 0.0,
              effects: [
              ],
            )
            .slide(
              duration: Duration(milliseconds: 200),
              curve: Easing.standard,
              begin: Offset(0.5 * -alignment.x, 0.5 * -alignment.y),
              end: Offset.zero,
            )
            .scale(
              duration: Duration(milliseconds: 200),
              curve: Easing.standard,
            )
            .fade(
              duration: Duration(milliseconds: 200),
              curve: Easing.standard,
            ),
        closeDuration: Duration(milliseconds: 200),
        child: GestureDetector(
          onLongPress: focusNode.requestFocus,
          child: Focus(
            focusNode: focusNode,
            child: child,
          ),
        ),
      ),
    );
  }
}
