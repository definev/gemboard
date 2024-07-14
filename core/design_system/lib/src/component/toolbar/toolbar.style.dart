part of 'toolbar.dart';

class DSToolbarStyle {
  Style call(BuildContext context) {
    return Style();
  }

  Style styledFlexStyle(BuildContext context) {
    return Style(
      $flex.mainAxisSize.min(),
    );
  }
}
