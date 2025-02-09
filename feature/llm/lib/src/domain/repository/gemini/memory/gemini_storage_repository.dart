import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:llm/src/domain/repository/gemini/gemini_storage_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'gemini_storage_repository.g.dart';

@riverpod
GeminiStorageRepository geminiStorageRepositoryMemory(Ref ref) {
  return GeminiStorageRepositoryMemory();
}

class GeminiStorageRepositoryMemory extends GeminiStorageRepository {
  String _apiKey = '';
  String _geminiModelName = '';

  @override
  Future<String?> getApiKey() async {
    return _apiKey;
  }

  @override
  Future<void> saveApiKey(String apiKey) async {
    _apiKey = apiKey;
  }
  
  @override
  Future<String?> getGeminiModelName() async {
    return _geminiModelName;
  }
  
  @override
  Future<void> saveGeminiModelName(String modelName) async {
    _geminiModelName = modelName;
  }
}
