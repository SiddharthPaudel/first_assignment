import 'package:flutter/material.dart';

class ArithmeticScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Arithmetic')),
      body: Center(
        child: Text(
          'Perform Arithmetic Operations Here',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}