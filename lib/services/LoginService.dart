import 'package:dio/dio.dart';
import 'dart:io';
import 'dart:convert';

Future loginService(username, password) async {
  var url = 'https://diniz-api.herokuapp.com/login';
  try {
    var params = {
      'username': username,
      'password': password
    };
    var response = await Dio().post(url,
        options: Options(headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        }),
        data: jsonEncode(params));

      return response;
  } catch (e) {
    print(e);
  }
}
