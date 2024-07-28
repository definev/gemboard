part of 'toolbar.dart';

class DSToolbarStyle {
  Style call(BuildContext context) {
    final scale = DesignSystemTheme.of(context).scale;
    return Style(
      $box.color(
        ColorVariant.surface.resolve(context).withOpacity(
              OpacityVariant.blend.resolve(context).value,
            ),
      ),
      $box.shadow(
        blurRadius: 6 * scale,
        offset: Offset(0, 4 * scale),
        color: ColorVariant.onSurface
            .resolve(context)
            .withOpacity(OpacityVariant.hightlight.resolve(context).value),
      ),
      $box.padding.all.ref(SpaceVariant.small),
    );
  }

  Style styledFlexStyle(BuildContext context) {
    return Style(
      $flex.mainAxisSize.min(),
      $flex.crossAxisAlignment.start(),
      $flex.gap.ref(SpaceVariant.small),
    );
  }
}
