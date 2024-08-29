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
  final TextEditingController exController = TextEditingController();
  final TextEditingController exHusbandController = TextEditingController();

  Future<void> _registration() async {
    int age = int.parse(ageController.text);
    double salary = double.parse(salaryController.text);

    await SaveApi.saveUserInfo(
      userName: nameController.text,
      age: age,
      salary: salary,
      exName: exController.text,
      exHusbandName: exHusbandController.text,
    );

    ///display a message for successfully add the data
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('User is Successfully registered')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Registration'),
      ),
      body: SingleChildScrollView(
        child: Form(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'User Name',
                labelStyle: TextStyle(fontSize: 28),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
              controller: nameController,
            ),
            Divider(
              height: 10,
              color: Colors.transparent,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'User Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  )
              ),
              controller: ageController,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'User Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  )
              ),
              controller: salaryController,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'User Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  )
              ),
              controller: exController,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'User Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  )
              ),
              controller: exHusbandController,
            ),

            ElevatedButton(

                onPressed: () {
                  _registration();
                },
                child: Text('Registration'))
          ],
        )),
      ),
    );
  }
}
