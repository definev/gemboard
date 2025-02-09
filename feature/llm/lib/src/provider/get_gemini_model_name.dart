import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:llm/src/domain/repository/gemini/gemini_storage_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_gemini_model_name.g.dart';

@riverpod
Future<String?> getGeminiModelName(Ref ref) async {
  final repository = ref.read(geminiStorageRepositoryProvider);
  return repository.getGeminiModelName();
}