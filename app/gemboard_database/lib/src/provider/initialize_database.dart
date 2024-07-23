import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'initialize_database.g.dart';

@riverpod
Future<void> initializeDatabase(InitializeDatabaseRef ref) async {
  final dir = await getApplicationDocumentsDirectory();
  Hive.defaultDirectory = dir.path;
}
