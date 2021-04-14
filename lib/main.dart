import 'package:calculate_bmi/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BMIapp()
  );
}
class BMIapp extends StatefulWidget {
  @override
  _BMIappState createState() => _BMIappState();
}
class _BMIappState extends State<BMIapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Colors.red,
          ),
          home: HomePage(),
    );
  }
}

