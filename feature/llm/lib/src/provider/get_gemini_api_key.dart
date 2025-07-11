import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:llm/src/domain/repository/gemini/gemini_storage_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_gemini_api_key.g.dart';

@Riverpod(keepAlive: true)
Future<String?> getGeminiApiKey(Ref ref) {
  final repository = ref.read(geminiStorageRepositoryProvider);
  return repository.getApiKey();
}