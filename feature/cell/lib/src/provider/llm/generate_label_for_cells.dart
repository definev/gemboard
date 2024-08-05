import 'dart:convert';

import 'package:cell/cell.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:llm/llm.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generate_label_for_cells.g.dart';

@riverpod
Future<String> generateLabelForCells(
  GenerateLabelForCellsRef ref, {
  required Cell source,
  required Cell target,
}) async {
  final apiKey = await ref.watch(getGeminiApiKeyProvider.future);
  if (apiKey == null) throw Exception('API key is required');

  final model = GenerativeModel(
    model: 'gemini-1.5-flash-latest',
    apiKey: apiKey,
    generationConfig: GenerationConfig(
      responseMimeType: 'application/json',
    ),
    safetySettings: safetySettings,
  );
  final sourcePart = await CellLLM(source).getPart();
  final targetPart = await CellLLM(target).getPart();

  if (sourcePart == null || targetPart == null) {
    return '';
  }

  final response = await model.generateContent(
    [
      Content.model(
        [
          TextPart(''''
You will find a related label for the following source and target:
Requirement for label:
- The label is less than 150 characters
- The label is relevant to the source and target
- If Cannot find a relevant label, return "Unknown"
'''),
        ],
      ),
      Content.multi([
        TextPart('Source:'),
        sourcePart,
        TextPart('Target:'),
        targetPart,
      ]),
    ],
    generationConfig: GenerationConfig(
      responseSchema: Schema.object(
        properties: {
          'label': Schema.string(description: 'The generated label'),
        },
      ),
    ),
  );

  if (response.promptFeedback?.blockReasonMessage != null) {
    return '';
  }

  if (response.text == null) {
    return '';
  }

  try {
    final json = jsonDecode(response.text!);
    return json['label'] ?? '';
  } catch (_) {
    return '';
  }
}
