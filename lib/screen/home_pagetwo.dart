import 'package:flutter/material.dart';
import 'package:my_flutter_app/constants/color.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScreenTwo", style: TextStyle(fontSize: 30),),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            redColor,
            redDeep,
          ],
          stops: [
            0.30, 1.0
          ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context,index){
                return Column(
                  children: [
                    Text("Rubel Hossain", style: TextStyle(fontSize: 30),)
                  ],
                );
              },
          ),
        ),
      ),
    );
  }
}
