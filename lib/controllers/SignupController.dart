import 'package:diniz_app/services/SignupService.dart';

Future signupController(name, email, user, password, date, cpf) async{
 var response = await signupService(name, email, user, password, date, cpf);
 print(response.body);
}