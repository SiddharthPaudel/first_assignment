import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DashboardButton(
              title: 'Simple Interest',
              onTap: () {
                Navigator.pushNamed(context, '/simpleInterest');
              },
            ),
            SizedBox(height: 20), // Add spacing between buttons
            DashboardButton(
              title: 'Arithmetic',
              onTap: () {
                Navigator.pushNamed(context, '/arithmetic');
              },
            ),
            SizedBox(height: 20), // Add spacing between buttons
            DashboardButton(
              title: 'Area of Circle',
              onTap: () {
                Navigator.pushNamed(context, '/circleArea');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const DashboardButton({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 250,
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: Colors.blue, // Background color
          borderRadius: BorderRadius.circular(15), // Rounded corners
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // Shadow position
            ),
          ],
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white, // Text color
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
