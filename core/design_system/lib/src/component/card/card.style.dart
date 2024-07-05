part of 'card.dart';

class DSCardStyle {
  const DSCardStyle(this.background, this.onBackground, this.kind);

  final ColorVariant background;
  final ColorVariant onBackground;
  final DSCardKind kind;

  Style call(BuildContext context) {
    return Style(
      $box.alignment.center(),
      $box.color.ref(ColorVariant.surface),
      $text.style.ref(TextStyleVariant.p),
      DSCardKind.flat(
        $box.color.ref(background),
        $text.style.color.ref(onBackground),
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
      $with.scale(1),
      $on.press(
        $with.scale(0.98),
      ),
    ).applyVariants([kind]).animate(
      curve: Easing.emphasizedDecelerate,
      duration: Duration(milliseconds: 200),
    );
  }

  Style sectionStyle(BuildContext context) {
    return Style(
      $flex.gap.ref(SpaceVariant.medium),
      $flex.crossAxisAlignment.start(),
      $box.padding.all.ref(SpaceVariant.medium),
    );
  }

  Style sectionHeaderStyle(BuildContext context) {
    return Style(
      $box.color(background
          .resolve(context)
          .withOpacity(OpacityVariant.blend.resolve(context).value)),
      $box.alignment.centerLeft(),
      $box.padding.all.ref(SpaceVariant.small),
      $text.style.ref(TextStyleVariant.h6),
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
      DSCardKind.flat(
        $box.color.ref(onBackground),
      ),
    );
  }
}
