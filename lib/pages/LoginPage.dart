import 'package:flutter/material.dart';
import 'package:diniz_app/controllers/LoginController.dart';

class LoginPage extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    var _username, _password;
    final _userFormKey = GlobalKey<FormState>();
    final _passwordFormKey = GlobalKey<FormState>();
    return Scaffold(
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  child: Image.network('https://image.flaticon.com/icons/png/128/2810/2810424.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  child: Form(
                    key: _userFormKey,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Usuário',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                            return 'Escreva algo!';
                          }
                          return null;
                      },
                      onSaved: (input) => _username = input,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  child: Form(
                    key: _passwordFormKey,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Senha',
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                            return 'Escreva algo!';
                          }
                          return null;
                      },
                      onSaved: (input) => _password = input,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  child: ElevatedButton(
                    onPressed: () async{
                      if(_userFormKey.currentState.validate() && _passwordFormKey.currentState.validate()){
                        _userFormKey.currentState.save();
                        _passwordFormKey.currentState.save();
                        await loginController(_username, _password);
                      }
                    },
                    child: Text('Entrar'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: Text('Cadastrar-se'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
