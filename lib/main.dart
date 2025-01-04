import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:second_the_weather_app/networks/location_networks.dart';
import 'package:second_the_weather_app/networks/the_weather_networks.dart';
import 'package:second_the_weather_app/screen/home_screen.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LocationNetworks()),
        ChangeNotifierProvider(create: (context) => TheWeatherNetworks(),)
      ],
      child: HomeScreen()));
}


