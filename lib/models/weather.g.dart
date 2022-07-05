// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LatLng _$LatLngFromJson(Map<String, dynamic> json) => LatLng(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$LatLngToJson(LatLng instance) => <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

WeatherMeta _$WeatherMetaFromJson(Map<String, dynamic> json) => WeatherMeta(
      id: json['id'] as int,
      main: json['main'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$WeatherMetaToJson(WeatherMeta instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

WeatherData _$WeatherDataFromJson(Map<String, dynamic> json) => WeatherData(
      temp: (json['temp'] as num).toDouble(),
      feels_like: (json['feels_like'] as num).toDouble(),
      temp_min: (json['temp_min'] as num).toDouble(),
      temp_max: (json['temp_max'] as num).toDouble(),
      pressure: json['pressure'] as int,
      humidity: json['humidity'] as int,
    );

Map<String, dynamic> _$WeatherDataToJson(WeatherData instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feels_like,
      'temp_min': instance.temp_min,
      'temp_max': instance.temp_max,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
    };

WeatherInfo _$WeatherInfoFromJson(Map<String, dynamic> json) => WeatherInfo(
      coord: LatLng.fromJson(json['coord'] as Map<String, dynamic>),
      weather: WeatherMeta.fromJson(json['weather'] as Map<String, dynamic>),
      main: WeatherData.fromJson(json['main'] as Map<String, dynamic>),
      base: json['base'] as String,
      visibility: json['visibility'] as int,
      id: json['id'] as int,
      name: json['name'] as String,
      cod: json['cod'] as int,
    );

Map<String, dynamic> _$WeatherInfoToJson(WeatherInfo instance) =>
    <String, dynamic>{
      'coord': instance.coord,
      'weather': instance.weather,
      'main': instance.main,
      'base': instance.base,
      'visibility': instance.visibility,
      'id': instance.id,
      'name': instance.name,
      'cod': instance.cod,
    };
