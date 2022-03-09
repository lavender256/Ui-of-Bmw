import 'package:bmw/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMW',
      theme: ThemeData(
        fontFamily: "Titilli"
      ),
      home:Home()
    );
  }
}
