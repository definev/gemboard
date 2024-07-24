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
        CoreData.text(text),
      ],
    ),
  );
}
