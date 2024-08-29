// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;

import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDTrhBvWDZ1dDXH4XUpSTS0YVJ1D5P1IkQ',
    appId: '1:200649101392:web:e68d1d3d945c0b68fa0155',
    messagingSenderId: '200649101392',
    projectId: 'testproject-d2438',
    authDomain: 'testproject-d2438.firebaseapp.com',
    storageBucket: 'testproject-d2438.appspot.com',
    measurementId: 'G-L6RYLF1S82',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBv2X0PWMsnlUs2tPdfs81eznotlaP3mrI',
    appId: '1:200649101392:android:440c6ecd7f2658a8fa0155',
    messagingSenderId: '200649101392',
    projectId: 'testproject-d2438',
    storageBucket: 'testproject-d2438.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDnAgBmZS-OuKZ6ohMvoFlMToyti_4wv4Y',
    appId: '1:200649101392:ios:a04df37f7d9af82cfa0155',
    messagingSenderId: '200649101392',
    projectId: 'testproject-d2438',
    storageBucket: 'testproject-d2438.appspot.com',
    iosBundleId: 'com.example.myFlutterApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDnAgBmZS-OuKZ6ohMvoFlMToyti_4wv4Y',
    appId: '1:200649101392:ios:a04df37f7d9af82cfa0155',
    messagingSenderId: '200649101392',
    projectId: 'testproject-d2438',
    storageBucket: 'testproject-d2438.appspot.com',
    iosBundleId: 'com.example.myFlutterApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDTrhBvWDZ1dDXH4XUpSTS0YVJ1D5P1IkQ',
    appId: '1:200649101392:web:a1befe053fb2e962fa0155',
    messagingSenderId: '200649101392',
    projectId: 'testproject-d2438',
    authDomain: 'testproject-d2438.firebaseapp.com',
    storageBucket: 'testproject-d2438.appspot.com',
    measurementId: 'G-E3X1ZZ4SSY',
  );
}
