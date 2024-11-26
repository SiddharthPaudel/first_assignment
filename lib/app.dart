import 'package:first_assignment/view/Arithmetic.dart';
import 'package:first_assignment/view/area_of_circle.dart';
import 'package:first_assignment/view/dashoard_screen.dart';
import 'package:first_assignment/view/simple_interest.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi-Screen App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => DashboardScreen(),
        '/simpleInterest': (context) => SimpleInterestScreen(),
        '/arithmetic': (context) => ArithmeticScreen(),
        '/circleArea': (context) => CircleAreaScreen(),
      },
    );
  }
}