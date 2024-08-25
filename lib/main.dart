import 'package:flutter/material.dart';
import 'package:my_flutter_app/constants/screenColor.dart';
import 'package:my_flutter_app/myfirstapp.dart';
import 'package:my_flutter_app/screen/home_page.dart';
import 'package:my_flutter_app/screen/home_pagetwo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ScreenColor(),
    );
  }
}



