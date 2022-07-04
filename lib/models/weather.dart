import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

@JsonSerializable()
class LatLng {

  const LatLng({required this.latitude, required this.longitude});

  factory LatLng.fromJson(Map<String, dynamic> json) => _$LatLngFromJson(json);

  final double latitude;
  final double longitude;
}

@JsonSerializable()
class WeatherMeta {

  const WeatherMeta({
    required this.id,
    required this.main,
    required this.description,
    required this.icon
  });

  factory WeatherMeta.fromJson(Map<String, dynamic> json) => _$WeatherMetaFromJson(json);

  final int id;
  final String main;
  final String description;
  final String icon;
}

@JsonSerializable()
class WeatherData {

  const WeatherData({
    required this.temp,
    required this.feels_like,
    required this.temp_min,
    required this.temp_max,
    required this.pressure,
    required this.humidity
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) => _$WeatherDataFromJson(json);

  final double temp;
  final double feels_like;
  final double temp_min;
  final double temp_max;
  final int pressure;
  final int humidity;
}

@JsonSerializable()
class WeatherInfo {

  const WeatherInfo({
    required this.coord,
    required this.weather,
    required this.main,
    required this.base,
    required this.visibility,
    required this.id,
    required this.name,
    required this.cod
  });

  factory WeatherInfo.fromJson(Map<String, dynamic> json) => _$WeatherInfoFromJson(json);

  final LatLng coord;
  final WeatherMeta weather;
  final WeatherData main;
  final String base;
  final int visibility;
  final int id;
  final String name;
  final int cod;

}