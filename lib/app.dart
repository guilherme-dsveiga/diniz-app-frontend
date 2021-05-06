import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:diniz_app/pages/LoginPage.dart';
import 'package:diniz_app/pages/SignupPage.dart';
import 'package:diniz_app/pages/HomePage.dart';
import 'package:diniz_app/pages/ProfilePage.dart';
import 'package:diniz_app/pages/ContactPage.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/home': (context) => HomePage(),
        '/profile': (context) => ProfilePage(),
        '/contact': (context) => ContactPage()
      },
    );
  }
}