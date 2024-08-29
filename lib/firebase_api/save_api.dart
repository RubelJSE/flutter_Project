
import 'package:cloud_firestore/cloud_firestore.dart';


class SaveApi{

static Future<void> saveUserInfo({

  required String userName,
  required int age,
  required double salary,
}) async{
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  await firestore.collection('userInfor').add({
    'userId': DateTime.now().millisecondsSinceEpoch,
    'userName': userName,
    'age': age,
    'salary': salary


  });

}
}
