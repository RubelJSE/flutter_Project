import 'package:flutter/material.dart';
import 'package:my_flutter_app/firebase_api/save_api.dart';
class UserRegistrationForm extends StatefulWidget {
  const UserRegistrationForm({super.key});

  @override
  State<UserRegistrationForm> createState() => _UserRegistrationFormState();
}

class _UserRegistrationFormState extends State<UserRegistrationForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController salaryController = TextEditingController();

  Future<void> _registration() async{
    int age = int.parse(ageController.text);
    double salary = double.parse(salaryController.text);
    await SaveApi.saveUserInfo(userName: nameController.text,
        age: age,
        salary: salary);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Registration'),
      ),
      body: SingleChildScrollView(
        child: Form(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: nameController,
            ),
            TextFormField(
              controller: ageController,
            ),
            TextFormField(
              controller: salaryController,
            ),
            ElevatedButton(onPressed: (){
              _registration();
            }, child: Text('Registration'))


          ],
        )),
      ),
    );
  }
}
