import 'package:cell/cell.dart';
import 'package:flutter/services.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:llm/llm.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generate_content_with_multiple_cell.g.dart';

@riverpod
Raw<Stream<String>> generateContentWithMultipleCell(
  GenerateContentWithMultipleCellRef ref, {
  required List<Cell> cells,
  required String text,
}) async* {
  final apiKey = await ref.watch(getGeminiApiKeyProvider.future);
  if (apiKey == null) throw Exception('API key is required');

  final model = GenerativeModel(
    model: 'gemini-1.5-flash-latest',
    apiKey: apiKey,
  );
  final stream = model.generateContentStream(
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
            image: (value) async {
              final bundle = NetworkAssetBundle(value.url);
              final image = await bundle.load('image');
              return Content.data('image/*', image.buffer.asUint8List());
            },
          ),
      ].whereType<Content>(),
      Content.text(text),
    ],
  );

  await for (final content in stream) {
    if (content.promptFeedback?.blockReasonMessage case final message?) {
      throw Exception(message);
    }
    yield content.text ?? '';
  }
}
