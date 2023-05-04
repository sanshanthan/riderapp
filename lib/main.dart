import 'package:flutter/material.dart';
import 'package:riderapp/registerationScreen.dart';

import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String idScreen = "mainScreen";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: LoginPage.idScreen,
      routes: {
        RegisterationScreen.idScreen: (context) => const RegisterationScreen(),
        LoginPage.idScreen: (context) => const LoginPage(),
        MyApp.idScreen: (context) => const MyApp(),
      },
    );
  }
}
