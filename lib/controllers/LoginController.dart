import 'package:diniz_app/services/LoginService.dart';

Future loginController(username, password) async{
  var response = await loginService(username, password);
  print(response);
}