part of 'sheet.dart';

class DSSheetKind extends Variant {
  const DSSheetKind(super.name);

  static const draggable = DSSheetKind('draggable');
  static const scrollable = DSSheetKind('scrollable');
  static const navigation = DSSheetKind('navigation');
}
