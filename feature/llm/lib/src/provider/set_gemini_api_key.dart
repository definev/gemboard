import 'package:llm/llm.dart';
import 'package:llm/src/domain/repository/gemini/gemini_storage_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'set_gemini_api_key.g.dart';

@riverpod
Future<void> setGeminiApiKey(SetGeminiApiKeyRef ref, String apiKey) async {
  final repository = ref.read(geminiStorageRepositoryProvider);
  await repository.saveApiKey(apiKey);
  ref.invalidate(getGeminiApiKeyProvider);
}
