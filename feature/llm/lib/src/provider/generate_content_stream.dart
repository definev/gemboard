import 'dart:io' as io;

import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:llm/src/domain/model/gemini_configuration.dart';
import 'package:llm/src/provider/get_gemini_api_key.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generate_content_stream.freezed.dart';
part 'generate_content_stream.g.dart';

@freezed
sealed class CoreData with _$CoreData {
  const factory CoreData.system(String instruction) = SystemCoreData;

  const factory CoreData.text(String text) = TextCoreData;

  const factory CoreData.imageFile(String path) = ImageFileCoreData;

  const factory CoreData.imageNetwork(String url) = ImageNetworkCoreData;
}

extension CoreDataX on CoreData {
  Future<Content> convertToGeminiContent() async {
    return when(
      system: (instruction) => Content.system(instruction),
      text: (text) => Content.text(text),
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
    );
  }
}

@riverpod
Stream<GenerateContentResponse> generateContentStream(
  GenerateContentStreamRef ref, {
  GeminiConfiguration configuration = GeminiConfiguration.flashModel,
  required List<CoreData> coreDataList,
}) async* {
  final model = GenerativeModel(
    model: 'gemini-1.5-flash-latest',
    apiKey: configuration.apiKey ??
        (await ref.read(getGeminiApiKeyProvider.future)) ??
        (throw Exception('API key is required')),
  );

  final prompt = [
    for (final coreData in coreDataList) await coreData.convertToGeminiContent()
  ];

  yield* model.generateContentStream(
    prompt,
    generationConfig: GenerationConfig(candidateCount: 1),
  );
}

@riverpod
Stream<String> generateTextFromCoreData(
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

  yield data.value?.text ?? '';
}