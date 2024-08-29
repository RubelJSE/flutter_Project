import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hive/hive.dart';
import 'package:my_flutter_app/constants/notification_screen.dart';
import 'package:my_flutter_app/firebase_api/home_screen.dart';
import 'package:my_flutter_app/firebase_api/message_api.dart';
import 'package:my_flutter_app/firebase_options.dart';
import 'package:my_flutter_app/screen/user/user_registration.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'package:flutter_localizations/flutter_localizations.dart';
final navigatorKey = GlobalKey<NavigatorState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,

  );
  /// call initialize notification function
  await MessageApi().initNotification();

  var appDocumentDirectory = await pathProvider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  if (!Hive.isBoxOpen('langBox')) {
    await Hive.openBox('langBox');
  }

  runApp(const Application());
}

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();

  // Add this method to access the _ApplicationState
  static _ApplicationState of(BuildContext context) {
    return context.findAncestorStateOfType<_ApplicationState>()!;
  }
}

class _ApplicationState extends State<Application> {
  Locale _locale = const Locale('bn');

  @override
  void initState() {
    super.initState();
    initLangLocale();
  }

  Future<void> initLangLocale() async {
    if (!Hive.isBoxOpen('langBox')) {
      await Hive.openBox('langBox');
    }
    setState(() {
      _locale = Locale(Hive.box('langBox').get('langCode', defaultValue: 'en'));
    });
  }

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: _locale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('bn'),
        Locale('en'),
        Locale('ko'),
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      navigatorKey: navigatorKey,
      home: const HomeScreen(

      ),
      routes: {
        NotificationScreen.route: (context) => const NotificationScreen()
      },
    );
  }
}

