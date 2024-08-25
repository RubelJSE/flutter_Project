import 'package:flutter/material.dart';
import 'package:my_flutter_app/constants/screenColor.dart';
import 'package:my_flutter_app/myfirstapp.dart';
import 'package:my_flutter_app/screen/home_page.dart';
import 'package:my_flutter_app/screen/home_pagetwo.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    Locale _local = Locale('ar');
    
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: _local,
      localizationsDelegates: const[
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        
      ],
      supportedLocales: const [
        Locale('bn'),
        Locale('en'),
        Locale('ar')
      ],
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ScreenColor(),
    );
  }
}



