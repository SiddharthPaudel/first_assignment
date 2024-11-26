import 'package:flutter/material.dart';

class CircleAreaScreen extends StatefulWidget {
  @override
  _CircleAreaScreenState createState() => _CircleAreaScreenState();
}

class _CircleAreaScreenState extends State<CircleAreaScreen> {
  final TextEditingController _radiusController = TextEditingController();
  String _result = '';

  void _calculateArea() {
    final radius = double.tryParse(_radiusController.text) ?? 0;
    final area = 3.14 * radius * radius;
    setState(() {
      _result = 'Area: $area';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Area of Circle')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _radiusController,
              decoration: InputDecoration(labelText: 'Radius'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _calculateArea,
              child: Text('Calculate'),
            ),
            SizedBox(height: 16),
            Text(
              _result,
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}