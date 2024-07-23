import 'package:llm/src/domain/repository/gemini/gemini_storage_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'gemini_storage_repository.g.dart';

@riverpod
GeminiStorageRepository geminiStorageRepositoryMemory(GeminiStorageRepositoryMemoryRef ref) {
  return GeminiStorageRepositoryMemory();
}

class GeminiStorageRepositoryMemory extends GeminiStorageRepository {
  String _apiKey = '';

  @override
  Future<String?> getApiKey() async {
    return _apiKey;
  }

  @override
  Future<void> saveApiKey(String apiKey) async {
    _apiKey = apiKey;
  }
}
