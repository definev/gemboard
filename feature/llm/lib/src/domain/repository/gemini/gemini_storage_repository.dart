import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:llm/src/domain/repository/gemini/shared_preferences/gemini_storage_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'gemini_storage_repository.g.dart';

@riverpod
GeminiStorageRepository geminiStorageRepository(Ref ref) {
  return ref.read(geminiStorageRepositorySharedPreferencesProvider);
}

abstract class GeminiStorageRepository {
  /// Get the saved API key
  Future<void> saveApiKey(String apiKey);

  /// Save the API key
  Future<String?> getApiKey();

  /// Save the model name
  Future<void> saveGeminiModelName(String modelName);

  /// Get the model name
  Future<String?> getGeminiModelName();
}
