part of 'card.dart';

class DSCardStyle {
  const DSCardStyle(
    this.background,
    this.onBackground,
    this.kind,
    this.hoverHighlight,
    this.focusHighlight,
  );

  final ColorVariant background;
  final ColorVariant onBackground;
  final DSCardKind kind;
  final bool hoverHighlight;
  final bool focusHighlight;

  Style call(BuildContext context) {
    return Style(
      $box.color.ref(ColorVariant.surface),
      $text.style.ref(TextStyleVariant.p),
      DSCardKind.flat(
        $box.color.ref(background),
        $text.style.color.ref(onBackground),
        $icon.color.ref(onBackground),
      ),
      DSCardKind.outlined(
        $box.border.all.color.ref(background),
        $box.border.all.width(1.5),
      ),
      DSCardKind.elevated(
        $box.shadow(
          blurRadius: 8,
          color: background.resolve(context).withOpacity(0.1),
          offset: const Offset(0, 4),
        ),
      ),
      $with.scale(1.0),
      // HoverVariant.hover(
      //   $box.color(
      //     Color.lerp(
      //       ColorVariant.surface.resolve(context),
      //       background.resolve(context),
      //       0.1,
      //     )!,
      //   ),
      //   $text.style.color.ref(ColorVariant.onSurface),
      //   $icon.color.ref(ColorVariant.onSurface),
      // ),
      FocusVariant.focus(
        $box.color(
          Color.lerp(
            ColorVariant.surface.resolve(context),
            background.resolve(context),
            0.05,
          )!,
        ),
        $text.style.color.ref(ColorVariant.onSurface),
      ),
    ).applyVariants([
      kind,
      hoverHighlight ? HoverVariant.hover : HoverVariant.unhover,
      focusHighlight ? FocusVariant.focus : FocusVariant.unfocus,
    ]).animate(
      curve: Easing.emphasizedDecelerate,
      duration: Duration(milliseconds: 200),
    );
  }

  Style sectionStyle(BuildContext context) {
    return Style(
      $flex.gap.ref(SpaceVariant.medium),
      $flex.crossAxisAlignment.start(),
      $flex.mainAxisAlignment.start(),
      $flex.mainAxisSize.min(),
      $box.padding.all.ref(SpaceVariant.medium),
    );
  }

  Style sectionHeaderStyle(BuildContext context) {
    return Style(
      $box.color(background
          .resolve(context)
          .withOpacity(OpacityVariant.blend.resolve(context).value)),
      $box.alignment.centerLeft(),
      $box.padding.vertical.ref(SpaceVariant.small),
      $box.padding.horizontal.ref(SpaceVariant.medium),
      $text.style.ref(TextStyleVariant.p),
      $text.style.color.ref(onBackground),
      DSCardKind.flat(
        $box.color.ref(ColorVariant.surface),
      ),
    ).applyVariants([kind]);
  }

  Style contentStyle(BuildContext context) {
    return Style(
      $text.style.ref(TextStyleVariant.p),
      $text.style.color.ref(ColorVariant.onSurface),
      $flex.mainAxisSize.min(),
      DSCardKind.flat(
        $box.color.ref(onBackground),
      ),
    );
  }
}
