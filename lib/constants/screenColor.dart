import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hive/hive.dart';
import 'package:my_flutter_app/constants/text_style.dart';

import '../main.dart';
import 'button_class.dart';
import 'colorTwo.dart';
class ScreenColor extends StatefulWidget {
  const ScreenColor({super.key});

  @override
  State<ScreenColor> createState() => _ScreenColorState();
}

class _ScreenColorState extends State<ScreenColor> {
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)?.test ?? '', style: headingStyle),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _buildColorContainer(context, AppLocalizations.of(context)?.colorOne ?? '', colorOne),
              const SizedBox(height: 10),
              _buildColorContainer(context, 'Color', colorTwo),
              const SizedBox(height: 10),
              _buildColorContainer(context, 'Color', colorThree),
              const SizedBox(height: 10),
              _buildColorContainer(context, 'Color', colorFour),
              const SizedBox(height: 10),
              _buildColorContainer(context, 'Color', colorFive),
              const SizedBox(height: 10),
              ButtonClass(title: "Sign Up", onPress: () {}),
              const SizedBox(height: 10),
              _languageChange(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildColorContainer(BuildContext context, String text, Color color) {
    return Container(
      height: 100,
      width: 400,
      color: color,
      child: Center(
        child: Text(text, style: const TextStyle(fontSize: 30)),
      ),
    );
  }

  Widget _languageChange() {
    return ToggleButtons(
      focusColor: Colors.deepOrange,
      color: Colors.green,
      highlightColor: Colors.blue,
      borderColor: Colors.green,
      fillColor: Colors.green,
      borderWidth: 1,
      selectedBorderColor: Colors.red,
      selectedColor: Colors.blue,
      borderRadius: BorderRadius.circular(50),
      constraints: const BoxConstraints(
        minHeight: 30,
        maxHeight: 50,
        minWidth: 40,
      ),
      onPressed: (int index) {
        // Toggle the language between Bengali and English
        String currentLang = Hive.box('langBox').get('langCode');
        String newLang = currentLang == 'en' ? 'bn' : 'en';

        // Update the language code in the Hive box
        Hive.box('langBox').put('langCode', newLang);

        // Print debug information
        debugPrint('Selected language: $newLang');

        // Change the locale using Application.of(context).setLocale
        Application.of(context).setLocale(Locale(newLang));

        // Update the selected state of the buttons
        setState(() {
          for (int i = 0; i < isSelected.length; i++) {
            isSelected[i] = (newLang == 'bn' && i == 0) || (newLang == 'en' && i == 1);
          }
        });
      },
      isSelected: isSelected,
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 2, vertical: 0),
          child: Text(
            'bn',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 2, vertical: 0),
          child: Text(
            'en',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

}
