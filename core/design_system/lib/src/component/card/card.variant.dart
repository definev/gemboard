part of 'card.dart';

class DSCardKind extends Variant {
  const DSCardKind(super.name);

  static const DSCardKind flat = DSCardKind('flat');
  static const DSCardKind outlined = DSCardKind('outlined');
  static const DSCardKind elevated = DSCardKind('elevated');
}
