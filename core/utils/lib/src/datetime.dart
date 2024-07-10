import 'package:intl/intl.dart';

class DateTimeUtils {
  static DateFormat _formatter = DateFormat('hh:mm - dd/MM/yyyy');

  static hourMinuteDate(DateTime date) {
    return _formatter.format(date);
  }

  static weekdayYear(DateTime date) {
    return DateFormat('EEEE - dd/MM/yyyy').format(date);
  }
}
