import 'dart:convert';

import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:llm/llm.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generate_question.g.dart';

@riverpod
Raw<Stream<String>> generateQuestion(
  GenerateQuestionRef ref, {
  required String text,
}) async* {
  yield* ref.watch(
    generateTextFromCoreDataProvider(
      coreDataList: [
        CoreData.model('''
You will answer the following question by providing a rationale.
Make it clear and concise. But also make sure to provide enough information to answer the question.
And if you have any links or references, put them at the bottom of your answer.
'''),
        CoreData.user(text),
      ],
    ),
  );
}

@riverpod
Raw<Stream<String>> summarizeCell(
  SummarizeCellRef ref, {
  required String title,
  required String content,
}) async* {
  yield* ref.watch(
    generateTextFromCoreDataProvider(
      coreDataList: [
        CoreData.model('''
Sumarize the following content. 
Extract to the bullet keypoint and provide a concise summary.
Don't repeat the content, make a summary.
Don't put the title in the top of response.
'''),
        CoreData.user(content),
      ],
    ),
  );
}

Future<List<String>> getRelatedQuestionsOrTopics(
  GenerateQuestionRef ref, {
  required String topicOrQuestion,
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

Requirement for the output:
- Max 10 items
- Ranked by relevance
'''),
        ],
      ),
      Content.text(topicOrQuestion),
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
