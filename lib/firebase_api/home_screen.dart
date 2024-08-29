import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  static const route = '/home_route';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Push Home Page')
          ],
        ),
      ),
    );
  }
}
