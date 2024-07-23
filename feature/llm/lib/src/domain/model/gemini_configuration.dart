class GeminiConfiguration {
  const GeminiConfiguration({
    required this.model,
    this.apiKey,
  });

  static const flashModel = GeminiConfiguration(
    model: 'gemini-1.5-flash-latest',
  );

  final String model;
  final String? apiKey;
}
