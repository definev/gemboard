part of 'sidebar.dart';

class DSSidebarStyle {
  Style call(BuildContext context) {
    return Style(
      $flex.gap(1.5),
      $box.padding.all.ref(SpaceVariant.mediumLarge),
      $box.color.ref(ColorVariant.surface),
    );
  }
}
