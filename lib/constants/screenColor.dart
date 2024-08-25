import 'package:flutter/material.dart';
import 'package:my_flutter_app/constants/button_class.dart';
import 'package:my_flutter_app/constants/text_style.dart';

import 'colorTwo.dart';

class ScreenColor extends StatefulWidget {
  const ScreenColor({super.key});

  @override
  State<ScreenColor> createState() => _ScreenColorState();
}

class _ScreenColorState extends State<ScreenColor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Screen Color", style: headingStyle),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  child: Center(
                      child: Text(
                    'Color',
                    style: TextStyle(fontSize: 30),
                  )),
                  height: 100,
                  width: 400,
                  color: colorOne,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Center(
                      child: Text(
                    'Color',
                    style: TextStyle(fontSize: 30),
                  )),
                  height: 100,
                  width: 400,
                  color: colorTwo,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Center(
                      child: Text(
                    'Color',
                    style: TextStyle(fontSize: 30),
                  )),
                  height: 100,
                  width: 400,
                  color: colorThree,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Center(
                      child: Text(
                    'Color',
                    style: TextStyle(fontSize: 30),
                  )),
                  height: 100,
                  width: 400,
                  color: colorFour,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Center(
                      child: Text(
                    'Color',
                    style: TextStyle(fontSize: 30),
                  )),
                  height: 100,
                  width: 400,
                  color: colorFive,
                ),
                SizedBox(
                  height: 10,
                ),
                /*Container(

                  child: Center(
                      child: ButtonClass(title: "Sing Up", onPress: (){

                      },
                        userName: "Rubel Hossain",
                      )
                  ),
                  height: 50,
                  width: 400,
                  color: colorSix,
                ),*/
                ButtonClass(title: "SingUp", onPress: (){})
              ],
            ),
          ),
        ));
  }
}
