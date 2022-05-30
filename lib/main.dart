import 'package:flutter/material.dart';
import 'package:project_coz/pages/splash_page.dart';
import 'package:project_coz/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
