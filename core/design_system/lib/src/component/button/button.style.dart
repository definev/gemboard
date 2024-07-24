part of 'button.dart';

class ButtonStyle {
  ButtonStyle(
    this.kind,
    this.highlight,
    this.background,
    this.onBackground,
    this.pressed,
    this.hoverHighlight,
    this.focusHighlight,
  );

  final ButtonKind kind;
  final ButtonHighlight highlight;
  final ColorVariant background;
  final ColorVariant onBackground;
  final bool? pressed;
  final bool hoverHighlight;
  final bool focusHighlight;

  Style call(BuildContext context) {
    final boxBackground = Color.lerp(
      ColorVariant.surface.resolve(context),
      background.resolve(context),
      OpacityVariant.hightlight.resolve(context).value,
    )!;

    return Style(
      $box.padding.left.ref(SpaceVariant.gap),
      $box.padding.right.ref(SpaceVariant.small),
      $box.padding.vertical.ref(SpaceVariant.gap),
      $text.style.ref(TextStyleVariant.h6),
      $text.style.color.ref(ColorVariant.onSurface),
      $icon.size(24),
      $icon.color.ref(ColorVariant.onSurface),
      ButtonKind.flat(
        $box.color.ref(ColorVariant.surface),
        HoverVariant.hover(
          $box.color(boxBackground),
        ),
        PressVariant.press(
          $box.color(boxBackground),
        ),
        FocusVariant.focus(
          $box.color(boxBackground),
        ),
        ButtonHighlight.focus(
          $box.color(boxBackground),
        ),
        ButtonHighlight.hover(
          $box.color(boxBackground),
        ),
        ButtonHighlight.pressed(
          $box.color(boxBackground),
        ),
      ),
      ButtonKind.outline(
        $box.color.ref(ColorVariant.surface),
        $box.foregroundDecoration.border.all.color(background
            .resolve(context)
            .withOpacity(OpacityVariant.blend.resolve(context).value)),
        $box.foregroundDecoration.border.all.width(2),
        HoverVariant.hover(
          $box.color(boxBackground),
        ),
        PressVariant.press(
          $box.color(boxBackground),
        ),
        FocusVariant.focus(
          $box.color(boxBackground),
        ),
        ButtonHighlight.focus(
          $box.color(boxBackground),
        ),
        ButtonHighlight.hover(
          $box.color(boxBackground),
        ),
        ButtonHighlight.pressed(
          $box.color(boxBackground),
        ),
      ),
      ButtonKind.filled(
        $box.color.ref(background),
        $text.style.color.ref(onBackground),
        $icon.color.ref(onBackground),
        HoverVariant.hover(
          $box.color(background
              .resolve(context)
              .withOpacity(OpacityVariant.blend.resolve(context).value)),
        ),
        PressVariant.press(
          $box.color(background
              .resolve(context)
              .withOpacity(OpacityVariant.blend.resolve(context).value)),
        ),
        FocusVariant.focus(
          $box.color(background
              .resolve(context)
              .withOpacity(OpacityVariant.blend.resolve(context).value)),
        ),
        ButtonHighlight.focus(
          $box.color(background
              .resolve(context)
              .withOpacity(OpacityVariant.blend.resolve(context).value)),
        ),
        ButtonHighlight.hover(
          $box.color(background
              .resolve(context)
              .withOpacity(OpacityVariant.blend.resolve(context).value)),
        ),
        ButtonHighlight.pressed(
          $box.color(background
              .resolve(context)
              .withOpacity(OpacityVariant.blend.resolve(context).value)),
        ),
      ),
      $with.scale(1.0),
      PressVariant.press(
        $with.scale(0.98),
      ),
    ).applyVariants([
      kind,
      highlight,
      switch (pressed) {
        null => PressVariant.disabled,
        true => PressVariant.press,
        false => PressVariant.unpress,
      },
      hoverHighlight ? HoverVariant.hover : HoverVariant.unhover,
      focusHighlight ? FocusVariant.focus : FocusVariant.unfocus,
    ]).animate(
      curve: Easing.emphasizedDecelerate,
      duration: Duration(milliseconds: 300),
    );
  }
}
