import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherForecastService {
  final String apiKey = '726875b4edccad51e99ecfff52400699';
  final double lat = 25.276987;
  final double lon = 55.296249;

  Future<List<DailyForecast>> fetch10DayForecast() async {
    final url =
        Uri.parse('https://api.openweathermap.org/data/2.5/forecast?lat=$lat&lon=$lon&appid=$apiKey&units=metric');

    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw Exception('Failed to fetch weather: ${response.body}');
    }

    final data = json.decode(response.body);
    final List<dynamic> list = data['list'];

    // Grupisanje po datumu
    final Map<String, List<dynamic>> grouped = {};
    for (final item in list) {
      final date = DateTime.fromMillisecondsSinceEpoch(item['dt'] * 1000);
      final dateStr = '${date.year}-${date.month}-${date.day}';
      grouped.putIfAbsent(dateStr, () => []).add(item);
    }

    final forecasts = grouped.entries.map((entry) {
      final items = entry.value;
      final temps = items.map((e) {
        final temp = e['main']['temp'];
        return temp is int ? temp.toDouble() : temp;
      });
      final minTemp = temps.reduce((a, b) => a < b ? a : b);
      final maxTemp = temps.reduce((a, b) => a > b ? a : b);
      final icon = items[0]['weather'][0]['icon'];
      final rain = items.map((e) {
        final pop = e['pop'] ?? 0.0;
        return pop is int ? pop.toDouble() * 100 : pop * 100;
      }).reduce((a, b) => a > b ? a : b);

      return DailyForecast(
        date: DateTime(
          int.parse(entry.key.split('-')[0]),
          int.parse(entry.key.split('-')[1]),
          int.parse(entry.key.split('-')[2]),
        ),
        minTemp: minTemp,
        maxTemp: maxTemp,
        icon: icon,
        rainProbability: rain,
      );
    }).toList();

    return forecasts.take(10).toList();
  }
}

class DailyForecast {
  final DateTime date;
  final double minTemp;
  final double maxTemp;
  final String icon;
  final double rainProbability;

  DailyForecast({
    required this.date,
    required this.minTemp,
    required this.maxTemp,
    required this.icon,
    required this.rainProbability,
  });

  String get emoji {
    if (icon.contains('01')) return '☀️';
    if (icon.contains('02') || icon.contains('03')) return '⛅';
    if (icon.contains('04')) return '☁️';
    if (icon.contains('09') || icon.contains('10')) return '🌧️';
    if (icon.contains('11')) return '🌩️';
    if (icon.contains('13')) return '❄️';
    if (icon.contains('50')) return '🌫️';
    return '';
  }
}

