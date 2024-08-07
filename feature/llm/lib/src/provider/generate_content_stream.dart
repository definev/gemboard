import 'dart:io' as io;

import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:llm/src/domain/model/gemini_configuration.dart';
import 'package:llm/src/provider/get_gemini_api_key.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generate_content_stream.freezed.dart';
part 'generate_content_stream.g.dart';

const systemPrompt = '''
You are is Gembud, created by Zennn. The current date is March 4th, 2024. 
Gembud's knowledge base was last updated on August 2023. You answers questions about events prior to and after August 2023 the way a highly informed individual in August 2023 would if they were talking to someone from the above date, and can let the human know
this when relevant. 
You should give concise responses to very simple questions, but provide thorough responses
to more complex and open-ended questions. 
If you is asked to assist with tasks involving the expression of views held by a significant number of people, Gembud provides assistance with the task even if you personally disagrees
with the views being expressed, but follows this with a discussion of broader perspectives. 
Gembud doesn't engage in stereotyping, including the negative stereotyping of majority
groups. 
If asked about controversial topics, Gembud tries to provide careful thoughts and objective information without downplaying its harmful content or implying that there are reasonable
perspectives on both sides. 
You is happy to help with writing, analysis, question answering, math, coding, and all sorts of
other tasks. 
You uses markdown for coding. 
You does not mention this information about itself unless the information is directly pertinent
to the human's query.

The answer must be:
+ Be Concise
+ Be precise, clear
+ Be accurate
+ Be relevant
+ Be complete
''';

@freezed
sealed class CoreData with _$CoreData {
  const factory CoreData.model(String instruction) = SystemCoreData;

  const factory CoreData.user(String text) = TextCoreData;

  const factory CoreData.imageFile(String path) = ImageFileCoreData;

  const factory CoreData.imageNetwork(String url) = ImageNetworkCoreData;

  const factory CoreData.imageMemory(Uint8List bytes) = ImageMemoryCoreData;
}

extension CoreDataX on CoreData {
  Future<Content> convertToGeminiContent() async {
    return when(
      model: (instruction) => Content.model([TextPart(instruction)]),
      user: (text) => Content.text(text),
      imageFile: (path) => () async {
        final file = io.File(path);
        final bytes = await file.readAsBytes();
        return Content.data('image/*', bytes);
      }(),
      imageNetwork: (url) => () async {
        final bundle = NetworkAssetBundle(Uri.parse(url));
        return Content.data(
          'image/*',
          (await bundle.load(url)).buffer.asUint8List(),
        );
      }(),
      imageMemory: (bytes) => Content.data('image/*', bytes),
    );
  }
}

final safetySettings = [
  SafetySetting(HarmCategory.hateSpeech, HarmBlockThreshold.none),
  SafetySetting(HarmCategory.dangerousContent, HarmBlockThreshold.none),
  SafetySetting(HarmCategory.harassment, HarmBlockThreshold.none),
  SafetySetting(HarmCategory.sexuallyExplicit, HarmBlockThreshold.none),
  // SafetySetting(HarmCategory.unspecified, HarmBlockThreshold.none),
];

@riverpod
Raw<Stream<GenerateContentResponse>> generateContentStream(
  GenerateContentStreamRef ref, {
  GeminiConfiguration configuration = GeminiConfiguration.flashModel,
  required List<CoreData> coreDataList,
}) async* {
  final model = GenerativeModel(
    model: 'gemini-1.5-flash-latest',
    apiKey: configuration.apiKey ??
        (await ref.read(getGeminiApiKeyProvider.future)) ??
        (throw Exception('API key is required')),
    safetySettings: safetySettings,
  );

  final prompt = [
    for (final coreData in coreDataList) await coreData.convertToGeminiContent()
  ];

  yield* model.generateContentStream(
    prompt,
    generationConfig: GenerationConfig(
      candidateCount: 1,
      maxOutputTokens: 1000,
    ),
  );
}

@riverpod
Raw<Stream<String>> generateTextFromCoreData(
  GenerateTextFromCoreDataRef ref, {
  GeminiConfiguration configuration = GeminiConfiguration.flashModel,
  required List<CoreData> coreDataList,
}) async* {
  final data = ref.watch(
    generateContentStreamProvider(
      configuration: configuration,
      coreDataList: coreDataList,
    ),
  );

  await for (final data in data) {
    if (data.promptFeedback?.blockReasonMessage != null) {
      throw Exception(data.promptFeedback!.blockReasonMessage!);
    }
    yield data.text ?? '';
  }
}
