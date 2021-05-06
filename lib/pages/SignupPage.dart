import 'package:flutter/material.dart';
import 'package:diniz_app/controllers/SignupController.dart';

class SignupPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var _username, _password, _cpf, _birthDate, _name, _email;
    final _usernameFormKey = GlobalKey<FormState>();
    final _passwordFormKey = GlobalKey<FormState>();
    final _cpfFormKey = GlobalKey<FormState>();
    final _birthDateFormKey = GlobalKey<FormState>();
    final _nameFormKey = GlobalKey<FormState>();
    final _emailFormKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        shadowColor: Colors.transparent,
      ),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.8,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  child: Form(
                    key: _nameFormKey,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Nome',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                            return 'Escreva algo!';
                          }
                          return null;
                      },
                      onSaved: (input) => _name = input,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  child: Form(
                    key: _emailFormKey,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'E-mail',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                            return 'Escreva algo!';
                          } 

                          return null;
                      },
                      onSaved: (input) => _email = input,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  child: Form(
                    key: _usernameFormKey,
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
                  child: Form(
                    key: _birthDateFormKey,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Data de Nascimento',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                            return 'Escreva algo!';
                          }
                          return null;
                      },
                      onSaved: (input) => _birthDate = input,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  child: Form(
                    key: _cpfFormKey,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'CPF',
                      ),
                      
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                            return 'Escreva algo!';
                          }
                          return null;
                      },
                      onSaved: (input) => _cpf = input,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 35),
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {
                      print('até aqui nao passou o validate');
                      if(_nameFormKey.currentState.validate()  && _emailFormKey.currentState.validate() && _usernameFormKey.currentState.validate() && _passwordFormKey.currentState.validate() && _birthDateFormKey.currentState.validate() && _cpfFormKey.currentState.validate()){
                        print('passou o validate');
                        
                        _nameFormKey.currentState.save();
                        _emailFormKey.currentState.save();
                        _usernameFormKey.currentState.save();
                        _passwordFormKey.currentState.save();
                        _birthDateFormKey.currentState.save();
                        _cpfFormKey.currentState.save();

                        print(_email);

                        signupController(_name, _email, _username, _password, _birthDate, _cpf);
                      }
                    },
                    child: Text('Confirmar'),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}