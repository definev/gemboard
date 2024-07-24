import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'initialize_database.g.dart';

@riverpod
Future<void> initializeDatabase(InitializeDatabaseRef ref) async {
  await Hive.initFlutter();
}
