import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'initialize_database.g.dart';

@riverpod
Future<void> initializeDatabase(InitializeDatabaseRef ref) async {
  if (!(kIsWasm || kIsWeb)) await Hive.initFlutter();
}
