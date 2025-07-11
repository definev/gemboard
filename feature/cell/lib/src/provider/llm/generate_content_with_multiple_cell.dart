import 'dart:io';

import 'package:cell/cell.dart';
import 'package:flutter/services.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:http/http.dart' as http;
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
  final modelName = await ref.watch(getGeminiModelNameProvider.future);
  if (apiKey == null) throw Exception('API key is required');
  if (modelName == null) throw Exception('Model name is required');

  final model = GenerativeModel(
    model: modelName,
    apiKey: apiKey,
    safetySettings: safetySettings,
  );
  final stream = model.generateContentStream(
    [
      Content.model([TextPart(systemPrompt)]),
      ...[
        for (final cell in cells) await CellLLM(cell).getContent(),
      ].whereType<Content>(),
      Content.text(text),
    ],
  );

  await for (final content in stream) {
    // if (content.promptFeedback?.blockReasonMessage case final message?) {
    //   throw Exception(message);
    // }
    yield content.text ?? '';
  }
}

extension type CellLLM(Cell cell) {
  Future<Content?> getContent() {
    return cell.map<Future<Content?>>(
      unknown: (_) async => null,
      url: (value) async {
        var client = http.Client();
        try {
          var response = await client.get(value.url);
          return Content.text(response.body);
        } finally {
          client.close();
        }
      },
      brainstorming: (value) async => switch (value.question) {
        null => null,
        final question => Content.text(
            switch (value.preContext) {
              null => '''QUESTION: $question''',
              final context => '''CONTEXT: ${context}
QUESTION: $question''',
            },
          ),
      },
      editable: (value) async {
        return switch (true) {
          _ when value.content.isEmpty => null,
          _ => () {
              final content = '''TITLE: ${value.title}
CONTENT: ${value.content}
''';
              return Content.text(
                switch (value.preContext) {
                  null => content,
                  final context => '''CONTEXT: ${context}\n${content}''',
                },
              );
            }(),
        };
      },
      article: (value) async {
        return switch (true) {
          _ when value.title.isEmpty => null,
          _ when value.content.isEmpty => null,
          _ => () {
              final content = '''TITLE: ${value.title}
CONTENT: ${value.content}
''';
              return Content.text(
                switch (value.preContext) {
                  null => content,
                  final context => '''CONTEXT: ${context}\n${content}''',
                },
              );
            }(),
        };
      },
      image: (value) async {
        switch (value.url.scheme) {
          case 'file':
            final file = File(value.url.toFilePath());
            if (!await file.exists()) return null;
            final image = await file.readAsBytes();
            return Content.data('image/*', image);
          case 'http' || 'https':
            final bundle = NetworkAssetBundle(value.url);
            final image = await bundle.load('');
            return Content.data('image/*', image.buffer.asUint8List());
          case 'data':
            final data = value.url.data!;
            final image = data.contentAsBytes();
            return Content.data('image/*', image);
        }
        return null;
      },
      header: (value) async => Content.text(value.title),
    );
  }

  Future<Part?> getPart() {
    return cell.map<Future<Part?>>(
      unknown: (_) async => null,
      url: (value) async {
        var client = http.Client();
        try {
          var response = await client.get(value.url);
          return TextPart(response.body);
        } finally {
          client.close();
        }
      },
      brainstorming: (value) async => switch (value.question) {
        null => null,
        final question => TextPart(question),
      },
      editable: (value) async {
        return switch (true) {
          _ when value.content.isEmpty => null,
          _ => TextPart('''
TITLE: ${value.title}
CONTENT: ${value.content}
'''),
        };
      },
      article: (value) async {
        return switch (true) {
          _ when value.title.isEmpty => null,
          _ when value.content.isEmpty => null,
          _ => TextPart('''
TITLE: ${value.title}
CONTENT: ${value.content}
'''),
        };
      },
      image: (value) async {
        switch (value.url.scheme) {
          case 'file':
            final file = File(value.url.toFilePath());
            if (!await file.exists()) return null;
            final image = await file.readAsBytes();
            return DataPart('image/*', image);
          case 'http' || 'https':
            final bundle = NetworkAssetBundle(value.url);
            final image = await bundle.load('');
            return DataPart('image/*', image.buffer.asUint8List());
          case 'data':
            final data = value.url.data!;
            final image = data.contentAsBytes();
            return DataPart('image/*', image);
        }
        return null;
      },
      header: (value) async => TextPart(value.title),
    );
  }

  Future<Uint8List?> getImageBytes(ImageCell cell) async {
    switch (cell.url.scheme) {
      case 'file':
        final file = File(cell.url.toFilePath());
        if (!await file.exists()) return null;
        final image = await file.readAsBytes();
        return image;
      case 'http' || 'https':
        final bundle = NetworkAssetBundle(cell.url);
        final image = await bundle.load('');
        return image.buffer.asUint8List();
      case 'data':
        final data = cell.url.data!;
        final image = data.contentAsBytes();
        return image;
    }
    return null;
  }
}
