import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'models/weather.dart';

/// Exception thrown when the network request fails
class ApiRequestFailure implements Exception {}

/// Exception thrown when weather for provided location is not found.
class WeatherNotFoundFailure implements Exception {}


///
/// Open Weather API Client which wraps the [OpenWeather API](https://rapidapi.com/community/api/open-weather-map/)
///
class OpenWeatherApiClient {

  final _httpClient = http.Client();
  static const _baseUrl = 'community-open-weather-map.p.rapidapi.com';

  Future<WeatherInfo> currentWeather(String query) async {
    
    final request = Uri.https(
        _baseUrl,
        '/weather',
        <String, String>{
          'q': query,
          'units': 'metric',
          'mode': 'json'
        }
    );

    final response = await _httpClient.get(request);

    if (response.statusCode != 200) {
      throw ApiRequestFailure();
    }

    final json = jsonDecode(response.body) as Map<String, dynamic>;

    if (json.isEmpty) {
      throw WeatherNotFoundFailure();
    }

    return WeatherInfo.fromJson(json as Map<String, dynamic>);
  }

}