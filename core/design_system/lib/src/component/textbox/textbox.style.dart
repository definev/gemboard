part of 'textbox.dart';

class TextboxStyle {
  TextboxStyle(
    this.state,
    this.type,
  );

  final TextboxStateVariant state;
  final TextboxTypeVariant type;

  Style call(BuildContext context) {
    return Style(
      $box.color.ref(color.ColorVariant.background),
      $text.style.ref(textStyles.TextStyleVariant.title),
      $box.padding.horizontal(16),
      $box.padding.vertical(16),
      $box.borderRadius.circular(space.SpaceVariant.small.resolve(context)),
      $box.border.all.width(1),
      TextboxStateVariant.unfocus()(
        $box.border.all.color.ref(color.ColorVariant.disable),
      ),
      TextboxStateVariant.focus()(
        $box.border.all.color.ref(color.ColorVariant.onDisable),
      ),
      TextboxStateVariant.error()(
        $box.border.all.color.ref(color.ColorVariant.error),
      ),
      TextboxTypeVariant.label()(
        $box.padding.top(8),
        $box.padding.bottom(8),
      ),
    ).applyVariants([state, type]);
  }

  Style label(BuildContext context) {
    return Style(
      $text.style.ref(textStyles.TextStyleVariant.title),
      $text.style.color.ref(color.ColorVariant.onBackgroundDim),
      TextboxStateVariant.error()(
        $text.style.color.ref(color.ColorVariant.error),
      ),
    ).applyVariants([state, type]);
  }

  Style errorText(BuildContext context) {
    return Style(
      $text.style.ref(textStyles.TextStyleVariant.body),
      $text.style.color.ref(color.ColorVariant.error),
    ).applyVariants([state, type]);
  }
}
