import 'package:llm/src/domain/repository/gemini/gemini_storage_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'gemini_storage_repository.g.dart';

@Riverpod(keepAlive: true)
GeminiStorageRepository geminiStorageRepositorySharedPreferences(
    GeminiStorageRepositorySharedPreferencesRef ref) {
  return GeminiStorageRepositorySharedPreferences();
}

class GeminiStorageRepositorySharedPreferences
    implements GeminiStorageRepository {
  Future<SharedPreferences> prefs = SharedPreferences.getInstance();

  @override
  Future<String?> getApiKey() async {
    final store = await prefs;
    return store.getString('gemini_api_key');
  }

  @override
  Future<void> saveApiKey(String apiKey) async {
    final store = await prefs;
    await store.setString('gemini_api_key', apiKey);
  }

  @override
  Future<void> saveGeminiModelName(String modelName) async {
    final store = await prefs;
    await store.setString('gemini_model_name', modelName);
  }

  @override
  Future<String?> getGeminiModelName() async {
    final store = await prefs;
    return await store.getString('gemini_model_name');
  }
}
