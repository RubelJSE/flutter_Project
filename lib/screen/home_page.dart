import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ScreenOne", style: TextStyle(fontSize: 30),),
      centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors:
         [
           Colors.lightBlueAccent,
           Colors.deepPurpleAccent,
         ],
            stops: [
              0.20, 1.0,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          ),
        ),
        child: Center(
          child: ListView.builder(
            itemCount: 120,
          itemBuilder: (context,index){
              return Column(
                children: [
                  Text("Rubel Hossain", style: TextStyle(fontSize: 30, color: Colors.white),),
                  SizedBox(
                    height: 10,
                  )
                ],
              );
          },
          ),
        ),
      )
    );
  }
}
