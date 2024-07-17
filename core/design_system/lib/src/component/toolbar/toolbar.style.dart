part of 'toolbar.dart';

class DSToolbarStyle {
  Style call(BuildContext context) {
    return Style(
      $box.color(
        ColorVariant.surface.resolve(context).withOpacity(
              OpacityVariant.blend.resolve(context).value,
            ),
      ),
      $box.shadow(
        blurRadius: 6,
        offset: Offset(0, 4),
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
