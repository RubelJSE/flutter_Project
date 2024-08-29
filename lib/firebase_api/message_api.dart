import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:my_flutter_app/main.dart';

import '../constants/notification_screen.dart';
/// function of handling background message
Future<void> handleBackgroundMessage(RemoteMessage message) async{
  print('title ${message.notification?.title}');
  print('body ${message.notification?.body}');
  print('payload ${message.data}');
}
/// function of handling message
Future<void> handleMessage(RemoteMessage? message) async{
  if(message==null) return;
  navigatorKey.currentState?.pushNamed(NotificationScreen.route,arguments: message);

}
/// function of initialize push notification
Future<void>initPushNotification() async{
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true
  );
  FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
  FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
  FirebaseMessaging.onMessage.listen((message){
    final notification = message.notification;
    if(notification == null) return;
    _localNotification.show(
        notification.hashCode,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(_androidChannel.id,
              _androidChannel.name,
            channelDescription: _androidChannel.description,
            icon: '@drawable/ic_launcher'
          )

        ),
      payload: jsonEncode(message.toMap())
    );


  });
}

final _androidChannel = const AndroidNotificationChannel(
    'high importance channel',
  'high importance notification',
  description: 'this channel is used for importance notification',
  importance: Importance.defaultImportance
);

final FlutterLocalNotificationsPlugin _localNotification = FlutterLocalNotificationsPlugin();
/// function of handling local notification
Future<void> initLocalNotification() async{
  const android = AndroidInitializationSettings('@drawable/ic_launcher');
  const settings = InitializationSettings(android: android);
  await _localNotification.initialize(settings,
    onDidReceiveNotificationResponse:  (NotificationResponse response) async{
    final payLoad = response.payload;
    if(payLoad != null){
      final message = RemoteMessage.fromMap(jsonDecode(payLoad));
      await handleMessage(message);
    }
    }
  );

}
class MessageApi{
  final _firebaseMessaging = FirebaseMessaging.instance;
  /// function of initialize notification
  Future<void> initNotification() async{
    await _firebaseMessaging.requestPermission();
    final fCMToken = await _firebaseMessaging.getToken();
    print('the token is $fCMToken');
    await initPushNotification();
    await initLocalNotification();

    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
  }

}