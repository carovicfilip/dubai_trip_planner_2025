import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import '../models/trip_plan.dart';

class TripPlannerService {
  TripPlannerService({http.Client? httpClient}) : _client = httpClient ?? http.Client();

  final http.Client _client;

  static const _endpoint = 'https://api.openai.com/v1/chat/completions';
  static const _model = 'gpt-4o-mini';

  Future<TripPlan> generatePlan({
    required DateTime startDate,
    required int lengthInDays,
    required String location,
    required List<String> categories,
  }) async {
    final key = dotenv.env['OPENAI_API_KEY'];
    if (key == null || key.isEmpty) {
      throw StateError('OPENAI_API_KEY is missing. Add it to your .env file.');
    }

    final requestBody = {
      'model': _model,
      'response_format': {'type': 'json_object'},
      'messages': [
        {
          'role': 'system',
          'content':
              'You are an expert Dubai travel planner. Return strictly valid JSON. '
                  'Do not include prose or explanations outside JSON.',
        },
        {
          'role': 'user',
          'content': _buildPrompt(
            startDate: startDate,
            lengthInDays: lengthInDays,
            location: location,
            categories: categories,
          ),
        },
      ],
    };

    final response = await _client.post(
      Uri.parse(_endpoint),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $key',
      },
      body: jsonEncode(requestBody),
    );

    if (response.statusCode != 200) {
      throw Exception('OpenAI error: ${response.body}');
    }

    final Map<String, dynamic> json = jsonDecode(response.body) as Map<String, dynamic>;
    final choices = json['choices'] as List<dynamic>;
    if (choices.isEmpty) {
      throw Exception('OpenAI returned no choices.');
    }

    final message = choices.first['message'] as Map<String, dynamic>;
    final content = message['content'];

    final rawJson = _extractJsonContent(content);
    final parsed = jsonDecode(rawJson) as Map<String, dynamic>;
    final daysJson = parsed['days'] as List<dynamic>? ?? const [];

    final days = <DailyPlan>[];
    for (var i = 0; i < daysJson.length; i++) {
      final day = daysJson[i] as Map<String, dynamic>;
      final title = day['title'] as String? ?? 'Day ${i + 1}';
      final activities = (day['activities'] as List<dynamic>? ?? const [])
          .map((activity) => activity.toString())
          .toList(growable: false);

      days.add(
        DailyPlan(
          title: title,
          highlights: activities.isEmpty
              ? [
                  'Morning: Free exploration',
                  'Afternoon: Local dining suggestion',
                  'Evening: Visit Dubai Fountain',
                ]
              : activities,
        ),
      );
    }

    if (days.isEmpty) {
      throw Exception('Plan generation failed: empty itinerary.');
    }

    final trimmedDays = List<DailyPlan>.from(
      days.take(lengthInDays),
      growable: true,
    );

    while (trimmedDays.length < lengthInDays) {
      trimmedDays.add(
        DailyPlan(
          title: 'Day ${trimmedDays.length + 1}',
          highlights: const [
            'Morning: Free time to revisit favorite spots or relax at the hotel spa.',
            'Afternoon: Shopping at Mall of the Emirates or Souk Madinat.',
            'Evening: Sunset walk along JBR The Walk with beachfront dining.',
          ],
        ),
      );
    }

    return TripPlan(
      location: location,
      startDate: startDate,
      lengthInDays: trimmedDays.length,
      categories: categories,
      days: trimmedDays,
    );
  }

  String _buildPrompt({
    required DateTime startDate,
    required int lengthInDays,
    required String location,
    required List<String> categories,
  }) {
    final dateString = startDate.toIso8601String().split('T').first;
    final categoriesList = categories.isEmpty ? 'General must-see spots' : categories.join(', ');

    return '''
Create a ${lengthInDays}-day Dubai trip plan.
- Starting date: $dateString
- Traveler base location: $location
- Interests: $categoriesList

Return JSON:
{
  "days": [
    {
      "title": "Day X: Short theme",
      "activities": [
        "Morning: ...",
        "Afternoon: ...",
        "Evening: ..."
      ]
    }
  ]
}
''';
  }

  String _extractJsonContent(dynamic content) {
    if (content is String) return content;
    if (content is List) {
      final buffer = StringBuffer();
      for (final item in content) {
        if (item is Map<String, dynamic> && item['type'] == 'output_text') {
          buffer.write(item['text']);
        } else if (item is String) {
          buffer.write(item);
        }
      }
      return buffer.toString();
    }
    throw Exception('Unexpected content format from OpenAI: $content');
  }
}

