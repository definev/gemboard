import 'dart:convert';

import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:llm/llm.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_brainstorming_suggestions.g.dart';

@riverpod
Future<List<String>> getBrainstormingSuggestions(
  GetBrainstormingSuggestionsRef ref, {
  required String key,
  required String question,
}) async {
  final apiKey = await ref.watch(getGeminiApiKeyProvider.future);
  if (apiKey == null) throw Exception('API key is required');

  final model = GenerativeModel(
    model: 'gemini-1.5-flash-latest',
    apiKey: apiKey,
    generationConfig: GenerationConfig(responseMimeType: 'application/json'),
  );
  final response = await model.generateContent(
    [
      Content.model(
        [
          TextPart(''''
You are wise and knowledgeable. Please provide me with some ideas for the following question
You will return an array of string mix of the following:
- following question  
- topic related
- ideas to explore

And it should be ranked by relevance
You must not return anything else and follow the format
The out put should less or equal to 10 items
'''),
        ],
      ),
      Content.text(question),
    ],
    generationConfig: GenerationConfig(
      responseSchema: Schema.array(
        description:
            'An array of following question and topic related ideas to explore, rank by relevance',
        items: Schema.string(
          description: 'A single idea or exploration topic or open question',
          nullable: false,
        ),
      ),
    ),
  );

  if (response.promptFeedback?.blockReasonMessage != null) {
    throw Exception(response.promptFeedback!.blockReasonMessage);
  }

  if (response.text case var text?) {
    text = text.substring(text.indexOf('['), text.indexOf(']') + 1);
    final list = jsonDecode(text);
    if (list is List) {
      return list.cast<String>();
    }

    throw Exception('Unexpected response: $text');
  }

  return [];
}
