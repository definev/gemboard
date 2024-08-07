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
        CoreData.model('''SIDENOTE:
Don't repeat the content of user asked
You must answer the question in a way very specific, detail and concise. If you want to provide more information, take a brief at the end of the answer.
Don't answer like a robot style, be more human and natural.
NEVER listing the information if not asked, be more like a conversation.
Highlight the key topic by using bold, italic, or underline.
DONT EVER SHOW TIP IF NOT ASKED
'''),
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
        CoreData.user('''
Summarize the following content, be concise and clear, and make sure include all the key points.
$content'''),
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
You are masterful at summarizing images. You find every detail and insight in the image, the things that are hidden and only you can see and reasoning about it.
'''),
        CoreData.imageMemory(bytes),
      ],
    ),
  );
}
