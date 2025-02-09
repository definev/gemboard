import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:llm/src/domain/repository/gemini/gemini_storage_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'set_gemini_model_name.g.dart';

@riverpod
Future<void> setGeminiModelName(Ref ref, String modelName) async {
  final repository = ref.read(geminiStorageRepositoryProvider);
  return repository.saveGeminiModelName(modelName);
}