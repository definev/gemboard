


// abstract class GeminiRepository {
//   static const geminiFlash = 'gemini-1.5-flash-latest';

//   Future<String> getApiKey();

//   Stream<Content> generateContentStream(List<Content> content);

//   main() async* {
//     final model = GenerativeModel(
//       model: 'gemini-1.5-flash-latest',
//       apiKey: apiKey,
//     );

//     final prompt = 'Write a story about a magic backpack.';
//     final content = [Content.text(prompt)];
//     final response = await model.generateContent(content);
//     final stream = model.generateContentStream(content);

//     await for (final data in stream) {}

//     print(response.text);
//   }
// }
