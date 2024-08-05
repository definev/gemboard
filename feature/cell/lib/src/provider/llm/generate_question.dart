import 'dart:convert';

import 'package:cell/cell.dart';
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
You are masterful and wise, ofcourse you funny and creative.
Answer the following question by providing a clear and concise rationale. Ensure your response includes sufficient information to fully address the question. If you have any links or references, list them at the end of your answer. If the question or topic is too broad, start with a general concept, then offer a specific example, idea for exploration, or follow-up question.
If the question have creative or open-ended, provide a creative and thoughtful response.
After all you should provide a clear and thoghtful response.
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
Summarize the following content. 
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
    safetySettings: safetySettings,
  );
  final response = await model.generateContent(
    [
      Content.model(
        [
          TextPart(''''
You are wise and knowledgeable. Please provide me with some ideas for the following question
You will return an array of string mix of the following:
- open question
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

@riverpod
Raw<Stream<String>> summarizeImageCell(
  SummarizeImageCellRef ref, {
  required Cell cell,
}) async* {
  if (cell is! ImageCell) throw Exception('Cell is not an image cell');
  final bytes = await CellLLM(cell).getImageBytes(cell);
  if (bytes == null) throw Exception('Failed to get image bytes');

  yield* ref.watch(
    generateTextFromCoreDataProvider(
      coreDataList: [
        CoreData.model('''
Summarize the following image.
Don't repeat the content, make a summary.
Don't put the title in the top of response.
Make it meaningful and have a better understanding of the image. Give insights or ideas.
'''),
        CoreData.imageMemory(bytes),
      ],
    ),
  );
}
