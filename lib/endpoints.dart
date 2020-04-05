import 'dart:core';
import 'package:http/http.dart' as http;

class EndPoint {
  static const apiScheme = "https";
  static const baseUrl = "https://api.unsplash.com/";
  static const prefix = "photos?";
  static const  clientId = "client-id";
  static const apiKey = "527337af0c48944c6452aff66fa7967b20e44dcabb5927699c94a1c5b3b26cfc";

  static Uri uri(String path, {Map<String, dynamic> queryParams }) {
    final Uri uri = new Uri(
        scheme: apiScheme,
        host: baseUrl,
        path: baseUrl+prefix+clientId+apiKey,
      queryParameters: queryParams,
    );
    print('${uri.toString()}');
    return uri;
  }
}