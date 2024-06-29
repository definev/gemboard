import 'package:uuid/uuid.dart';

class Helper {
  static String createId() => Uuid().v4();
}