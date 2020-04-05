import 'dart:convert';

import 'package:flutterapiapp/endpoints.dart';

import 'package:http/http.dart' as http;

class Location {
  final String id;
  final String name;
  final String imagePath;
  final String userItenerarySummary;
  final String tourPackageName;

  Location(
      {this.id,
      this.name,
      this.imagePath,
      this.userItenerarySummary,
      this.tourPackageName});

  factory Location.fromJson(Map<String, dynamic> locationJson) {
    return Location(
      id: locationJson['id'],
      name: locationJson['description'],
      imagePath: locationJson['description'],
      userItenerarySummary: locationJson['description'],
      tourPackageName: locationJson['description'],
    );
  }

  static Future<Location> fetchAllItems() async {

    String theUrl =
        'https://api.unsplash.com/photos?client_id=527337af0c48944c6452aff66fa7967b20e44dcabb5927699c94a1c5b3b26cfc';

    var uri = EndPoint.uri('');
    final response = await http.get(theUrl);


    if (response.statusCode == 200) {
      print(response.body);
     return Location.fromJson(json.decode(response.body));

    }else{
      print('cannot get jsone from web');
    }
  }
}
