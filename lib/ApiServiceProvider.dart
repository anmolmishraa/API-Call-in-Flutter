import 'dart:convert';

import 'Response.dart';

import 'package:http/http.dart' as http;

class ApiServiceProvider {
  final _BASE_URL = "Your Api";

  Future<Response> getUser() async {
    var response = await http.get(_BASE_URL);
    if (response.statusCode == 200) {
      var jsonResponse = response.body;

      Response res = Response.fromJson(json.decode(jsonResponse));
      print(response.body);
      return res;
    }
  }
}
