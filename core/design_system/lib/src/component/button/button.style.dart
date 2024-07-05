part of 'button.dart';

class ButtonStyle {
  ButtonStyle(this.kind, this.background, this.onBackground);

  final ButtonKind kind;
  final ColorVariant background;
  final ColorVariant onBackground;

  Style call(BuildContext context) {
    return Style(
      $box.padding.horizontal.ref(SpaceVariant.mediumLarge),
      $box.padding.vertical.ref(SpaceVariant.medium),
      $box.alignment.center(),
      $text.style.ref(TextStyleVariant.h6),
      $text.style.color.ref(ColorVariant.onSurface),
      $with.scale(1.0),
      ButtonKind.flat(
        $box.color.ref(ColorVariant.surface),
        ($on.hover | $on.focus)(
          $box.color(background
              .resolve(context)
              .withOpacity(OpacityVariant.hightlight.resolve(context).value)),
          $text.style.color(
            onBackground
                .resolve(context)
                .withOpacity(OpacityVariant.blend.resolve(context).value),
          ),
        ),
      ),
      ButtonKind.outline(
        $box.color.ref(ColorVariant.surface),
        $box.border.all.color(background
            .resolve(context)
            .withOpacity(OpacityVariant.blend.resolve(context).value)),
        $box.border.all.width(2),
        ($on.hover | $on.focus)(
          $box.color(background
              .resolve(context)
              .withOpacity(OpacityVariant.hightlight.resolve(context).value)),
          $text.style.color(
            onBackground
                .resolve(context)
                .withOpacity(OpacityVariant.blend.resolve(context).value),
          ),
        ),
      ),
      ButtonKind.filled(
        $box.color.ref(background),
        $text.style.color(
          onBackground
              .resolve(context)
              .withOpacity(OpacityVariant.blend.resolve(context).value),
        ),
        ($on.hover | $on.focus)(
          $box.color(background
              .resolve(context)
              .withOpacity(OpacityVariant.blend.resolve(context).value)),
          $text.style.color(
            onBackground
                .resolve(context)
                .withOpacity(OpacityVariant.blend.resolve(context).value),
          ),
        ),
      ),
      $on.press(
        $with.scale(0.98),
      ),
    ).applyVariants([kind]).animate(
      curve: Easing.emphasizedDecelerate,
      duration: Duration(milliseconds: 200),
    );
  }
}
