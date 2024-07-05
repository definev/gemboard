import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
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
    this.onBackground = ColorVariant.onYellow,
    required this.child,
  });

  final ColorVariant background;
  final ColorVariant? onBackground;
  final DSCardKind kind;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return withMix(
      context,
      (context) {
        final onBackground = this.onBackground ??
            ColorVariant.resolveOnBackground(
              background,
              ColorVariant.onSurface,
            );

        final dsCardStyle = DSCardStyle(background, onBackground, kind);

        return PressableBox(
          style: dsCardStyle(context).merge(style),
          child: child,
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
    final style = DSCardStyle(background, onBackground, kind);
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
