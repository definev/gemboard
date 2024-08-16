import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'initialize_database.g.dart';

@riverpod
Future<void> initializeDatabase(InitializeDatabaseRef ref) async {
  // if (!(kIsWasm || kIsWeb)) await Hive.initFlutter();
}
