import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'initialize_database.g.dart';

@riverpod
Future<void> initializeDatabase(Ref ref) async {
  // if (!(kIsWasm || kIsWeb)) await Hive.initFlutter();
}
