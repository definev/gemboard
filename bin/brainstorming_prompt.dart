import 'package:google_generative_ai/google_generative_ai.dart';

final apiKey = () {
  final apiKey = 'AIzaSyDTESoHMGkxAsNGxj4lUAIJnlO_-eiGiXA';
  return apiKey;
}();

void main() async {
  final model = GenerativeModel(
    model: 'gemini-1.5-flash-latest',
    apiKey: apiKey,
    generationConfig: GenerationConfig(responseMimeType: 'application/json'),
  );
  final response = await model.generateContent(
    [
      Content.model(
        [
          TextPart(''''
You are wise and knowledgeable. Please provide me with some ideas for the following question
You will return an array of string mix of the following:
- following question  
- topic related
- ideas to explore

And it should be ranked by relevance
You must not return anything else and follow the format
The out put should less or equal to 10 items
'''),
        ],
      ),
      Content.text('How to have sex safety'),
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
  print('response: ${response.text}');
  var text = response.text!;
  text = text.substring(text.indexOf('['), text.indexOf(']') + 1);
}
