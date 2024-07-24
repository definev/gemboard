import 'package:design_system/design_system.dart';
import 'package:design_system/src/token/gesture/gesture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mix/mix.dart';

part 'card.style.dart';
part 'card.variant.dart';

class DSCard extends StyledWidget {
  const DSCard({
    super.key,
    super.orderOfModifiers = const [],
    super.style,
    super.inherit,
    this.kind = DSCardKind.flat,
    this.background = ColorVariant.yellow,
    this.onBackground,
    this.focusNode,
    required this.child,
  });

  final ColorVariant background;
  final ColorVariant? onBackground;
  final DSCardKind kind;

  final FocusNode? focusNode;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return HookBuilder(
      builder: (context) {
        final hoverHighlight = useState(false);
        void onShowHoverHighlight(bool hover) {
          hoverHighlight.value = hover;
        }

        final focusHighlight = useState(false);
        void onShowFocusHighlight(bool focus) {
          focusHighlight.value = focus;
        }

        return withMix(
          context,
          (context) {
            final onBackground = this.onBackground ??
                ColorVariant.resolveOnBackground(
                  background,
                  ColorVariant.onSurface,
                );

            final dsCardStyle = DSCardStyle(
              background,
              onBackground,
              kind,
              hoverHighlight.value,
              focusHighlight.value,
            );

            return FocusableActionDetector(
              focusNode: focusNode,
              onShowHoverHighlight: onShowHoverHighlight,
              onShowFocusHighlight: onShowFocusHighlight,
              child: Box(
                style: dsCardStyle(context).merge(style),
                child: child,
              ),
            );
          },
        );
      },
    );
  }
}

class DSCardSection extends StatelessWidget {
  const DSCardSection({
    super.key,
    this.header,
    this.content,
    this.footer,
    this.kind = DSCardKind.flat,
    this.background = ColorVariant.yellow,
    this.onBackground = ColorVariant.onYellow,
  });

  final Widget? header;
  final Widget? content;
  final Widget? footer;

  final ColorVariant background;
  final ColorVariant? onBackground;
  final DSCardKind kind;

  @override
  Widget build(BuildContext context) {
    final onBackground = this.onBackground ??
        ColorVariant.resolveOnBackground(
          background,
          ColorVariant.onSurface,
        );
    final style = DSCardStyle(
      background,
      onBackground,
      kind,
      false,
      false,
    );
    return VBox(
      style: style.sectionStyle(context),
      children: [
        if (header case final header?)
          Box(
            style: style.sectionHeaderStyle(context),
            child: header,
          ),
        if (content case final content?)
          Mix(
            data: style.contentStyle(context).of(context),
            child: content,
          ),
        if (footer case final footer?) footer,
      ],
    );
  }
}
