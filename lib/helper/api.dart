import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url}) async {
    Uri uri = Uri.parse(url);
    http.Response response = await http.get(uri);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          'there is a problem with status code${response.statusCode}');
    }
  }

  Future<dynamic> post(
      {required String url,
      required dynamic body,
      @required String? token}) async {
    var uri = Uri.parse(url);
    var headers = {
      'Content-Type': 'multipart/form-data',
      'Accept': 'application/json',
    };
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }

    http.Response response =
        await http.post(uri, headers: headers, body: jsonEncode(body));
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          'there is a problem with status code${response.statusCode}');
    }
  }
}
