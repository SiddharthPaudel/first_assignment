import 'package:flutter/material.dart';

class CircleAreaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Area of Circle')),
      body: Center(
        child: Text(
          'Calculate Area of Circle Here',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}