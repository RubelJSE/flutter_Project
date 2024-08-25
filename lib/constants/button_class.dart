import 'package:flutter/material.dart';
import 'package:my_flutter_app/constants/text_style.dart';

class ButtonClass extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  final String? userName;
  const ButtonClass({super.key,required this.title, required this.onPress, this.userName});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(

        children: [
          Text(title),
          GestureDetector(
            onTap: onPress,
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Text(userName??''),
            ),
          ),
          //Text(userName!),
        ],
      ),
    );
  }
}
