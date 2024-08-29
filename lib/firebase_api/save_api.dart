
import 'package:cloud_firestore/cloud_firestore.dart';


class SaveApi{
  ///function of storing data on firebase database
static Future<void> saveUserInfo({

  required String userName,
  required int age,
  required double salary,
  String? exName,
  required String exHusbandName,
}) async{
  ///initialize firebase fire store
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  await firestore.collection('userInfo').add({
    'userId': DateTime.now().millisecondsSinceEpoch,
    'userName': userName,
    'age': age,
    'salary': salary,
    'exName': exName,
    'exHusband': exHusbandName,


  });

}
}
