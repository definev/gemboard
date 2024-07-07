part of 'button.dart';

class ButtonStyle {
  ButtonStyle(this.kind, this.background, this.onBackground, this.pressed,
      this.hoverHighlight, this.focusHighlight);

  final ButtonKind kind;
  final ColorVariant background;
  final ColorVariant onBackground;
  final bool pressed;
  final bool hoverHighlight;
  final bool focusHighlight;

  Style call(BuildContext context) {
    return Style(
      $box.padding.horizontal.ref(SpaceVariant.mediumLarge),
      $box.padding.vertical.ref(SpaceVariant.medium),
      $box.alignment.center(),
      $text.style.ref(TextStyleVariant.h6),
      $text.style.color.ref(ColorVariant.onSurface),
      ButtonKind.flat(
        $box.color.ref(ColorVariant.surface),
        HoverVariant.hover(
          $box.color(
            Color.lerp(
              ColorVariant.surface.resolve(context),
              background.resolve(context),
              OpacityVariant.hightlight.resolve(context).value,
            )!,
          ),
        ),
        PressVariant.press(
          $box.color(
            Color.lerp(
              ColorVariant.surface.resolve(context),
              background.resolve(context),
              OpacityVariant.hightlight.resolve(context).value,
            )!,
          ),
        ),
        FocusVariant.focus(
          $box.color(
            Color.lerp(
              ColorVariant.surface.resolve(context),
              background.resolve(context),
              OpacityVariant.hightlight.resolve(context).value,
            )!,
          ),
        ),
      ),
      ButtonKind.outline(
        $box.color.ref(ColorVariant.surface),
        $box.border.all.color(background
            .resolve(context)
            .withOpacity(OpacityVariant.blend.resolve(context).value)),
        $box.border.all.width(2),
        HoverVariant.hover(
          $box.color(
            Color.lerp(
              ColorVariant.surface.resolve(context),
              background.resolve(context),
              OpacityVariant.hightlight.resolve(context).value,
            )!,
          ),
        ),
        PressVariant.press(
          $box.color(
            Color.lerp(
              ColorVariant.surface.resolve(context),
              background.resolve(context),
              OpacityVariant.hightlight.resolve(context).value,
            )!,
          ),
        ),
        FocusVariant.focus(
          $box.color(
            Color.lerp(
              ColorVariant.surface.resolve(context),
              background.resolve(context),
              OpacityVariant.hightlight.resolve(context).value,
            )!,
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
        HoverVariant.hover(
          $box.color(
            Color.lerp(
              ColorVariant.surface.resolve(context),
              background.resolve(context),
              OpacityVariant.hightlight.resolve(context).value,
            )!,
          ),
        ),
        PressVariant.press(
          $box.color(
            Color.lerp(
              ColorVariant.surface.resolve(context),
              background.resolve(context),
              OpacityVariant.hightlight.resolve(context).value,
            )!,
          ),
        ),
        FocusVariant.focus(
          $box.color(
            Color.lerp(
              ColorVariant.surface.resolve(context),
              background.resolve(context),
              OpacityVariant.hightlight.resolve(context).value,
            )!,
          ),
        ),
      ),
      $with.scale(1.0),
      PressVariant.press(
        $with.scale(0.98),
      ),
    ).applyVariants([
      kind,
      pressed ? PressVariant.press : PressVariant.unpress,
      hoverHighlight ? HoverVariant.hover : HoverVariant.unhover,
      focusHighlight ? FocusVariant.focus : FocusVariant.unfocus,
    ]).animate(
      curve: Easing.emphasizedDecelerate,
      duration: Duration(milliseconds: 300),
    );
  }
}
