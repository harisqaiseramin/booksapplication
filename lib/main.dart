import 'package:books/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      theme: NeumorphicThemeData(
        lightSource: LightSource.topLeft,
        depth: -10.0,
      ),
      materialTheme: ThemeData(
        primaryColor: Colors.amber,
        fontFamily: 'sans-serif',
      ),
      home: LoginPage(),
    );
  }
}
