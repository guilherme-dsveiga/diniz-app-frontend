import 'package:dio/dio.dart';
import 'dart:io';
import 'dart:convert';

Future signupService(name, email, user, password, date, cpf) async {
  var url = 'https://diniz-api.herokuapp.com/signup';
  try{
  var params = {
    'name': name,
    'email': email,
    'username': user,
    'password': password,
    'birthdate': date,
    'cpf': cpf 
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
