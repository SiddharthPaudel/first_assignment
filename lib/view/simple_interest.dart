import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple Interest')),
      body: Center(
        child: Text(
          'Calculate Simple Interest Here',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}