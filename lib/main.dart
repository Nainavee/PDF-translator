import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pdf_translator/Pages/Login.dart';
import 'package:pdf_translator/Pages/Welcome.dart';
import 'package:pdf_translator/Pages/SignUp.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'welcome_Screen',
      routes: {
        'welcome_Screen': (context) => Welcome(),
        'login_Screen': (context) => Login(),
        'Sign_up': (context) => SignUp(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
