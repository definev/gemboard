import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class MoneyUtils {
  static final inputFormatter =
      FilteringTextInputFormatter.allow(RegExp(r'[.\d]'));

  static String formatMoney(double value, [String locale = 'vi_VN']) {
    return NumberFormat.currency(locale: locale).format(value);
  }

  static String formatMoneyRawInput(String raw, [String locale = 'vi_VN']) {
    final rawValue = raw.replaceAll('.', '');
    final value = int.tryParse(rawValue);
    if (value == null) return raw;
    if (value == 0) return '';
    return NumberFormat.currency(symbol: '', locale: locale).format(value).trim();
  }

  static double parseMoney(String text) {
    text = text.replaceAll('.', '');
    return double.parse(text);
  }
}
