part of 'appbar.dart';

class AppBarSizeVariant extends Variant {
  const AppBarSizeVariant(super.name);

  static const small = AppBarSizeVariant('small');
  static const large = AppBarSizeVariant('large');
}

final _appBarSizes = {
  AppBarSizeVariant.small: 58.0,
  AppBarSizeVariant.large: 120.0 - 44,
};
