import 'package:adzone/screens/login.dart';
import 'package:adzone/screens/reset_password.dart';
import 'package:adzone/screens/signup.dart';
import 'package:adzone/screens/success_screen.dart';
import 'package:adzone/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:adzone/screens/splash.dart';
import 'package:adzone/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'DM Sans'),
      home: Splash(),
      routes: routes,
    );
  }
}
