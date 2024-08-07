import 'package:cell/cell.dart';
import 'package:llm/llm.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generate_question.g.dart';

@riverpod
Raw<Stream<String>> generateFromSuggestion(
  GenerateFromSuggestionRef ref, {
  required String text,
}) async* {
  yield* ref.watch(
    generateTextFromCoreDataProvider(
      coreDataList: [
        CoreData.model(systemPrompt),
        CoreData.user(text),
      ],
    ),
  );
}

@riverpod
Raw<Stream<String>> generateQuestion(
  GenerateQuestionRef ref, {
  required String text,
}) async* {
  yield* ref.watch(
    generateTextFromCoreDataProvider(
      coreDataList: [
        CoreData.model(systemPrompt),
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
        CoreData.model(systemPrompt),
        CoreData.user(content),
      ],
    ),
  );
}

@riverpod
Future<List<String>> getRelatedQuestionsOrTopics(
  GetRelatedQuestionsOrTopicsRef ref, {
  required String topicOrQuestion,
}) async {
  return ref.watch(
    getBrainstormingSuggestionsProvider(
      question: topicOrQuestion,
      key: '',
    ).future,
  );
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
        CoreData.model(systemPrompt),
        CoreData.model('''
Find insights from the image below
'''),
        CoreData.imageMemory(bytes),
      ],
    ),
  );
}
