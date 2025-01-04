import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LocationModels {
  Location? location;

  LocationModels({@required this.location});

  factory LocationModels.fromJson(Map<String, dynamic> json) {
    return LocationModels(location: Location.fromJson(json['location']));
  }
}

class Location {
  String? name;
  String? country;
  String? localTime;

  Location({@required this.name,
            @required this.country,
            @required this.localTime});

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(name: json['name'],
                    country: json['country'],
                    localTime: json['localtime']);
  }
}