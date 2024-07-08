part of 'appbar.dart';

class DSAppbarStyle {
  const DSAppbarStyle(this.borderColor);

  final ColorVariant borderColor;

  Style call(BuildContext context) {
    return Style(
      $box.color.ref(ColorVariant.surface),
      $box.padding.horizontal(SpaceVariant.gap.resolve(context)),
      $box.padding.vertical.ref(SpaceVariant.gap),
      $box.border.color.ref(ColorVariant.onSurface),
      $text.style.ref(TextStyleVariant.h6),
    );
  }
}
