part of 'button.dart';

class ButtonStyle {
  const ButtonStyle(this.size, this.kind, this.shape, this.opacity);

  final ButtonSize size;
  final ButtonKind kind;
  final ButtonShape shape;
  final ButtonOpacity opacity;

  Style call(BuildContext context) {
    final dim = OpacityVariant.dim.resolve(context).value;

    var primary = color.ColorVariant.primary.resolve(context);
    var onPrimary = color.ColorVariant.onPrimary.resolve(context);
    var background = color.ColorVariant.background.resolve(context);
    var onBackground = color.ColorVariant.onBackground.resolve(context);

    if (opacity == ButtonOpacity.dim) {
      primary = primary.withOpacity(dim);
      onPrimary = onPrimary.withOpacity(dim);
      background = background.withOpacity(dim);
      onBackground = onBackground.withOpacity(dim);
    }

    return Style(
      // text style stuff
      ButtonSize.small(
        $box.constraints.minHeight(40),
      ),
      ButtonSize.medium(
        $box.constraints.minHeight(48),
        $box.padding.all(12),
      ),
      ButtonShape.pill(
        $box.shapeDecoration.shape.stadium(),
      ),
      $box.alignment.center(),
      ButtonKind.primary(
        // background
        $box.shapeDecoration.color(primary),

        // text
        $text.style.ref(textStyles.TextStyleVariant.title),
        $text.style.color(onPrimary),
        $text.style.fontWeight.bold(),
        $text.style.height(1),
      ),
      ButtonKind.outlined(
        // background
        $box.shapeDecoration.color(background),

        // text
        $text.style.ref(textStyles.TextStyleVariant.title),
        $text.style.color(onBackground),
        $text.style.fontWeight.bold(),
        $text.style.height(1),

        ButtonShape.pill(
          $box.shapeDecoration.shape.stadium(
            side: BorderSide(
              color: color.ColorVariant.border.resolve(context),
              width: 1.5,
            ),
          ),
        ),
      ),

      $with.scale(1.0),

      $on.press(
        $with.scale(0.98),
      ),

      // Hover and focus
      ButtonKind.primary(
        ($on.hover | $on.focus)(
          $box.shapeDecoration.color(primary.withOpacity(dim)),
          $text.style.color(onPrimary.withOpacity(dim)),
          $box.shapeDecoration.shadows(
            [
              BoxShadow(
                color: primary.withOpacity(0.5),
                blurStyle: BlurStyle.inner,
                offset: const Offset(0, 4),
                blurRadius: 10,
              ),
            ],
          ),
        ),
        $on.disabled(
          $box.shapeDecoration.color.ref(color.ColorVariant.disable),
          $text.style.color.ref(color.ColorVariant.onDisable),
        ),
      ),
      ButtonKind.outlined(
        ($on.hover | $on.focus)(
          $box.shapeDecoration.color(background),
          $box.shapeDecoration.shape.stadium(
            side: BorderSide(
              color:
                  color.ColorVariant.border.resolve(context).withOpacity(dim),
              width: 1.5,
            ),
          ),
          $text.style.color(onBackground.withOpacity(dim)),
          $box.shapeDecoration.shadows(
            [
              BoxShadow(
                color: onBackground.withOpacity(0.1),
                blurStyle: BlurStyle.inner,
                offset: const Offset(0, 4),
                blurRadius: 10,
              ),
            ],
          ),
        ),
        $on.disabled(
          $text.style.color.ref(color.ColorVariant.onDisable),
          $box.shapeDecoration.color.ref(color.ColorVariant.disable),
          $box.shapeDecoration.shape.stadium(
            side: BorderSide(
              color: color.ColorVariant.onDisable
                  .resolve(context)
                  .withOpacity(dim),
              width: 1.5,
            ),
          ),
        ),
      ),
    ).applyVariants([size, kind, shape]);
  }
}
