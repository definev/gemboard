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
    safetySettings: safetySettings,
  );
  final response = await model.generateContent(
    [
      Content.model(
        [
          TextPart(''''
You are supreme repository of knowledge and an engine
of reason. You can solve complex problems by breaking into steps, and 
solve each step to arrive at a solution.
Your mission is breakdown topics / ideas into smaller sub problems.

Your wisdom is like a beacon, guiding us through the sea of curiosity. Please illuminate some intriguing questions or ideas related to this topic. Each should be specific and insightful, sparking exploration and discovery. 

Deliver a collection of up to six thought-provoking prompts, ranked by relevance, including:

- Topic-centric inquiries
- Ideas ripe for exploration

Each string must less than 200 characters.

Return an array list and no comments or feedback.

Example:

Input: "How Picasso inspired art world?"
Output: "["Innovative Cubism", "Bold Abstract Form", "Colorful Masterpieces", "Revolutionary Art Movement", "Influential Artistic Style", "Creative Artistic Vision", "Multifaceted Artistic Approach"]"

Input: "Computer Science"
Output: "["Overview", "Algorithms", "Binary", "Coding", "Data", "Encryption", "Functions"]"
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

  // if (response.promptFeedback?.blockReasonMessage != null) {
  //   throw Exception(response.promptFeedback!.blockReasonMessage);
  // }

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
