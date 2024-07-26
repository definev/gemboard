import 'package:cell/cell.dart';
import 'package:flutter/services.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:llm/llm.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generate_content_with_multiple_cell.g.dart';

@riverpod
Stream<String> generateContentWithMultipleCell(
  GenerateContentWithMultipleCellRef ref, {
  required List<Cell> cells,
  required String text,
}) async* {
  final apiKey = await ref.watch(getGeminiApiKeyProvider.future);
  if (apiKey == null) throw Exception('API key is required');

  final model = GenerativeModel(
    model: 'gemini-1.5-flash-latest',
    apiKey: apiKey,
    generationConfig: GenerationConfig(responseMimeType: 'application/json'),
  );
  final response = await model.generateContent(
    [
      ...[
        for (final cell in cells)
          await cell.map<Future<Content?>>(
            unknown: (_) async => null,
            brainstorming: (value) async => switch (value.question) {
              null => null,
              final question => Content.text(question),
            },
            editable: (value) async {
              return switch (true) {
                _ when value.content.isEmpty => null,
                _ => Content.text('''
TITLE: ${value.title}
CONTENT: ${value.content}
'''),
              };
            },
            image: (value) async {
              final bundle = NetworkAssetBundle(value.url);
              final image = await bundle.load('image');
              return Content.data('image/*', image.buffer.asUint8List());
            },
            article: (value) async {
              return switch (true) {
                _ when value.title.isEmpty => null,
                _ when value.content.isEmpty => null,
                _ => Content.text('''
TITLE: ${value.title}
CONTENT: ${value.content}
'''),
              };
            },
          ),
      ].whereType<Content>(),
      Content.text(text),
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
}
