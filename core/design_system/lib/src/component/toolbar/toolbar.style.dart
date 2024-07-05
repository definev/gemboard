part of 'toolbar.dart';

class DSToolbarStyle {
  Style call(BuildContext context) {
    return Style(
      $box.color.ref(ColorVariant.surface),
    );
  }

  Style styledFlexStyle(BuildContext context) {
    return Style(
      $flex.mainAxisSize.min(),
    );
  }
}
