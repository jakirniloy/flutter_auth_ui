import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Signup/signup.dart';
import 'package:flutter_auth/constants.dart';
import 'Screens/Welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
          primaryColor: kPrmaryColor, scaffoldBackgroundColor: Colors.white),
      home: welcomeScreen(),
    );
  }
}
