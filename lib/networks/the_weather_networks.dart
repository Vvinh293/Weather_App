import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:second_the_weather_app/global/key_api.dart';
import 'package:second_the_weather_app/logic/get_location.dart';
import 'package:second_the_weather_app/models/the_weather_models.dart';

class TheWeatherNetworks extends ChangeNotifier {

  TheWeatherModels? data;

  Future<dynamic> getData() async {
    var response = await http.get(Uri.parse('http://api.weatherapi.com/v1/current.json?key=${KeyApi.keyAPI}&q=${GetLocation.location}&aqi=no'));
    data =  TheWeatherModels.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    return data;
    notifyListeners();
  }

}