
import 'package:flutter/material.dart';

class TheWeatherModels {
  Current? current;

  TheWeatherModels({@required this.current});

  factory TheWeatherModels.fromJson(Map<String, dynamic> json) {
    return TheWeatherModels(
      current: Current.fromJson(json['current']),
    );
  }
}

class Current {
  double? temperature;
  double? windSpeed;
  double? humidity;
  double? cloud;

  Current({
    @required this.temperature,
    @required this.windSpeed,
    @required this.cloud,
    @required this.humidity,
  });

  factory Current.fromJson(Map<String, dynamic> json) {
    return Current(
      temperature: json['temp_c'],
      windSpeed: json['wind_kph'],
      cloud: json['cloud'],
      humidity: json['humidity'],
    );
  }
}
