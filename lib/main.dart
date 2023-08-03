import 'package:ahmed/pages/home.dart';
import 'package:ahmed/pages/login.dart';
import 'package:ahmed/pages/signup.dart';
import 'package:ahmed/pages/welcome.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        initialRoute:'/' ,
      routes: {
        '/': (context) => const Welcome(),
        '/L': (context) => const Login(),
        '/S': (context) => const Signup(),
        '/h': (context) => const Home(),



      },
    );
  }
}
